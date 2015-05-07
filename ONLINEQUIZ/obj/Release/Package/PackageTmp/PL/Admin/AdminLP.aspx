<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLP.aspx.cs" Inherits="ONLINEQUIZ.PL.Admin.AdminLP" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
    </style>
    <link href="../../CSS/Watermark.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <h2>
                        ADMIN LOGIN&nbsp;</h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="25%">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="style2" width="25%">
                Enter User Name</td>
                <td width="25%">
                    <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtuname_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtuname" 
                        WatermarkCssClass="watermark" WatermarkText="Billgates">
                    </cc1:TextBoxWatermarkExtender>
                </td>
                <td width="25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                Enter Password</td>
                <td>
                    <asp:TextBox ID="txtapwd" runat="server" TextMode="Password"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtapwd_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtapwd" 
                        WatermarkCssClass="watermark" WatermarkText="*************">
                    </cc1:TextBoxWatermarkExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                        Text="Submit" />
                </td>
                <td>
                    <asp:Button ID="btnreset" runat="server" onclick="btnreset_Click" 
                        Text="Reset" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
