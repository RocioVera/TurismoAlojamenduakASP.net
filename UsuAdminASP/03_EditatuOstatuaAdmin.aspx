<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="03_EditatuOstatuaAdmin.aspx.vb" Inherits="UsuAdminASP.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style8 {
            position: absolute;
            top: 6%;
            left: 3%;
            height: 914px;
            width: 834px;
            right: 489px;
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
                        <asp:Label ID="lblEguneratu" runat="server" ForeColor="#FFF6EF" Height="36px" style="font-size: xx-large; font-weight: 700; margin-bottom: 0px;" Text="Datuak eguneratu" Width="283px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4" style="text-align: center">  
                        <asp:Label ID="lblSignatura" runat="server" Text="Signatura:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                    &nbsp;<asp:Label ID="lblSignaturaID" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4" style="text-align: center">  
                        <asp:Label ID="lblIzena" runat="server" Text="Izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtIzena" runat="server" Height="20px" Width="250px" BackColor="#FFF6EF" MaxLength="50"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblHelbidea" runat="server" Text="Helbidea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
&nbsp;<asp:TextBox ID="txtHelbidea" runat="server" Height="20px" Width="230px" BackColor="#FFF6EF" MaxLength="200"></asp:TextBox>
                        </td>
                    <td class="auto-style13" colspan="2">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail" runat="server" Height="20px" Width="230px" BackColor="#FFF6EF" MaxLength="100"></asp:TextBox>
                        </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblTelefonoa" runat="server" Text="Telefonoa:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtTelefonoa" runat="server" Height="20px" Width="230px" BackColor="#FFF6EF" Rows="12"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMota" runat="server" Text="Mota:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtMota" runat="server" Height="20px" Width="250px" BackColor="#FFF6EF" MaxLength="25"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMarka" runat="server" Text="Marka:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtMarka" runat="server" Height="20px" Width="250px" BackColor="#FFF6EF" MaxLength="500"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblProbintziak" runat="server" Text="Probintziak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
&nbsp;<asp:DropDownList ID="ddlProbintzia" runat="server" AutoPostBack="True" Width="147px" Height="30px" BackColor="#FFF6EF">
                            <asp:ListItem>Probintzia</asp:ListItem>
            <asp:ListItem>Araba</asp:ListItem>
            <asp:ListItem>Bizkaia</asp:ListItem>
            <asp:ListItem>Gipuzkoa</asp:ListItem>
        </asp:DropDownList>
            &nbsp;
                        </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblHerriak" runat="server" Text="Herriak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
&nbsp;<asp:DropDownList ID="ddlHerria" runat="server" AutoPostBack="True" Width="151px" Height="30px" BackColor="#FFF6EF">
            <asp:ListItem>Herriak</asp:ListItem>
        </asp:DropDownList>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblHerriKodea" runat="server" Text="Herri kodea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:DropDownList ID="ddlHerriKodea" runat="server" AutoPostBack="True" Width="151px" Height="30px" BackColor="#FFF6EF">
            <asp:ListItem>Herri kodeak</asp:ListItem>
        </asp:DropDownList>
                        </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblPostaKodea" runat="server" Text="Posta kodea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
        <asp:DropDownList ID="ddlPostaKodea" runat="server" AutoPostBack="True" Width="151px" Height="30px" BackColor="#FFF6EF">
            <asp:ListItem>Posta kodeak</asp:ListItem>
        </asp:DropDownList>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style2" colspan="4">  
                        <asp:Label ID="lblDeskribapena" runat="server" Text="Deskribapena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBDeskribapena" runat="server" Height="95px" TextMode="MultiLine" Width="780px" BackColor="#FFF6EF" MaxLength="2000"></asp:TextBox>
                        <br />
                        ______________________________________________________________________________________________________<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblPertsonaTot" runat="server" Text="Pertsona totala:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="DDPertsonaTot" runat="server" Height="27px" Width="84px" BackColor="#FFF6EF">
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style11" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblLatitudea" runat="server" Text="Latitudea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtLatitudea" runat="server" Height="20px" Width="250px" BackColor="#FFF6EF"></asp:TextBox>
                        </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblHerriKodea1" runat="server" Text="Longitudea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtLongitudea" runat="server" Height="20px" Width="250px" BackColor="#FFF6EF"></asp:TextBox>
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
                        &nbsp;<asp:TextBox ID="txtWebUrl" runat="server" Height="20px" Width="782px" BackColor="#FFF6EF" MaxLength="1500"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="lblAdiskidetsuUrl" runat="server" Text="Adiskidetsu URL:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtAdiskidetsuUrl" runat="server" Height="20px" Width="782px" BackColor="#FFF6EF" MaxLength="1500"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="lblZipUrl" runat="server" Text="ZIP URL" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <br />
                        &nbsp;<asp:TextBox ID="txtZipUrl" runat="server" Height="20px" Width="782px" BackColor="#FFF6EF" MaxLength="1500"></asp:TextBox>
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
                        <asp:ImageButton ID="btnAtzera" runat="server" Height="34px" ImageUrl="~/Argazkiak/atzeraBeltza.png" Width="43px" />
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
