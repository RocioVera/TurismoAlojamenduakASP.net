<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="01_SartuBezeroa.aspx.vb" Inherits="UsuAdminASP.WebForm1" %>

<!DOCTYPE html>

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
            top: 17%;
            left: 36%;
            height: 165px;
            width: 392px;
        }
        .auto-style9 {
            width: 185px;
            height: 42px;
        }
    </style>
</head>
<body style ="background-image:url(Argazkiak/01_SartuBezeroa.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">
    <form id="form1" runat="server">
        <div>
        </div>
        <div id="loginLaukia" style="align-content: center center;
                text-align: center center;
                margin: auto;
                background-color: #79553D;" class="auto-style8"  >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style2">  &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblErabiltzaile" runat="server" Text="Erabiltzailea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#F8ECD4"></asp:Label>
                &nbsp;&nbsp;
                </td>
                <td class="auto-style5">&nbsp;
                    <asp:TextBox ID="txtBezeroa" runat="server" Width="166px" BackColor="#F8ECD4" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPasahitza" runat="server" Text="Pasahitza:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#F8ECD4"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;
                    <asp:TextBox ID="txtPasahitza" runat="server" Width="165px" TextMode="Password" BackColor="#F8ECD4" Height="20px"></asp:TextBox>
                &nbsp;<br />
                </td>
            </tr>
        </table>
            <div class="auto-style9" style="margin-left: 80px"> 
                <br />
        <asp:Button ID="btnSartu" runat="server" Text="Sartu" Width="190px" BackColor="#F8ECD4" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#79553D" Height="30px" />
    </div>
      </div>
    </form>
    <p> &nbsp;</p>
</body>
</html>
