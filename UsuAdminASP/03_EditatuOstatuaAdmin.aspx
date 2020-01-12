<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="03_EditatuOstatuaAdmin.aspx.vb" Inherits="UsuAdminASP.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style8 {
            position: absolute;
            top: 3%;
            left: 2%;
            height: 751px;
            width: 874px;
            right: 206px;
        }

        
        .auto-style1 {
            width: 100%;
            height: 85px;
        }
        .auto-style2 {
            height: 40px;
            margin-left: 200px;
        }

        .auto-style11 {
            height: 42px;
            margin-left: 40px;
        }
        .auto-style12 {
            width: 285px;
            height: 42px;
            margin-left: 40px;
        }
        .auto-style13 {
            width: 261px;
            height: 42px;
            margin-left: 40px;
        }
        .auto-style14 {
            height: 7px;
            margin-left: 40px;
        }
        </style>
</head>
<body style="background-image: url(Argazkiak/02_zerEgin.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">
    <form id="form1" runat="server">
        &nbsp;<br />
        <div id="loginLaukia" style="align-content: center center; text-align: center center; margin: auto; background-color: #6BB1F8; " class="auto-style8"  >
            &nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4" style="text-align: center">  
                        <asp:Label ID="lblSignatura" runat="server" Text="Signatura:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                    &nbsp;<asp:Label ID="lblSignaturaID" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4" style="text-align: center">  
                        <asp:Label ID="lblIzena" runat="server" Text="Izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtIzena" runat="server" Height="20px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblHelbidea" runat="server" Text="Helbidea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
&nbsp;<asp:TextBox ID="txtHelbidea" runat="server" Height="20px" Width="230px"></asp:TextBox>
                        </td>
                    <td class="auto-style13" colspan="2">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail" runat="server" Height="20px" Width="230px"></asp:TextBox>
                        </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblTelefonoa" runat="server" Text="Telefonoa:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtTelefonoa" runat="server" Height="20px" Width="230px"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMota" runat="server" Text="Mota:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtMota" runat="server" Height="20px" Width="250px"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMarka" runat="server" Text="Marka:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtMarka" runat="server" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblHerriKodea" runat="server" Text="Herri kodea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtHerriKodea" runat="server" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblPostaKodea" runat="server" Text="Posta kodea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtPostaKodea" runat="server" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style2" colspan="4">  
                        <asp:Label ID="lblDeskribapena" runat="server" Text="Deskribapena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<br />
                        &nbsp;<asp:TextBox ID="txtBDeskribapena" runat="server" Height="102px" Width="782px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        ______________________________________________________________________________________________________<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblPertsonaTot" runat="server" Text="Pertsona totala:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="DDPertsonaTot" runat="server" Height="27px" Width="84px">
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style11" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblLatitudea" runat="server" Text="Latitudea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtLatitudea" runat="server" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblHerriKodea1" runat="server" Text="Longitudea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtLongitudea" runat="server" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="4">______________________________________________________________________________________________________<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="lblWebUrl" runat="server" Text="Web URL" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtWebUrl" runat="server" Height="20px" Width="782px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="lblAdiskidetsuUrl" runat="server" Text="Adiskidetsu URL:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtAdiskidetsuUrl" runat="server" Height="20px" Width="782px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="lblZipUrl" runat="server" Text="ZIP URL" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtZipUrl" runat="server" Height="20px" Width="782px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="2">
                        </td>
                    <td class="auto-style14" colspan="2">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" aria-orientation="horizontal" style="text-align: right">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="34px" ImageUrl="~/Argazkiak/atzeraBeltza.png" Width="43px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style11" colspan="2" aria-orientation="horizontal" style="text-align: left">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Argazkiak/gorde.png" Width="50px" />
                        </td>
                </tr>
            </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
        <br />
        <br />
    </form>
</body>
</html>
