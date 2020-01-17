Imports MySql.Data.MySqlClient

Public Class WebForm2
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
    Dim sartutakoBezeroa As Bezeroa

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            sartutakoBezeroa = Session("sartutakoBezeroa")
            ProbintziaKargatu()
            HerriaGuztiakKargatu()
            MotaGuztiakKargatu()
            taulaGehitu()
        End If
    End Sub

    Private Sub HerriDropDownGehitu(sql As String)
        Try
            ddlHerria.Items.Clear()
            'defektuzko balorea gehitzen da
            ddlHerria.Items.Add("Herriak")
            Dim das1 As New DataSet
            cnn1 = New MySqlConnection(server)
            cnn1.Open()

            Dim cmd1 = New MySqlCommand(sql, cnn1)
            Dim adap1 = New MySqlDataAdapter(cmd1)

            das1.Clear()

            Dim dr As MySqlDataReader
            dr = cmd1.ExecuteReader

            While dr.Read
                If (dr.Item(0) <> "HUTSIK") Then
                    ddlHerria.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
            cnn1.Close()
        End Try

    End Sub

    Private Sub MotaDropDownGehitu(sql As String)
        Try
            ddlMota.Items.Clear()
            'defektuzko balorea gehitzen da
            ddlMota.Items.Add("Mota")
            Dim das1 As New DataSet
            cnn1 = New MySqlConnection(server)
            cnn1.Open()

            Dim cmd1 = New MySqlCommand(sql, cnn1)
            Dim adap1 = New MySqlDataAdapter(cmd1)

            das1.Clear()

            Dim dr As MySqlDataReader
            dr = cmd1.ExecuteReader

            While dr.Read
                ddlMota.Items.Add(dr.Item(0))
            End While
            dr.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
            cnn1.Close()
        End Try

    End Sub

    Private Sub ProbintziaKargatu()
        Try
            ddlProbintzia.Items.Clear()
            'defektuzko balorea gehitzen da
            ddlProbintzia.Items.Add("Probintziak")

            Dim das1 As New DataSet
            Dim sql As String
            sql = "SELECT DISTINCT(probintzia) FROM posta_kodeak"

            cnn1 = New MySqlConnection(server)
            cnn1.Open()

            Dim cmd1 = New MySqlCommand(sql, cnn1)
            Dim adap1 = New MySqlDataAdapter(cmd1)

            das1.Clear()

            Dim dr As MySqlDataReader
            dr = cmd1.ExecuteReader

            While dr.Read
                If (dr.Item(0) <> "HUTSIK") Then
                    ddlProbintzia.Items.Add(dr.Item(0))
                End If

            End While
            dr.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
            cnn1.Close()
        End Try

    End Sub

    Private Sub HerriaGuztiakKargatu()
        Dim sql As String
        sql = "SELECT DISTINCT(herri_izena) FROM posta_kodeak"
        HerriDropDownGehitu(sql)
    End Sub

    Protected Sub MotaGuztiakKargatu()
        Dim sql As String
        sql = "SELECT DISTINCT(mota) FROM ostatuak"
        MotaDropDownGehitu(sql)
    End Sub

    Protected Sub ddlProbintzia_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProbintzia.SelectedIndexChanged
        If ddlProbintzia.SelectedItem.Text <> "Probintzia" Then
            Dim sql As String
            sql = "SELECT DISTINCT(HERRI_IZENA) FROM posta_kodeak WHERE upper(PROBINTZIA) LIKE '" & ddlProbintzia.SelectedItem.Text.ToUpper & "' ORDER BY HERRI_IZENA"
            HerriDropDownGehitu(sql)
        Else
            HerriaGuztiakKargatu()
        End If
    End Sub


    Protected Sub ddlMota_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlMota.SelectedIndexChanged
        Dim sql As String
        sql = "SELECT DISTINCT(mota) FROM ostatuak WHERE upper(mota) Like upper('" & ddlMota.SelectedItem.Text.ToUpper & "') ORDER BY mota"
        MotaDropDownGehitu(sql)
    End Sub

    Protected Sub imagebuttonbilatu_Click(sender As Object, e As ImageClickEventArgs) Handles imagebuttonbilatu.Click
        taulaGehitu()
    End Sub

    Private Sub taulaGehitu()
        Try
            'bilatu botoia sakatzean, konexioa sortuko du
            cnn1 = New MySqlConnection(server)
            cnn1.Open()

            Dim sql As String
            Dim cmd2 As New MySqlCommand

            'sql komandoa idazten da
            sql = "SELECT DISTINCT Ostatu_izena, Mota, Probintzia, Herri_izena, Id_signatura FROM ostatuak a, posta_kodeak p WHERE a.Herri_Kodea = p.Herri_Kodea AND SUBSTRING(a.Posta_Kodea, 1, 2) = p.Lurralde_kodea"

            'bilaketa eremu ezberdinak gehitu egingo dira sql komandora hutsik edo defektuzkoak ez baldin badaude
            If Not Me.txtIzena.Text = Nothing Then
                sql &= " AND upper(ostatu_izena) LIKE upper('%" & txtIzena.Text.ToString & "%')"
            End If

            If Not Me.ddlHerria.SelectedValue = "Herriak" Then
                sql &= " AND Herri_izena = '" & ddlHerria.SelectedValue.ToString & "'"
            End If

            If Not Me.ddlProbintzia.SelectedValue = "Probintziak" Then
                sql &= " AND Probintzia = '" & ddlProbintzia.SelectedValue.ToString & "'"
            End If

            If Not Me.ddlMota.SelectedValue = "Mota" Then
                sql &= " AND Mota = '" & ddlMota.SelectedValue.ToString & "'"
            End If

            cmd2 = New MySqlCommand(sql, cnn1)
            adapter = New MySqlDataAdapter(cmd2)
            data.Clear()

            adapter.Fill(data, "Ostatuak")
            Me.GridViewDatuak.DataSource = data.Tables("Ostatuak")
            Me.GridViewDatuak.DataBind()

        Catch ex As Exception
            MsgBox(ex.ToString)
            cnn1.Close()

        End Try
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("01_SartuBezeroa.aspx")
    End Sub

    Protected Sub GridViewDatuak_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewDatuak.SelectedIndexChanged
        'MsgBox("Value:" & GridViewDatuak.SelectedIndex)
        Session.Add("sartutakoBezeroa", sartutakoBezeroa)
        Session.Add("hautatutakoOstatua", GridViewDatuak.SelectedRow.Cells(5).Text.ToString())

        '        MsgBox(GridViewDatuak.SelectedRow.Cells(5).Text.ToString())

        Response.Redirect("03_EditatuOstatuaAdmin.aspx")

        ' https://www.youtube.com/watch?v=qKcg9eCBh0M
    End Sub

    Protected Sub ddlHerria_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlHerria.SelectedIndexChanged
        If (ddlProbintzia.SelectedItem.Text = "Probintziak") Then
            HerriaGuztiakKargatu()
        End If
        taulaGehitu()

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("02_GehituOstatua.aspx")

    End Sub

    Protected Sub imgBtnAtzera0_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnAtzera0.Click
        Response.Redirect("03_Mapa.aspx")
    End Sub
End Class
