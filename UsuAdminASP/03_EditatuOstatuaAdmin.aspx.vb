﻿Imports MySql.Data.MySqlClient

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
            Dim idSignatura As String = Session("hautatutakoOstatua")
            ateraDatuak(idSignatura)
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
                    MsgBox(ostatua.IdSignatura)


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
        txtBxIdSignatura.Text = ostatua.IdSignatura
        txtBxIzena.Text = ostatua.OstatuIzena
        txtBDeskribapena.Text = ostatua.Deskribapena
    End Sub


End Class