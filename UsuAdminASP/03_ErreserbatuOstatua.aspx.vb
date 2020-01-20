Imports MySql.Data.MySqlClient

Public Class WebForm4
    Inherits System.Web.UI.Page

    'Datu basearen datuak
    Dim server As String = "server=localhost;user=root;database=3262035_ostatuagrad;port=3306;"
    '  Dim direccion As String = "server=kasserver.synology.me;database=reto_gp1;user id=gp1;port=3307; password=ZBlrkPWaSdVs5F3l;"
    'SQL konexioa
    Dim cnn1 As MySqlConnection

    Dim sartutakoBezeroa As New Bezeroa
    Dim ostatuaSignatura As String
    Dim ostatuIzena As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            ostatuaSignatura = Session("ostatuaSignatura")
            ostatuIzena = Session("ostatuIzena")
            sartutakoBezeroa = Session("sartutakoBezeroa")

            'ostatuaSignatura = "28I00001"
            ostatuaAtera()
            'lblHotelaIzena.Text = "QUE MAS DA"
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Sub ostatuaAtera()
        Try
            'Konexioa egin
            cnn1 = New MySqlConnection(server)
            'Konexioa zabaldu
            cnn1.Open()
            'Konexioarekin komandoa egin
            Dim cmd1 = cnn1.CreateCommand()
            'SQL komandoa
            cmd1.CommandText = "SELECT o.ostatu_izena, o.ostatu_helbidea, o.ostatu_email, o.ostatu_telefonoa, o.mota, o.marka, pk.probintzia, pk.herri_izena, o.posta_kodea FROM ostatuak o, posta_kodeak pk WHERE o.posta_kodea=pk.posta_kodea and o.herri_kodea = pk.herri_kodea AND o.id_signatura=@signatura"

            'Erabiltzaile eremuko textua parametro bezala jarri
            cmd1.Parameters.AddWithValue("@signatura", ostatuaSignatura)
            'Lerro fluxuak irakurri
            Dim das1 As MySqlDataReader
            'Lerro fluxuen komandoa exekutatu
            das1 = cmd1.ExecuteReader()

            'Lerroak (datuak) badaude
            If das1.HasRows() Then
                While das1.Read()
                    lblHotelaIzena.Text = das1.GetString(0)

                End While
                'Errore mezua
                MsgBox("Datu okerrak")
            End If

        Catch ex As Exception
            'Konexioa itxi
            cnn1.Close()
            MsgBox(ex.Message)

        End Try
    End Sub


    Sub gehitu_datuak()
        ' lblHotelaIzena.Text = 
    End Sub
    Protected Sub btnAtzera_Click(sender As Object, e As ImageClickEventArgs) Handles btnAtzera.Click

    End Sub

    Protected Sub BtnErreserbatu_Click(sender As Object, e As EventArgs) Handles BtnErreserbatu.Click

    End Sub
End Class