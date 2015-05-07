<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminFReg.aspx.cs" Inherits="ONLINEQUIZ.PL.Admin.AdminFReg" %>
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
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td colspan="2" style="text-align: center">
                <h3>
                    ADD NEW FACULTY(ONLY ONE FACULTY PER SUBJECT)</h3>
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
                <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                Enter Faculty Name</td>
            <td width="25%">
                <asp:TextBox ID="txtafname" runat="server"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtafname_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtafname" 
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
                <asp:TextBox ID="txtafpwd" runat="server" TextMode="Password"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtafpwd_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtafpwd" 
                    WatermarkCssClass="watermark" WatermarkText="*********">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                Enter Subject Code</td>
            <td>
                <asp:TextBox ID="txtafsubcode" runat="server"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtafsubcode_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtafsubcode" 
                    WatermarkCssClass="watermark" WatermarkText="EURIT101">
                </cc1:TextBoxWatermarkExtender>
                (must be in capital letters)</td>
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
                <asp:Button ID="btnafsubmit" runat="server" onclick="btnafsubmit_Click" 
                    Text="Add Faculty" />
            </td>
            <td>
                <asp:Button ID="btnreset" runat="server" onclick="btnreset_Click" 
                    Text="Reset" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
