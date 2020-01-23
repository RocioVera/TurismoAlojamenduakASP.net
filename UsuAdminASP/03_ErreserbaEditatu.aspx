<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="03_ErreserbaEditatu.aspx.vb" Inherits="UsuAdminASP.WebForm9" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
         height: 16px;
            margin-left: 200px;
            width: 403px;
        }
        .auto-style3 {
           height: 42px;
           margin-left: 40px;
        }

        .auto-style8 {
            position: absolute;
            top: 6%;
            left: 18%;
            height: 745px;
            width: 964px;
            right: 154px;
        }
        .auto-style16 {
            height: 40px;
            margin-left: 200px;
        }
        .auto-style17 {
            margin-right: 1px;
        }
        .auto-style18 {
            height: 42px;
            margin-left: 40px;
            width: 102px;
        }
        .auto-style19 {
            width: 102px;
        }
        </style>
</head>
<body style ="background-image: url(Argazkiak/03_ErreserbatuOstatua.jpg);
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
                        <asp:Label ID="lblErreserbaOnartu" runat="server" ForeColor="White" Height="36px" style="font-size: xx-large; font-weight: 700; margin-bottom: 0px;" Text="Erreserba datuak aldatu:" Width="947px" CssClass="auto-style17" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        _______________________________________________________________________________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        <asp:Label ID="lblBezeroDatuak" runat="server" Text="Bezero datuak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        _______________________________________________________________________________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">  
                        &nbsp;&nbsp;&nbsp;  
                        <asp:Label ID="lblIzenaBez" runat="server" Text="Bezero izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblBezeroIzena" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style3" colspan="3">  
                        <asp:Label ID="lblEmailBez" runat="server" Text="Bezero email:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:Label ID="lblEmailBezeroa" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">  
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNanBez" runat="server" Text="Bezero nan:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblBezeroNan" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style3" colspan="3">  
                        <asp:Label ID="lblPertsonaTot" runat="server" Text="Pertsona totala:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:DropDownList ID="ddlPertsonaKant" runat="server" Height="25px" Width="58px" AutoPostBack="True">
        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="6" style="text-align: center">  
                        <asp:Label ID="lblPrezioa" runat="server" Text="Prezioa:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblPrezioaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        _______________________________________________________________________________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        <asp:Label ID="lblOstatuDatuak" runat="server" Text="Ostatu datuak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        _______________________________________________________________________________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="6" style="text-align: center">
                        <asp:Label ID="lblHotela" runat="server" Text="Izena:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblOstatuIzena" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblProbintziak" runat="server" Text="Probintziak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblProbintziaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style3" colspan="4">
                        <asp:Label ID="lblHerriak" runat="server" Text="Herriak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblHerriaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    <td class="auto-style3">
                        &nbsp;<asp:Label ID="lblPostaKodea" runat="server" Text="Posta kodea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblPostaKodeaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style18" colspan="2">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblHelbidea" runat="server" Text="Helbidea:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblHelbideaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        <br />
                        </td>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblEmailErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="lblTelefonoa" runat="server" Text="Telefonoa:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lbLTelefonoaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                <tr>
                    <td class="auto-style18" colspan="2">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMota" runat="server" Text="Mota:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblMotaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="lblMarka" runat="server" Text="Marka:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        <asp:Label ID="lblMarkaErres" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13pt" ForeColor="Black"></asp:Label>
                        </td>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                    </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        _______________________________________________________________________________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        <asp:Label ID="lblOstatuDatuak0" runat="server" Text="Erreserba datuak:" Font-Bold="True" Font-Italic="True" Font-Size="15pt"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">  
                        _______________________________________________________________________________________________________________________</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">  
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDataHasiera" runat="server" Text="Hasiera data:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                              <asp:ScriptManager 
                                ID="ScriptManager1"
                                runat="server" >
                             </asp:ScriptManager>
                        &nbsp;<asp:TextBox ID="txtHasieraData" runat="server" Width="186px" Height="16px"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtHasieraData_CalendarExtender" runat="server" BehaviorID="txtHasieraData_CalendarExtender" TargetControlID="txtHasieraData"  PopupButtonID="imgBtnHasiera" PopupPosition="BottomLeft" Format="yyyy-MM-dd">
            </ajaxToolkit:CalendarExtender>
                    </td>
                    <td class="auto-style3" colspan="3">  
                        <asp:Label ID="lblDataAmaiera" runat="server" Text="Amaiera data:" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtAmaieraData" runat="server" Width="159px" Height="16px"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtAmaieraData_CalendarExtender" runat="server" BehaviorID="txtAmaieraData_CalendarExtender" TargetControlID="txtAmaieraData"   PopupButtonID="imgBtnAmaiera" PopupPosition="BottomLeft" Format="yyyy-MM-dd">
            </ajaxToolkit:CalendarExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="6" style="text-align: center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="2" aria-orientation="horizontal" style="text-align: center">
                        <asp:ImageButton ID="btnAtzera" runat="server" Height="47px" ImageUrl="~/Argazkiak/03_erreserbatuEz.png" Width="54px" />
                        </td>
                    <td class="auto-style11" colspan="2" aria-orientation="horizontal" style="text-align: center">
                        <asp:ImageButton ID="btnDelete" runat="server" Height="53px" ImageUrl="~/Argazkiak/papelera.png" Width="56px" />
                        </td>
                    <td class="auto-style11" colspan="2" aria-orientation="horizontal" style="text-align: center">
                        <asp:ImageButton ID="btnUpdate" runat="server" Height="53px" ImageUrl="~/Argazkiak/03_erreserbatuBai.png" Width="56px" />
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
