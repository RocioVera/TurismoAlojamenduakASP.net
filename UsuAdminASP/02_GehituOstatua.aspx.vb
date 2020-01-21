﻿Imports MySql.Data.MySqlClient

Public Class WebForm3

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
            Dim idSignatura As String = Session("hautatutakoOstatua")
            '  Dim idSignatura As String = "28I00005"
            For i As Integer = 1 To 1500
                DDPertsonaTot.Items.Add(i)
            Next
            HerriKodeGuztiakKargatu()
            HerriaGuztiakKargatu()
            PostaKodeakGuztiakKargatu()

        End If
    End Sub

    Private Sub ateraProbintziaHerria()
            Try
                'Konexioa egin
                cnn1 = New MySqlConnection(server)
                'Konexioa zabaldu
                cnn1.Open()
                'Konexioarekin komandoa egin
                Dim cmd1 = cnn1.CreateCommand()
                'SQL komandoa

                cmd1.CommandText = "SELECT herri_izena, probintzia FROM posta_kodeak WHERE herri_kodea LIKE @herriKodea AND posta_kodea = @postaKodea"
                'Erabiltzaile eremuko textua parametro bezala jarri
                cmd1.Parameters.AddWithValue("@herriKodea", ostatua.HerriKodea)
                cmd1.Parameters.AddWithValue("@postaKodea", ostatua.PostaKodea)
                'Lerro fluxuak irakurri
                Dim das1 As MySqlDataReader
                'Lerro fluxuen komandoa exekutatu
                das1 = cmd1.ExecuteReader()
                'Lerroak (datuak) badaude
                If das1.HasRows() Then
                    While das1.Read()
                        ostatua = New Ostatua()
                        ddlHerria.SelectedValue = das1.GetString(0)
                        ddlProbintzia.SelectedValue = das1.GetString(1)
                    End While
                End If
            Catch ex As Exception
                'Konexioa itxi
                cnn1.Close()
            End Try
        End Sub


    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnGorde.Click
        'nunca entra en el if
        ' SELECT posta_kodea FROM posta_kodeak WHERE herri_kodea='006' ORDER BY posta_kodea ASC  --> para cuando cliques en herri kodea
        If (txtIzena.Text <> "" And txtBDeskribapena.Text <> "" And txtHelbidea.Text <> "" And txtMarka.Text <> "" And
                        txtEmail.Text <> "" And txtTelefonoa.Text <> "" And txtLatitudea.Text <> "" And
            txtLongitudea.Text <> "" And txtMota.Text <> "" And txtWebUrl.Text <> "" And txtAdiskidetsuUrl.Text <> "" And
            txtZipUrl.Text <> "" And ddlPostaKodea.Text <> "" And ddlHerriKodea.SelectedIndex <> 0 And txtSignaturaID.Text <> "") Then


            Dim connection As New MySqlConnection(server)

            Try

                Dim command As New MySqlCommand("INSERT INTO `ostatuak`(`ID_SIGNATURA`, `OSTATU_IZENA`, `DESKRIBAPENA`, `OSTATU_HELBIDEA`, 
`MARKA`, `OSTATU_EMAIL`, `OSTATU_TELEFONOA`, `PERTSONA_TOT`, `LATITUDE`, `LONGITUDE`, `MOTA`, `WEB_URL`, 
`ADISKIDETSU_URL`, `ZIP_URL`, `POSTA_KODEA`, `HERRI_KODEA`) VALUES (@idSignatura,@izena,@deskribapena,@helbidea,
@marka,@email,@telefonoa,@pertsonaTot,@latitude,@longitude,@mota,@webUrl,@adiskidetsuUrl,@zipUrl, @postaKodea,@herriKodea)", connection)

                'Erabiltzaile eremuko textua parametro bezala jarri
                command.Parameters.Add("@izena", MySqlDbType.VarChar).Value = txtIzena.Text.ToUpper
                command.Parameters.Add("@deskribapena", MySqlDbType.VarChar).Value = txtBDeskribapena.Text.ToUpper
                command.Parameters.Add("@helbidea", MySqlDbType.VarChar).Value = txtHelbidea.Text.ToUpper
                command.Parameters.Add("@marka", MySqlDbType.VarChar).Value = txtMarka.Text.ToUpper
                command.Parameters.Add("@email", MySqlDbType.VarChar).Value = txtEmail.Text
                command.Parameters.Add("@telefonoa", MySqlDbType.VarChar).Value = txtTelefonoa.Text
                command.Parameters.Add("@pertsonaTot", MySqlDbType.Int64).Value = DDPertsonaTot.SelectedValue
                command.Parameters.Add("@latitude", MySqlDbType.Double).Value = txtLatitudea.Text
                command.Parameters.Add("@longitude", MySqlDbType.Double).Value = txtLongitudea.Text
                command.Parameters.Add("@mota", MySqlDbType.VarChar).Value = txtMota.Text.ToUpper
                command.Parameters.Add("@webUrl", MySqlDbType.VarChar).Value = txtWebUrl.Text
                command.Parameters.Add("@adiskidetsuUrl", MySqlDbType.VarChar).Value = txtAdiskidetsuUrl.Text
                command.Parameters.Add("@zipUrl", MySqlDbType.VarChar).Value = txtZipUrl.Text
                command.Parameters.Add("@postaKodea", MySqlDbType.Int64).Value = ddlPostaKodea.Text
                command.Parameters.Add("@herriKodea", MySqlDbType.VarChar).Value = ddlHerriKodea.SelectedItem
                command.Parameters.Add("@idSignatura", MySqlDbType.VarChar).Value = txtSignaturaID.Text

                connection.Open()

                If command.ExecuteNonQuery() = 1 Then
                    MsgBox("Ostatua sartuta")
                    Response.Redirect("02_BilatuOstatuaAdmin.aspx")
                End If
            Catch ex As Exception

            Finally
                connection.Close()
            End Try
        Else
            lblErrorea.Visible = True
        End If
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles btnAtzera.Click
            Response.Redirect("02_BilatuOstatuaAdmin.aspx")
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

        Private Sub PostaKodeakDropDownGehitu(sql As String)
            Try
                ddlPostaKodea.Items.Clear()
                'defektuzko balorea gehitzen da
                ddlPostaKodea.Items.Add("Posta kodeak")
                Dim das1 As New DataSet
                cnn1 = New MySqlConnection(server)
                cnn1.Open()

                Dim cmd1 = New MySqlCommand(sql, cnn1)
                Dim adap1 = New MySqlDataAdapter(cmd1)

                das1.Clear()

                Dim dr As MySqlDataReader
                dr = cmd1.ExecuteReader

                While dr.Read
                    If (dr.Item(0) <> "1000") Then
                        ddlPostaKodea.Items.Add(dr.Item(0))
                    End If
                End While

                dr.Close()
            Catch ex As Exception
                MsgBox(ex.ToString)
                cnn1.Close()
            End Try

        End Sub

        Private Sub HerriKodeakDropDownGehitu(sql As String)
            Try
                ddlHerriKodea.Items.Clear()
                'defektuzko balorea gehitzen da
                ddlHerriKodea.Items.Add("Herri kodeak")
                Dim das1 As New DataSet
                cnn1 = New MySqlConnection(server)
                cnn1.Open()

                Dim cmd1 = New MySqlCommand(sql, cnn1)
                Dim adap1 = New MySqlDataAdapter(cmd1)

                das1.Clear()

                Dim dr As MySqlDataReader
                dr = cmd1.ExecuteReader
                MsgBox(sql)

                While dr.Read
                    If (dr.Item(0) <> "HUTSIK") Then
                        ddlHerriKodea.Items.Add(dr.Item(0))
                    End If
                End While

                dr.Close()
            Catch ex As Exception
                MsgBox(ex.ToString)
                cnn1.Close()
            End Try
        End Sub

        Protected Sub ddlProbintzia_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProbintzia.SelectedIndexChanged
            If ddlProbintzia.SelectedItem.Text <> "Probintzia" Then
                Dim sql As String
                sql = "SELECT DISTINCT(HERRI_IZENA) FROM posta_kodeak WHERE upper(PROBINTZIA) LIKE '" & ddlProbintzia.SelectedItem.Text.ToUpper & "' ORDER BY HERRI_IZENA ASC"
                HerriDropDownGehitu(sql)
                sql = "SELECT DISTINCT(herri_kodea) FROM posta_kodeak WHERE upper(PROBINTZIA) LIKE '" & ddlProbintzia.SelectedItem.Text.ToUpper & "' ORDER BY herri_kodea ASC"
                HerriKodeakDropDownGehitu(sql)
            Else
                HerriaGuztiakKargatu()
                HerriKodeGuztiakKargatu()
            End If
        End Sub

        Private Sub PostaKodeakGuztiakKargatu()
            Dim sql As String
            sql = "SELECT DISTINCT(posta_kodea) FROM posta_kodeak ORDER BY posta_kodea ASC"
            PostaKodeakDropDownGehitu(sql)
        End Sub

        Protected Sub ddlHerria_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlHerria.SelectedIndexChanged
            Dim sql As String

            If ddlHerria.SelectedItem.Text = "Herriak" And ddlProbintzia.SelectedItem.Text = "Probintzia" Then
                HerriKodeGuztiakKargatu()
            Else
                If ddlHerria.SelectedItem.Text <> "Herriak" Then
                    sql = "SELECT DISTINCT(herri_kodea) FROM posta_kodeak WHERE upper(herri_izena) LIKE upper( '" & ddlHerria.SelectedItem.Text & "') "

                    If ddlProbintzia.SelectedItem.Text <> "Probintzia" Then
                        sql += "AND upper(PROBINTZIA) LIKE '" & ddlProbintzia.SelectedItem.Text.ToUpper & "' "
                    End If

                    sql += "ORDER BY herri_kodea ASC"
                    HerriKodeakDropDownGehitu(sql)
                Else
                    If ddlProbintzia.SelectedItem.Text <> "Probintzia" Then
                        sql += "SELECT DISTINCT(herri_kodea) FROM posta_kodeak WHERE upper(PROBINTZIA) LIKE '" & ddlProbintzia.SelectedItem.Text.ToUpper & "' "
                    Else
                        sql += "SELECT DISTINCT(herri_kodea) FROM posta_kodeak "
                    End If
                    sql += " ORDER BY herri_kodea ASC"
                    HerriKodeakDropDownGehitu(sql)
                End If

            End If
            MsgBox(sql)

        End Sub

        Private Sub HerriaGuztiakKargatu()
            Dim sql As String
            sql = "SELECT DISTINCT(herri_izena) FROM posta_kodeak ORDER BY herri_izena ASC"
            HerriDropDownGehitu(sql)
        End Sub

        Protected Sub ddlHerriKodea_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlHerriKodea.SelectedIndexChanged
            If ddlHerriKodea.SelectedItem.Text = "Herri kodeak" Then
                HerriKodeGuztiakKargatu()
            End If
        End Sub

        Private Sub HerriKodeGuztiakKargatu()
            Dim sql As String
            sql = "SELECT DISTINCT(herri_kodea) FROM posta_kodeak ORDER BY herri_kodea ASC"
            HerriKodeakDropDownGehitu(sql)
        End Sub

End Class