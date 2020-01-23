Imports MySql.Data.MySqlClient

Public Class WebForm9
    Inherits System.Web.UI.Page
    'Datu basearen datuak
    Dim server As String = "server=localhost;user=root;database=3262035_ostatuagrad;port=3306;"
    '  Dim direccion As String = "server=kasserver.synology.me;database=reto_gp1;user id=gp1;port=3307; password=ZBlrkPWaSdVs5F3l;"
    'SQL konexioa
    Dim cnn1 As MySqlConnection
    Dim pertsonaTotala As Integer
    Dim sartutakoBezeroa As New Bezeroa
    Dim aldaErreserba As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Try
                For i As Integer = 1 To 30
                    ddlPertsonaKant.Items.Add(i)
                Next
                datuakAtera()

            Catch ex As Exception

            End Try
        End If



    End Sub

    Sub datuakAtera()
        aldaErreserba = Session("aldaErreserba")
        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            'SQL komandoa
            cmd1.CommandText = "SELECT erab.ERABIL_IZENA, erab.ERABIL_EMAIL, erre.ERABILTZAILEAK_NAN, erre.PERTSONA_KANT_ERRES, erre.ERRESERBA_PREZIO_TOT, o.ostatu_izena, pk.PROBINTZIA, pk.HERRI_IZENA, o.POSTA_KODEA, o.OSTATU_HELBIDEA, o.OSTATU_EMAIL, o.OSTATU_TELEFONOA, o.MOTA, o.MARKA, erre.DATA_HASIERA, erre.DATA_AMAIERA FROM ostatuak o, posta_kodeak pk, erreserbak erre, erabiltzaileak erab where o.ID_SIGNATURA=erre.OSTATUAK_ID_SIGNATURA AND pk.POSTA_KODEA=o.POSTA_KODEA and pk.HERRI_KODEA = o.HERRI_KODEA AND erab.NAN=erre.ERABILTZAILEAK_NAN and erre.ID_ERRESERBA=@idErreserba"
            'Erabiltzaile eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@idErreserba", aldaErreserba)
            'Lerro fluxuak irakurri
            Dim das1 As MySqlDataReader
            'Lerro fluxuen komandoa exekutatu
            das1 = cmd1.ExecuteReader()

            'Lerroak (datuak) badaude
            If das1.HasRows() Then
                While das1.Read()
                    lblBezeroIzena.Text = AES_Decrypt(das1.GetString(0), "encriptado")
                    lblEmailBezeroa.Text = AES_Decrypt(das1.GetString(1), "encriptado")
                    lblBezeroNan.Text = AES_Decrypt(das1.GetString(2), "encriptado")
                    ddlPertsonaKant.SelectedValue = das1.GetInt64(3)
                    lblPrezioaErres.Text = das1.GetString(4)
                    lblOstatuIzena.Text = das1.GetString(5)
                    lblProbintziaErres.Text = das1.GetString(6)
                    lblHerriaErres.Text = das1.GetString(7)
                    lblPostaKodeaErres.Text = das1.GetString(8)
                    lblHelbideaErres.Text = das1.GetString(9)
                    lblEmailErres.Text = das1.GetString(10)
                    lbLTelefonoaErres.Text = das1.GetString(11)
                    lblMotaErres.Text = das1.GetString(12)
                    lblMarkaErres.Text = das1.GetString(13)
                    txtHasieraData.Text = das1.GetString(14)
                    txtAmaieraData.Text = das1.GetString(15)
                End While
            End If
        Catch ex As Exception
            'Konexioa itxi
        End Try
    End Sub

    Protected Sub btnEzabatu_Click(sender As Object, e As ImageClickEventArgs) Handles btnDelete.Click
        aldaErreserba = Session("aldaErreserba")
        Dim connection As New MySqlConnection(server)

        Try
            Dim sql As String = "DELETE FROM erreserbak WHERE id_erreserba = " & aldaErreserba
            Dim command As New MySqlCommand(sql, connection)

            connection.Open()

            If command.ExecuteNonQuery() = 1 Then
                Response.Redirect("03_BezeroDatuak.aspx")
            End If
        Catch ex As Exception

        Finally
            connection.Close()
        End Try
    End Sub

    Protected Sub btnAtzera_Click(sender As Object, e As ImageClickEventArgs) Handles btnAtzera.Click
        Response.Redirect("03_BezeroDatuak.aspx")
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As ImageClickEventArgs) Handles btnUpdate.Click
        aldaErreserba = Session("aldaErreserba")

        Dim connection As New MySqlConnection(server)
        Try
            connection.Open()
            Dim sql As String = "UPDATE `erreserbak` SET `DATA_AMAIERA`= '" & txtAmaieraData.Text & "',`DATA_HASIERA`='" & txtHasieraData.Text & "',`ERRESERBA_PREZIO_TOT`=" & lblPrezioaErres.Text & ",`PERTSONA_KANT_ERRES`=" & ddlPertsonaKant.SelectedIndex + 1 & " WHERE ID_ERRESERBA = " & aldaErreserba

            Dim command As New MySqlCommand(sql, connection)

            command.ExecuteNonQuery()
        Catch ex As Exception
        Finally
            connection.Close()
        End Try
    End Sub

    Protected Sub ddlPertsonaKant_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlPertsonaKant.SelectedIndexChanged
        aldaErreserba = Session("aldaErreserba")
        pertsonaTotala = ddlPertsonaKant.SelectedIndex + 1
        Randomize()
        Dim erreserbaPrezioa As Double = CInt(Int((Rnd() * 300.0) + 80.0)) * pertsonaTotala
        lblPrezioaErres.Text = erreserbaPrezioa

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