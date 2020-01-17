Imports MySql.Data.MySqlClient
Imports System.Data

    Partial Class WebForm7
        Inherits System.Web.UI.Page

    Dim cnstring As String = "server=localhost;user=root;database=3262035_ostatuagrad;port=3306;"

    Dim cnn1 As MySqlConnection

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            'bilatu botoia sakatzean, konexioa sortuko du
            cnn1 = New MySqlConnection(cnstring)
            cnn1.Open()

            Dim sql As String
            Dim adap1 As New MySqlDataAdapter
            Dim das1 As New DataSet
            Dim cmd2 As New MySqlCommand

            'sql komandoa idazten da
            sql = "SELECT DISTINCT o.ostatu_izena, REPLACE(o.latitude, ',', '.'), REPLACE(o.longitude, ',', '.'), pk.herri_izena, o.mota, o.web_url FROM ostatuak o, posta_kodeak pk WHERE o.posta_Kodea = pk.posta_Kodea AND o.herri_kodea = pk.herri_kodea"

            cmd2 = New MySqlCommand(sql, cnn1)
            adap1 = New MySqlDataAdapter(cmd2)
            das1.Clear()

            'grid view-a beteko da kontsultak itzultzen dituen tuplekin/lerroekin
            adap1.Fill(das1, "Ostatuak")
            Me.GridView1.DataSource = das1.Tables("Ostatuak")
            Me.GridView1.DataBind()

        Catch ex As Exception
            MsgBox(ex.ToString)
            cnn1.Close()

        End Try
    End Sub

    Protected Sub imgBtnAtzera_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnAtzera.Click
        Response.Redirect("02_BilatuOstatua.aspx")

    End Sub
End Class
