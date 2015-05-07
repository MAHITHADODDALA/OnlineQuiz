<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="FacultyCP.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultyChangepwd" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            text-align: right;
        }
    </style>
    <link href="../../CSS/Watermark.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td width="100%" colspan="4" height="35" style="width: 50%">
              
                    &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="50%" colspan="2">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td style="text-align: center" colspan="2">
              <h1>CHANGE NAME &amp; PASSWORD</h1>  </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lnksout" runat="server" onclick="lnksout_Click">SignOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" width="25%">
                Faculty Name</td>
            <td width="25%">
                <asp:TextBox ID="txtfname" runat="server" ></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtfname_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtfname" 
                    WatermarkCssClass="watermark" WatermarkText="Billgates">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                Enter New Password</td>
            <td>
                <asp:TextBox ID="txtfpwd" runat="server" TextMode="Password"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtfpwd_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtfpwd" 
                    WatermarkCssClass="watermark" WatermarkText="**********">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                Re-Enter New Password</td>
            <td>
                <asp:TextBox ID="txtfnpwd" runat="server" TextMode="Password"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtfnpwd_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtfnpwd" 
                    WatermarkCssClass="watermark" WatermarkText="**********">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;Subject Code</td>
            <td>
                <asp:TextBox ID="txtfsubcode" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnfcpsubmit" runat="server" onclick="btnfcpsubmit_Click" 
                    Text="Submit" />
            </td>
            <td align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnfcpreset" runat="server" onclick="btnfcpreset_Click" 
                    Text="Reset" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td align="left" height="157">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Black" height="19">
                &nbsp;</td>
            <td colspan="2" bgcolor="Black" height="19">
                &nbsp;</td>
            <td bgcolor="Black" height="19">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
