<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="03_EditatuOstatuaAdmin.aspx.vb" Inherits="UsuAdminASP.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style8 {
            position: absolute;
            top: 25%;
            left: 14%;
            height: 327px;
            width: 754px;
        }
        
        .auto-style1 {
            width: 100%;
            height: 85px;
        }
        .auto-style2 {
            width: 311px;
            height: 40px;
            margin-left: 200px;
        }
        .auto-style6 {
            width: 311px;
            height: 42px;
            margin-left: 40px;
        }
        .auto-style7 {
            height: 42px;
            width: 262px;
        }
        </style>
</head>
<body style="background-image: url(Argazkiak/02_zerEgin.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">
    <form id="form1" runat="server">
        <br />
&nbsp;
        <br />
        <br />
        &nbsp;
        <br />
        <br />
        <br />
        <div id="loginLaukia" style="align-content: center center; text-align: center center; margin: auto; background-color: #79553D; " class="auto-style8"  >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">  
                        <asp:Label ID="lblIdSignatura" runat="server" Text="Id signatura:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#F8ECD4"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBxIdSignatura" runat="server" Height="24px" Width="130px"></asp:TextBox>
                    &nbsp;&nbsp;
                    </td>
                    <td colspan="2" rowspan="2">
                        <asp:Label ID="lblDeskribapena" runat="server" Text="Deskribapena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#F8ECD4"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBDeskribapena" runat="server" Height="123px" Width="403px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblIzena" runat="server" Text="Izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="#F8ECD4"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBxIzena" runat="server" Height="25px" Width="132px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
        <br />
    </form>
</body>
</html>
