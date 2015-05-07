<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminFD.aspx.cs" Inherits="ONLINEQUIZ.PL.Admin.AdminFD" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 22px;
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
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
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
                    DELETE FACULTY</h2>
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
                <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%" style="text-align: right">
                ENTER SUBJECT CODE </td>
            <td width="25%">
                <asp:TextBox ID="txtsubcode" runat="server"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtsubcode_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtsubcode" 
                    WatermarkCssClass="watermark" WatermarkText="EURIT101">
                </cc1:TextBoxWatermarkExtender>
                (must be in capital letters)</td>
            <td width="25%">
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
            <td style="text-align: right">
                <asp:Button ID="btndelete" runat="server" onclick="btndelete_Click" 
                    Text="Delete" />
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
