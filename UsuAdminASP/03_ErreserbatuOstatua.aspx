<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="03_ErreserbatuOstatua.aspx.vb" Inherits="UsuAdminASP.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style0 {
            position: absolute;
            top: 12%;
            left: 14%;
            height: 234px;
            width: 708px;
            right: 240px;
        }

        .auto-style1 {
            width: 97%;
            height: 168px;
        }
        .auto-style2 {
            height: 40px;
            margin-left: 200px;
            width: 403px;
        }

        .auto-style8 {
            position: absolute;
            top: 6%;
            left: 3%;
            height: 873px;
            width: 832px;
            right: 399px;
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
        
        .auto-style11 {
            height: 42px;
            margin-left: 40px;
        }
        .auto-style14 {
            margin-left: 200px;
            width: 403px;
        }
        </style>
</head>
<body style ="background-image:url(Argazkiak/03_BilatuOstatua.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="Kalendarioak">
            <br />
            <br />
            <br />
        <div id="loginLaukia" style="align-content: center center; text-align: center center; margin: auto; background-color: #6BB1F8; " class="auto-style8"  >
            &nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4" style="text-align: center">  
                        <asp:Label ID="lblErreserbaOnartu" runat="server" ForeColor="White" Height="36px" style="font-size: xx-large; font-weight: 700; margin-bottom: 0px;" Text="Erreserba onartu:" Width="283px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4" style="text-align: center">  
                        ________________________________________________Bezero_Datuak__________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4" style="text-align: center">  
                        <asp:Label ID="lblHotela" runat="server" Text="Izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                    &nbsp;<asp:Label ID="lblHotelaIzena" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="4" style="text-align: center">  
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblHelbidea" runat="server" Text="Helbidea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:Label ID="lblHelbideaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
&nbsp;</td>
                    <td class="auto-style13" colspan="2">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:Label ID="lblEmailErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblTelefonoa" runat="server" Text="Telefonoa:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:Label ID="lbLTelefonoaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMota" runat="server" Text="Mota:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblMotaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        &nbsp;&nbsp;</td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMarka" runat="server" Text="Marka:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblMarkaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblProbintziak" runat="server" Text="Probintziak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:Label ID="lblProbintziaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
&nbsp;&nbsp;
                        </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblHerriak" runat="server" Text="Herriak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblHerriaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
&nbsp;</td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblPostaKodea" runat="server" Text="Posta kodea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblPostaKodeaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style2" colspan="4">  
                        <asp:Label ID="lblDeskribapena" runat="server" Text="Deskribapena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:Label ID="lblDeskribapenaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtBDeskribapena" runat="server" Height="95px" TextMode="MultiLine" Width="780px" Enabled="False"></asp:TextBox>
                        <br />
                        _______________________________________________Ostatu_datuak____________________________________________<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblPertsonaTot" runat="server" Text="Pertsona totala:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblPertsonaTotErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style11" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="4">______________________________________________________________________________________________________<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" aria-orientation="horizontal" style="text-align: right">
                        <asp:ImageButton ID="btnAtzera" runat="server" Height="34px" ImageUrl="~/Argazkiak/atzeraBeltza.png" Width="43px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style11" colspan="2" aria-orientation="horizontal" style="text-align: left">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="BtnErreserbatu" runat="server" Text="Erreserbatu" />
                        </td>
                </tr>
            </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
            </div>
    </form>
</body>
</html>
