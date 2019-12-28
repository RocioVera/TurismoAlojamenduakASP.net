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
            cmd1.CommandText = "SELECT nan, pasahitza FROM Erabiltzaileak WHERE nan = @user AND pasahitza=MD5(@pass)"
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
                If das1.HasRows() Then
                    'MsgBox("Datu zuzenak")
                    'erabiltzaile + pasahitza zuzenak badira kudeaketa lehiora joango da
                    Response.Redirect("02_zerEgin.aspx")
                Else
                    'Errore mezua
                    MsgBox("Datu okerrak")
                End If
            Else
                'Errore mezua
                MsgBox("Datu okerrak")
            End If
        Catch ex As Exception
            'Konexioa itxi
            cnn1.Close()
            'Errore mezua
            MsgBox("Datu okerrak")
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class