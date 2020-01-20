
Imports MySql.Data.MySqlClient

Public Class WebForm8
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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        taulaGehitu()
    End Sub

    Private Sub taulaGehitu()
        'Dim nan As String = Session("nan")
        Dim nan As String = "12312312"
        Try
            'bilatu botoia sakatzean, konexioa sortuko du
            cnn1 = New MySqlConnection(server)
            cnn1.Open()

            Dim sql As String
            Dim cmd2 As New MySqlCommand

            MsgBox(AES_Encrypt(nan, "encriptado"))
            'sql komandoa idazten da
            sql = "SELECT DISTINCT o.ostatu_izena, o.ostatu_helbidea, e.id_erreserba, e.data_amaiera, e.data_hasiera, e.erreserba_prezio_tot, e.pertsona_kant_erres FROM erreserbak e, ostatuak o WHERE e.erabiltzaileak_nan = '" + AES_Encrypt(nan, "encriptado") + "' AND o.id_signatura = e.ostatuak_id_signatura"

            cmd2 = New MySqlCommand(sql, cnn1)
            adapter = New MySqlDataAdapter(cmd2)
            data.Clear()

            adapter.Fill(data, "Erreserbak")
            Me.GridViewDatuak.DataSource = data.Tables("Erreserbak")
            Me.GridViewDatuak.DataBind()

        Catch ex As Exception
            MsgBox(ex.ToString)
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

    Protected Sub GridViewDatuak_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewDatuak.SelectedIndexChanged

    End Sub

    Protected Sub imgBtnAtzera1_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnAtzera1.Click
        Dim sartutakoBezeroa As String = Session("sartutakoBezeroa")

        Session.Add("sartutakoBezeroa", sartutakoBezeroa)
        Response.Redirect("02_BIlatuOstatua")
    End Sub

    Protected Sub imgBtnHasiSaioa0_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnHasiSaioa0.Click
        Dim gonbidatuNan As String = "00000000"
        Dim gonbidatuIzena As String = "GONBIDATUA"
        Dim sartutakoBezeroa As New Bezeroa(gonbidatuNan, gonbidatuIzena)
        Session.Add("sartutakoBezeroa", sartutakoBezeroa)
        Response.Redirect("02_BIlatuOstatua")
        'poner el bezero a 0000

    End Sub
End Class