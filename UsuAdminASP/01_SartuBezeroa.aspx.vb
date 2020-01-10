Imports MySql.Data.MySqlClient
Imports System.IO
Imports System.Security.Cryptography

Public Class WebForm1
    Inherits System.Web.UI.Page

    'Datu basearen datuak
    Dim server As String = "server=localhost;user=root;database=3262035_ostatuagrad;port=3306;"
    '  Dim direccion As String = "server=kasserver.synology.me;database=reto_gp1;user id=gp1;port=3307; password=ZBlrkPWaSdVs5F3l;"
    'SQL konexioa
    Dim cnn1 As MySqlConnection
    Dim dr As MySqlDataReader
    Dim komando As New MySqlCommand
    Dim adapter As New MySqlDataAdapter
    Dim data As New DataSet

    'objetua sortu

    Protected Sub btnSartu_Click(sender As Object, e As EventArgs) Handles btnSartu.Click
        Dim bezeroa As String
        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            'SQL komandoa
            cmd1.CommandText = "SELECT nan, erabil_izena, abizenak, baimena, erabil_email, erabil_telefono FROM Erabiltzaileak WHERE nan = @user AND pasahitza=@pass"
            Dim userencriptado = AES_Encrypt(txtBezeroa.Text, "encriptado")
            Dim psswencriptado = AES_Encrypt(txtPasahitza.Text, "encriptado")

            'Erabiltzaile eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@user", userencriptado)
            'Pasahitza eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@pass", psswencriptado)
            'Lerro fluxuak irakurri
            Dim das1 As MySqlDataReader
            'Lerro fluxuen komandoa exekutatu
            das1 = cmd1.ExecuteReader()
            'Lerroak (datuak) badaude
            If das1.HasRows() Then
                While das1.Read()
                    'NO SE SI ES MEJOR PASARLOS DESENCRIPTADO O QUE LUEGO SE DESENCRIPTE
                    Dim bez As New Bezeroa(AES_Decrypt(das1.GetString(0), "encriptado"), AES_Decrypt(das1.GetString(1), "encriptado"), AES_Decrypt(das1.GetString(2), "encriptado"), AES_Decrypt(das1.GetInt32(3), "encriptado"), das1.GetString(4), AES_Decrypt(das1.GetString(5), "encriptado"))
                    Session.Add("sartutakoBezeroa", bez)

                    If (bez.baimena = 0) Then 'superAdmin
                        MsgBox("Baimena superAdmin:" & bez.baimena)
                        Response.Redirect("02_BilatuOstatuaAdmin.aspx")
                    ElseIf (bez.baimena = 1) Then 'ostatu administratzaileak
                        MsgBox("Baimena Administratzaileak:" & bez.baimena)
                    ElseIf (bez.baimena = 2) Then 'gonbidatuak
                        MsgBox("Baimena gonbidatuak:" & bez.baimena)
                        Response.Redirect("02_BilatuOstatua.aspx")
                    ElseIf (bez.baimena = 3) Then ' bezeronormala
                        MsgBox("Baimena bezero normala:" & bez.baimena)
                        Response.Redirect("02_BilatuOstatua.aspx")
                    End If
                End While
            Else
                'Errore mezua
                MsgBox("Datu okerrak")
            End If

        Catch ex As Exception
            'Konexioa itxi
            cnn1.Close()
        End Try
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

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class