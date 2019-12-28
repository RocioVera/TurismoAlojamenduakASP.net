<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="02_zerEgin.aspx.vb" Inherits="UsuAdminASP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 18%;
            left: 38%;
            height: 348px;
            width: 274px;
            right: 410px;
        }
        </style>
</head>
<body style ="background-image:url(Argazkiak/02_zerEgin.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">
    <form id="form1" runat="server">
        <div>
            <div id="loginguztia"  style="align-content: center center; text-align: center; margin: auto;
                    background-color: #9ABECA;" class="auto-style2" >
                &nbsp;<br />
                <asp:ImageButton ID="btnGehituOstatua" runat="server" Height="119px" ImageUrl="~/Argazkiak/02_DataBaseGehitu.png" Width="130px" />
                <br />
                <asp:Label ID="lblGehitu" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="16px" ForeColor="#000066" Text="Gehitu ostatu bat" Width="277px"></asp:Label>
                <br />
                <br />
                    <asp:ImageButton ID="btnBilatuOstatua" runat="server" Height="134px" ImageUrl="~/Argazkiak/02_Bilatu.png" Width="138px" />
                    <asp:Label ID="lblBilatu" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="16px" ForeColor="#000066" Text="Bilatu" Width="278px"></asp:Label>
                <br />
   
           </div>
       </div>
    </form>
</body>
</html>
