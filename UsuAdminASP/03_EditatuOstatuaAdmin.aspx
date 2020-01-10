<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="03_EditatuOstatuaAdmin.aspx.vb" Inherits="UsuAdminASP.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style8 {
            position: absolute;
            top: 12%;
            left: 5%;
            height: 327px;
            width: 1013px;
            right: 240px;
        }
        
        .auto-style1 {
            width: 100%;
            height: 85px;
        }
        .auto-style2 {
            width: 170px;
            height: 40px;
            margin-left: 200px;
        }
        .auto-style6 {
            width: 170px;
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
        &nbsp;<br />
        <div id="Titulua" style="text-align: center; font-family: 'Bodoni MT'; font-style: oblique; font-size: 50px; color: #000099;">
           <asp:Label ID="lblIzena" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
        </div>
        <br />
        <div id="loginLaukia" style="align-content: center center; text-align: center center; margin: auto; background-color: #6BB1F8; " class="auto-style8"  >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">  
                        <asp:Label ID="lblIdSignatura" runat="server" Text="Id signatura:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBxIdSignatura" runat="server" Height="24px" Width="130px"></asp:TextBox>
                    &nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblDeskribapena" runat="server" Text="Deskribapena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBDeskribapena" runat="server" Height="122px" Width="408px"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
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
