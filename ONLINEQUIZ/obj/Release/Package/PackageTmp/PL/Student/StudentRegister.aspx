<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="ONLINEQUIZ.SD.Register" %>

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
<body background="../../IMAGES/Presentation1.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td colspan="4" height="19" width="100%" bgcolor="Black">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400" colspan="2" style="width: 800px; text-align: center">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400" colspan="2" style="width: 800px; text-align: center">
                    <h1>
                        STUDENT REGISTER</h1>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400" colspan="2" style="width: 800px; text-align: center">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400" colspan="2" style="width: 800px; text-align: center">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                        Text="User Already Registered"></asp:Label>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400" colspan="2" style="width: 800px; text-align: center">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="style2" width="400">
                    STUDENT NAME</td>
                <td width="400">
                    <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtsname_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtsname" 
                        WatermarkCssClass="watermark" WatermarkText="Billgates">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="rfvsname" runat="server" 
                        ControlToValidate="txtsname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td class="style2" width="400">
                    STUDENT ID</td>
                <td width="400">
                    <asp:TextBox ID="txtsid" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtsid_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtsid" 
                        WatermarkCssClass="watermark" WatermarkText="1210708199">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="rfvsid" runat="server" 
                        ControlToValidate="txtsid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td class="style2" width="400">
                    RE ENTER STUDENT ID</td>
                <td width="400">
                    <asp:TextBox ID="txtrsid" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtrsid_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtrsid" 
                        WatermarkCssClass="watermark" WatermarkText="1210708199">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:CompareValidator ID="cvrsid" runat="server" ControlToCompare="txtsid" 
                        ControlToValidate="txtrsid" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td class="style2" width="400">
                    ENTER&nbsp; SECTION</td>
                <td width="400">
                    <asp:TextBox ID="txtsec" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtsec_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtsec" 
                        WatermarkCssClass="watermark" WatermarkText="c1 ">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtsec" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td class="style2" width="400">
                    PASSWORD</td>
                <td width="400">
                    <asp:TextBox ID="txtspwd" runat="server" TextMode="Password"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtspwd_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtspwd" 
                        WatermarkCssClass="watermark" WatermarkText="***********">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="rfvspwd" runat="server" 
                        ControlToValidate="txtspwd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td class="style2" width="400">
                    RE ENTER PASSWORD</td>
                <td width="400">
                    <asp:TextBox ID="txtsrpwd" runat="server" TextMode="Password"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtsrpwd_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtsrpwd" 
                        WatermarkCssClass="watermark" WatermarkText="***********">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:CompareValidator ID="cvsrpwd" runat="server" ControlToCompare="txtspwd" 
                        ControlToValidate="txtsrpwd" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td class="style2" width="400">
                    E-MAIL</td>
                <td width="400">
                    <asp:TextBox ID="txtsemail" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtsemail_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtsemail" 
                        WatermarkCssClass="watermark" WatermarkText="abcd@xyx.com">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtsemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtsemail" ErrorMessage="*" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td class="style2" width="400">
                    PHONE</td>
                <td width="400">
                    <asp:TextBox ID="txtsphone" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtsphone_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtsphone" 
                        WatermarkCssClass="watermark" WatermarkText="9849112200">
                    </cc1:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtsphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td style="text-align: right" width="400">
                    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                        Text="SUBMIT" />
                    <cc1:ConfirmButtonExtender ID="btnsubmit_ConfirmButtonExtender" runat="server" 
                        ConfirmText="Are you sure ?" Enabled="True" TargetControlID="btnsubmit">
                    </cc1:ConfirmButtonExtender>
                </td>
                <td width="400">
                    <asp:Button ID="btnreset" runat="server" onclick="btnreset_Click" 
                        Text="RESET" />
                </td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="200">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="200">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" height="19" width="100%" bgcolor="Black">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
