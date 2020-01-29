<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="01_SartuBezeroa.aspx.vb" Inherits="UsuAdminASP.WebForm1" %>

<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
    End Sub
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 85px;
        }
        .auto-style2 {
            width: 153px;
            height: 40px;
            margin-left: 200px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            width: 153px;
            height: 42px;
            margin-left: 40px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style8 {
            position: absolute;
            top: 20%;
            left: 36%;
            height: 186px;
            width: 393px;
        }
        .auto-style9 {
            height: 59px;
        }
                </style>
</head>
<body style ="background-image:url(Argazkiak/01_SartuBezeroa.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">
    <form id="form1" runat="server">
        <div id="loginLaukia" style="align-content: center center; text-align: center center; margin: auto; background-color: #79553D; " class="auto-style8"  >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">  &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblErabiltzaile" runat="server" Text="Erabiltzailea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#F8ECD4"></asp:Label>
                    &nbsp;&nbsp;
                    </td>
                    <td class="auto-style5">&nbsp;
                        <asp:TextBox ID="txtBezeroa" runat="server" Width="166px" BackColor="#F8ECD4" Height="20px" MaxLength="8">11111111</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblPasahitza" runat="server" Text="Pasahitza:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#F8ECD4"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;
                        <asp:TextBox ID="txtPasahitza" runat="server" Width="165px" TextMode="Password" BackColor="#F8ECD4" Height="20px">12345</asp:TextBox>
                        &nbsp;<br />
                    </td>
                </tr>
            </table>
            <div class="auto-style9" style="text-align: center; font-size: 14px; color: #FF0000; background-color: #F8ECD4;">
                <strong>
                <asp:Label ID="lblErroreMezua" runat="server" Text="Erabiltzailea edo pasahitza txarto, sartu berriro." Visible="False"></asp:Label>
                <br />
                <asp:Button ID="btnSartu" runat="server" Text="Sartu" Width="190px" BackColor="#F8ECD4" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#79553D" Height="30px" />
                </strong>
            </div>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="btnAtzera" runat="server" Height="33px" ImageUrl="~/Argazkiak/atzera.png" Width="49px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>