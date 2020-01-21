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
            width: 1029px;
            right: 294px;
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
            height: 40px;
            margin-left: 200px;
            width: 403px;
        }
        .auto-style15 {
            width: 260px;
            height: 42px;
            margin-left: 40px;
        }
        .auto-style16 {
            height: 40px;
            margin-left: 200px;
        }
        </style>
</head>
<body style ="        background-image: url(Argazkiak/03_ErreserbatuOstatua.jpg);
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center center;
        background-size: cover;
">
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
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        <asp:Label ID="lblErreserbaOnartu" runat="server" ForeColor="White" Height="36px" style="font-size: xx-large; font-weight: 700; margin-bottom: 0px;" Text="Erreserba onartu:" Width="283px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        _________________________________________________________Bezero_Datuak___________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3" style="text-align: center">  
                        <asp:Label ID="lblIzenaBez" runat="server" Text="Bezero izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblBezeroIzena" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style2" colspan="3" style="text-align: center">  
                        <asp:Label ID="lblEmailBez" runat="server" Text="Bezero email:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:Label ID="lblEmailBezeroa" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3" style="text-align: center">  
                        &nbsp;
                        <asp:Label ID="lblNanBez" runat="server" Text="Bezero nan:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblBezeroNan" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style2" colspan="3" style="text-align: center">  
                        <asp:Label ID="lblPertsonaTot" runat="server" Text="Pertsona totala:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblPertsonaTotErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="6" style="text-align: center">  
                        <asp:Label ID="lblPrezioa" runat="server" Text="Prezioa:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblPrezioaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="6" style="text-align: center">  
                        ________________________________________________________Ostatu_datuak_____________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="6" style="text-align: center">
                        <asp:Label ID="lblHotela" runat="server" Text="Izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblOstatuIzena" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="lblProbintziak" runat="server" Text="Probintziak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblProbintziaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style13" colspan="4" style="text-align: center">
                        &nbsp;<asp:Label ID="lblHerriak" runat="server" Text="Herriak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblHerriaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    <td class="auto-style11">
                        &nbsp;<asp:Label ID="lblPostaKodea" runat="server" Text="Posta kodea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblPostaKodeaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblHelbidea" runat="server" Text="Helbidea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblHelbideaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    <td class="auto-style11" colspan="2" style="text-align: center">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblEmailErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblTelefonoa" runat="server" Text="Telefonoa:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lbLTelefonoaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMota" runat="server" Text="Mota:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblMotaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style11" colspan="2" style="text-align: center">
                        <asp:Label ID="lblMarka" runat="server" Text="Marka:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblMarkaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style11" colspan="2">
                        &nbsp;</td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="3" style="text-align: center">
                        &nbsp;</td>
                    <td class="auto-style11" colspan="3" style="text-align: center">
                        &nbsp;</td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="6" style="text-align: center">________________________________________________________________________________________________________________________<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="3" aria-orientation="horizontal" style="text-align: right">
                        <asp:ImageButton ID="btnAtzera" runat="server" Height="34px" ImageUrl="~/Argazkiak/03_erreserbatuEz.png" Width="43px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style11" colspan="3" aria-orientation="horizontal" style="text-align: left">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:ImageButton ID="btnAtzera0" runat="server" Height="34px" ImageUrl="~/Argazkiak/03_erreserbatuBai.png" Width="43px" />
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
