<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="02_zerEgin.aspx.vb" Inherits="UsuAdminASP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 200px;
        }
        .auto-style2 {
            position: absolute;
            top: 10%;
            left: 18%;
            height: 540px;
            width: 577px;
            right: 202px;
        }
        .auto-style4 {
            width: 553px;
        }
    </style>
</head>
<body style ="background-image:url(Argazkiak/02_zerEgin.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">
    <form id="form1" runat="server">
        <div>
            <div id="loginguztia"  style="align-content: center center; text-align: center center; margin: auto;
                    background-color: #9ABECA;" class="auto-style2" >
                <p style="align-content: center">  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Label ID="LblTitulua" runat="server"  Text="Datu kudeaketa" Width="334px" style="font-weight: 700; text-decoration: underline; color: #000000; font-size: xx-large; " Font-Bold="False" Font-Italic="False" Font-Size="20pt" Font-Strikeout="False" Font-Underline="True" Font-Names="Arial Black"></asp:Label>
                </p>
                <p class="auto-style1">
                &nbsp;<asp:ImageButton ID="btnGehituOstatua" runat="server" Height="134px" ImageUrl="~/Argazkiak/02_DataBaseGehitu.png" Width="145px" />
                &nbsp;&nbsp;&nbsp; </p>
                <p style="margin-center: 120px; font-size: 18px; font-style: oblique; font-weight: bold; color: #000000; text-align: center;" class="auto-style4">
                &nbsp; Gehitu ostatu bat </p>
                <p class="auto-style1"> &nbsp;
                    <asp:ImageButton ID="btnBilatuOstatua" runat="server" Height="134px" ImageUrl="~/Argazkiak/02_Bilatu.png" Width="138px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </p>
                <p style="margin-center: 120px; font-size: 18px; font-style: oblique; font-weight: bold; color: #000000; text-align: center;" class="auto-style4">
                    &nbsp; Bilatu&nbsp; </p>
                <p>______________________________________________________________________</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEgileak" runat="server" Text="Egileak: Aintzane Gavilán, Diego Gomez, Asier Iglesias, Gorka Reguero eta Rocio Vera" Font-Size="11pt"></asp:Label>
                   &nbsp;
                </p>
           </div>
       </div>
       <p class="auto-style1"> Gehitu ostatu bat&nbsp;&nbsp;&nbsp;</p>
    </form>
</body>
</html>
