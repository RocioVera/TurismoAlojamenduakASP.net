Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GehituArgazkiBtn_Click(sender As Object, e As ImageClickEventArgs) Handles btnGehituOstatua.Click
        Response.Redirect("03_GehituOstatua.aspx")
    End Sub

    Protected Sub btnBilatuOstatua_Click(sender As Object, e As ImageClickEventArgs) Handles btnBilatuOstatua.Click
        Response.Redirect("03_BilatuOstatua.aspx")
    End Sub
End Class