Imports MySql.Data.MySqlClient

Public Class WebForm4
    Inherits System.Web.UI.Page

    'Datu basearen datuak
    Dim server As String = "server=localhost;user=root;database=3262035_ostatuagrad;port=3306;"
    '  Dim direccion As String = "server=kasserver.synology.me;database=reto_gp1;user id=gp1;port=3307; password=ZBlrkPWaSdVs5F3l;"
    'SQL konexioa
    Dim cnn1 As MySqlConnection

    Dim sartutakoBezeroa As New Bezeroa
    Dim ostatuaSignatura As String
    Dim ostatuIzena As String
    Dim pertsonaTotala As String
    Dim erreserbaPrezioa As Double

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Randomize()
        erreserbaPrezioa = CInt(Int((Rnd() * 300) + 80))
        Try
            ostatuaSignatura = Session("ostatuaSignatura")
            ostatuIzena = Session("ostatuIzena")
            sartutakoBezeroa = Session("sartutakoBezeroa")
            pertsonaTotala = CInt(Session("pertsonaTotala"))

            lblPertsonaTotErres.Text = pertsonaTotala
            ostatuaAtera()
            BezeroaAtera()
            lblPrezioaErres.Text = erreserbaPrezioa
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Sub ostatuaAtera()
        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            'SQL komandoa
            cmd1.CommandText = "Select o.ostatu_izena, o.ostatu_helbidea, o.ostatu_email, o.ostatu_telefonoa, o.mota, o.marka, pk.probintzia, pk.herri_izena, o.posta_kodea, e.erabil_izena, e.erabil_email FROM ostatuak o, posta_kodeak pk, erabiltzaileak e WHERE o.posta_kodea=pk.posta_kodea And o.herri_kodea = pk.herri_kodea And o.id_signatura=@signatura And o.ostatu_izena=@ostatuIzena"
            'Erabiltzaile eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@signatura", ostatuaSignatura)
            cmd1.Parameters.AddWithValue("@ostatuIzena", ostatuIzena)
            'Lerro fluxuak irakurri
            Dim das1 As MySqlDataReader
            'Lerro fluxuen komandoa exekutatu
            das1 = cmd1.ExecuteReader()

            'Lerroak (datuak) badaude
            If das1.HasRows() Then
                While das1.Read()
                    lblOstatuIzena.Text = das1.GetString(0)
                    lblHelbideaErres.Text = das1.GetString(1)
                    lblEmailErres.Text = das1.GetString(2)
                    lbLTelefonoaErres.Text = das1.GetString(3)
                    lblMotaErres.Text = das1.GetString(4)
                    lblMarkaErres.Text = das1.GetString(5)
                    lblProbintziaErres.Text = das1.GetString(6)
                    lblHerriaErres.Text = das1.GetString(7)
                    lblPostaKodeaErres.Text = das1.GetString(8)
                End While

            Else
                'Errore mezua
                MsgBox("Datu okerrak")
            End If

        Catch ex As Exception
            'Konexioa itxi
            MsgBox(ex.Message)
        End Try
    End Sub

    Sub BezeroaAtera()
        MsgBox(sartutakoBezeroa.nan)

        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            Dim userencriptado = AES_Encrypt(sartutakoBezeroa.nan, "encriptado")
            MsgBox(userencriptado)

            'SQL komandoa
            Dim sql As String = "SELECT nan, erabil_email FROM Erabiltzaileak WHERE nan = '" & userencriptado & "' "
            cmd1.CommandText = sql
            'Lerro fluxuak irakurri
            Dim das1 As MySqlDataReader
            'Lerro fluxuen komandoa exekutatu
            das1 = cmd1.ExecuteReader()

            'Lerroak (datuak) badaude
            If das1.HasRows() Then
                While das1.Read()
                    lblBezeroIzena.Text = AES_Decrypt(das1.GetString(0), "encriptado")
                    lblEmailBezeroa.Text = AES_Decrypt(das1.GetString(1), "encriptado")
                    lblBezeroNan.Text = sartutakoBezeroa.nan

                End While
            Else
                'Errore mezua
                MsgBox("Datu okerrak")
            End If

        Catch ex As Exception
            'Konexioa itxi
            cnn1.Close()
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub btnAtzera_Click(sender As Object, e As ImageClickEventArgs) Handles btnAtzera.Click
        Response.Redirect("02_BilatuOstatua.aspx")
    End Sub

    Public Function AES_Encrypt(ByVal input As String, ByVal pass As String) As String
        Dim AES As New System.Security.Cryptography.RijndaelManaged
        Dim Hash_AES As New System.Security.Cryptography.MD5CryptoServiceProvider
        Dim encrypted As String = ""
        Try
            Dim hash(31) As Byte
            Dim temp As Byte() = Hash_AES.ComputeHash(System.Text.ASCIIEncoding.ASCII.GetBytes(pass))
            Array.Copy(temp, 0, hash, 0, 16)
            Array.Copy(temp, 0, hash, 15, 16)
            AES.Key = hash
            AES.Mode = Security.Cryptography.CipherMode.ECB
            Dim DESEncrypter As System.Security.Cryptography.ICryptoTransform = AES.CreateEncryptor
            Dim Buffer As Byte() = System.Text.ASCIIEncoding.ASCII.GetBytes(input)
            encrypted = Convert.ToBase64String(DESEncrypter.TransformFinalBlock(Buffer, 0, Buffer.Length))
            Return encrypted
        Catch ex As Exception
        End Try
    End Function

    Public Function AES_Decrypt(ByVal input As String, ByVal pass As String) As String
        Dim AES As New System.Security.Cryptography.RijndaelManaged
        Dim Hash_AES As New System.Security.Cryptography.MD5CryptoServiceProvider
        Dim decrypted As String = ""
        Try
            Dim hash(31) As Byte
            Dim temp As Byte() = Hash_AES.ComputeHash(System.Text.ASCIIEncoding.ASCII.GetBytes(pass))
            Array.Copy(temp, 0, hash, 0, 16)
            Array.Copy(temp, 0, hash, 15, 16)
            AES.Key = hash
            AES.Mode = Security.Cryptography.CipherMode.ECB
            Dim DESDecrypter As System.Security.Cryptography.ICryptoTransform = AES.CreateDecryptor
            Dim Buffer As Byte() = Convert.FromBase64String(input)
            decrypted = System.Text.ASCIIEncoding.ASCII.GetString(DESDecrypter.TransformFinalBlock(Buffer, 0, Buffer.Length))
            Return decrypted
        Catch ex As Exception
        End Try
    End Function


End Class