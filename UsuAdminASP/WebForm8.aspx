<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm8.aspx.vb" Inherits="UsuAdminASP.WebForm8" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
</head>
        <body>  
            <form id="form2" runat="server">  
                <div> <b> Control with PopupButtonID, CssClass,Format:</b>
<asp:TextBox runat="server" ID="txtDate2"  Text="11/01/2006" style="height: 22px" />
                    <ajaxToolkit:CalendarExtender ID="txtDate2_CalendarExtender" runat="server" BehaviorID="txtDate2_CalendarExtender" TargetControlID="txtDate2" PopupButtonID="btnDate2" PopupPosition="BottomLeft" Format="dd/MMM/yyyy">
                    </ajaxToolkit:CalendarExtender>
<asp:Image runat="server" ID="btnDate2"

            AlternateText="cal2"

            ImageUrl="~/images/calendaricon.jpg" />
                </div>  
                <ajaxToolkit:LineChart ID="LineChart1" runat="server">
                </ajaxToolkit:LineChart>
            </form>  
        </body>  
  
    </html>  
