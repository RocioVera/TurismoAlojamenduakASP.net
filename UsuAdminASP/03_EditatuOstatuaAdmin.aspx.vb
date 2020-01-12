Imports MySql.Data.MySqlClient

Public Class WebForm5
    Inherits System.Web.UI.Page
    Dim sartutakoBezeroa As Bezeroa
    Dim ostatua As Ostatua

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
        If Not Page.IsPostBack Then
            sartutakoBezeroa = Session("sartutakoBezeroa")
            'Dim idSignatura As String = Session("hautatutakoOstatua")
            Dim idSignatura As String = "28I00005"
            ateraDatuak(idSignatura)
            For i As Integer = 1 To 1000
                DDPertsonaTot.Items.Add(i)
            Next
            gehituDatuak()

        End If
    End Sub

    Private Sub ateraDatuak(idSignatura As String)
        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            'SQL komandoa

            cmd1.CommandText = "SELECT * FROM ostatuak WHERE ID_SIGNATURA = @idSignatura"
            'Erabiltzaile eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@idSignatura", idSignatura)
            'Lerro fluxuak irakurri
            Dim das1 As MySqlDataReader
            'Lerro fluxuen komandoa exekutatu
            das1 = cmd1.ExecuteReader()
            'Lerroak (datuak) badaude
            If das1.HasRows() Then
                While das1.Read()
                    ostatua = New Ostatua(das1.GetString(0), das1.GetString(1), das1.GetString(2), das1.GetString(3), das1.GetString(4),
                                              das1.GetString(5), das1.GetString(6), das1.GetInt32(7), das1.GetDouble(8), das1.GetDouble(9),
                                              das1.GetString(10), das1.GetString(11), das1.GetString(12), das1.GetString(13), das1.GetInt32(14), das1.GetString(15))
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

    Private Sub gehituDatuak()
        ' INSERT INTO `erabiltzaileak`(`NAN`, `ERABIL_IZENA`, `ABIZENAK`, `PASAHITZA`, `BAIMENA`, `ERABIL_EMAIL`, `ERABIL_TELEFONO`) VALUES (AES_ENCRYPT('12345675','12345'),'PUEBA','PRUEBA','12345',1,'PRUEBA@GMAIL.COM',123456789)
        'SELECT AES_DECRYPT(PASAHITZA,'secreta') FROM `erabiltzaileak` WHERE NAN='78916507B'
        ' INSERT INTO `erabiltzaileak`(`NAN`, `ERABIL_IZENA`, `ABIZENAK`, `PASAHITZA`, `BAIMENA`, `ERABIL_EMAIL`, `ERABIL_TELEFONO`) VALUES (AES_ENCRYPT('12312312', 'PRUEBA_NAN'), AES_ENCRYPT('PRUEBA', 'PRUEBA_IZENA'), AES_ENCRYPT('PRUEBA', 'PRUEBA_ABIZENA'), AES_ENCRYPT('PRUEBA', 'PRUEBA_PASAHITZA'), 1, AES_ENCRYPT('PRUEBA@GMAIL.COM', 'PRUEBA_EMAIL'),AES_ENCRYPT('123123152', 'PRUEBA_TELEFONO'))
        lblSignaturaID.Text = ostatua.IdSignatura
        txtIzena.Text = ostatua.OstatuIzena
        txtBDeskribapena.Text = ostatua.Deskribapena
        txtHelbidea.Text = ostatua.OstatuHelbidea
        txtMarka.Text = ostatua.Marka
        txtTelefonoa.Text = ostatua.OstatuTelefonoa
        DDPertsonaTot.SelectedValue = ostatua.PertsonaTot
        DDPertsonaTot.SelectedIndex = 20

        txtEmail.Text = ostatua.OstatuEmail
        txtMota.Text = ostatua.Mota
        txtPostaKodea.Text = ostatua.PostaKodea
        txtHerriKodea.Text = ostatua.HerriKodea
        txtLongitudea.Text = ostatua.Longitude
        txtLatitudea.Text = ostatua.Latitude
        txtAdiskidetsuUrl.Text = ostatua.AdiskidetsuUrl
        txtWebUrl.Text = ostatua.WebUrl
        txtZipUrl.Text = ostatua.ZipUrl

    End Sub

    Protected Sub txtHelbidea0_TextChanged(sender As Object, e As EventArgs) Handles txtEmail.TextChanged

    End Sub
End Class