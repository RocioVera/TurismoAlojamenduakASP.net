Imports MySql.Data.MySqlClient

Public Class WebForm6
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
    Dim sartutakoBezeroa As New Bezeroa

    Dim gonbidatuNan As String = "00000000"
    Dim gonbidatuIzena As String = "GONBIDATUA"
    Dim gonbidapenBezeroa As New Bezeroa(gonbidatuNan, gonbidatuIzena)
    Dim gaurkoData = DateAdd("d", 0, Format(Now, "yyyy-MM-dd"))
    Dim biharkoData = DateAdd("d", 1, Format(Now, "yyyy-MM-dd"))


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            For i As Integer = 1 To 30
                ddlPertsonaKant.Items.Add(i)
            Next
            imgBtnImage()
            ProbintziaKargatu()
            HerriaGuztiakKargatu()
            MotaGuztiakKargatu()
            taulaGehitu()
            txtHasieraData.Text = gaurkoData
            txtAmaieraData.Text = biharkoData

        End If
    End Sub

    Protected Sub ateraGonbidatua()
        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            'SQL komandoa
            cmd1.CommandText = "SELECT nan, erabil_izena, abizenak, baimena, erabil_email, erabil_telefono FROM Erabiltzaileak WHERE nan = @user AND pasahitza=@pass"
            Dim userencriptado = AES_Encrypt(gonbidatuNan, "encriptado")
            Dim psswencriptado = AES_Encrypt(gonbidatuIzena, "encriptado")

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
                    sartutakoBezeroa = New Bezeroa(AES_Decrypt(das1.GetString(0), "encriptado"), AES_Decrypt(das1.GetString(1), "encriptado"), AES_Decrypt(das1.GetString(2), "encriptado"), das1.GetInt32(3), AES_Decrypt(das1.GetString(4), "encriptado"), AES_Decrypt(das1.GetString(5), "encriptado"))
                End While
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
        taulaGehitu()

    End Sub


    Protected Sub ddlMota_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlMota.SelectedIndexChanged
        Dim sql As String
        sql = "SELECT DISTINCT(mota) FROM ostatuak WHERE upper(mota) Like upper('" & ddlMota.SelectedItem.Text.ToUpper & "') ORDER BY mota"
        taulaGehitu()
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
            cnn1.Close()

        End Try
    End Sub


    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnAtzera.Click
        Response.Redirect("01_SartuBezeroa.aspx")
    End Sub

    Protected Sub GridViewDatuak_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewDatuak.SelectedIndexChanged
        Try
            sartutakoBezeroa = Session("sartutakoBezeroa")
        Catch ex As Exception
            ateraGonbidatua()
        End Try

        Try
            If sartutakoBezeroa.nan.Equals(gonbidatuNan) Then
                Dim erantzuna = MsgBox("Erreserbatzeko logeatuta egon behar zara, hasi nahi duzu saioa?", vbYesNo, "Logeatu!!!")
                If erantzuna = vbYes Then    ' User chose Yes.
                    Response.Redirect("01_SartuBezeroa.aspx")
                End If
            Else
                Session.Add("sartutakoBezeroa", sartutakoBezeroa)
                Session.Add("ostatuaSignatura", GridViewDatuak.SelectedRow.Cells(5).Text.ToString())
                Session.Add("ostatuIzena", GridViewDatuak.SelectedRow.Cells(1).Text.ToString())
                Session.Add("pertsonaTotala", ddlPertsonaKant.SelectedValue)

                Session.Add("hasieraData", txtHasieraData.Text)
                Session.Add("amaieraData", txtAmaieraData.Text)

                Response.Redirect("03_ErreserbatuOstatua.aspx")
            End If

        Catch ex As Exception

        End Try

    End Sub

    Protected Sub ddlHerria_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlHerria.SelectedIndexChanged
        If (ddlProbintzia.SelectedItem.Text = "Probintziak") Then
            HerriaGuztiakKargatu()
        End If
        taulaGehitu()

    End Sub

    Protected Sub imgBtnAtzera0_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnMaps.Click
        Response.Redirect("03_Mapa.aspx")
    End Sub

    Protected Sub imgBtnHasiSaioa_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnHasiSaioa.Click
        If sartutakoBezeroa IsNot Nothing Then
            If sartutakoBezeroa.nan <> gonbidapenBezeroa.nan Then
                sartutakoBezeroa.nan = gonbidapenBezeroa.nan
                sartutakoBezeroa.erabil_izena = gonbidapenBezeroa.erabil_izena
            End If
            Response.Redirect("01_SartuBezeroa.aspx")
            'poner el bezero a 0000
        End If
        imgBtnImage()


    End Sub

    Sub imgBtnImage()
        Try
            sartutakoBezeroa = Session("sartutakoBezeroa")
            If sartutakoBezeroa.nan.Equals(gonbidapenBezeroa.nan) Then
                imgBtnHasiSaioa.ImageUrl = "~/Argazkiak/hasiSaioa.png"
            Else
                imgBtnHasiSaioa.ImageUrl = "~/Argazkiak/cerrarSesion.png"
                imgBtnDatuaIkusi.Visible = True
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub imgBtnDatuaIkusi_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnDatuaIkusi.Click
        Response.Redirect("03_BezeroDatuak.aspx")
    End Sub

    Protected Sub ddlPertsonaKant_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlPertsonaKant.SelectedIndexChanged

    End Sub

    Protected Sub GridViewDatuak_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridViewDatuak.PageIndexChanging
        GridViewDatuak.PageIndex = e.NewPageIndex
        taulaGehitu()
    End Sub

End Class