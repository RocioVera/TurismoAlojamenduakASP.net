﻿Imports MySql.Data.MySqlClient

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

            'lblHotelaIzena.Text = "QUE MAS DA"
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Protected Sub btnAtzera_Click(sender As Object, e As ImageClickEventArgs) Handles btnAtzera.Click

    End Sub

    Protected Sub BtnErreserbatu_Click(sender As Object, e As EventArgs) Handles BtnErreserbatu.Click

    End Sub
End Class