Imports MySql.Data.MySqlClient
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
    Dim bezeroObj As New Bezeroa

    Public ReadOnly Property BezeroaHartu As Bezeroa
        Get
            Return bezeroObj
        End Get
    End Property

    Protected Sub btnSartu_Click(sender As Object, e As EventArgs) Handles btnSartu.Click
        Dim bezeroa As String
        Dim pasahitza As String
        bezeroa = txtBezeroa.Text.ToString
        pasahitza = txtPasahitza.Text.ToString
        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            'SQL komandoa
            cmd1.CommandText = "SELECT nan, erabil_izena, abizenak, baimena, erabil_email, erabil_telefono FROM Erabiltzaileak WHERE nan = @user AND pasahitza=MD5(@pass)"
            'Erabiltzaile eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@user", Me.txtBezeroa.Text)
            'Pasahitza eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@pass", Me.txtPasahitza.Text)
            'Lerro fluxuak irakurri
            Dim das1 As MySqlDataReader
            'Lerro fluxuen komandoa exekutatu
            das1 = cmd1.ExecuteReader()
            'Lerroak (datuak) badaude
            If das1.HasRows() Then
                While das1.Read()
                    Dim bez As New Bezeroa(das1.GetInt32(0), das1.GetString(1), das1.GetString(2), das1.GetInt32(3), das1.GetString(4), das1.GetInt32(5))
                    bezeroObj = bez
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
End Class