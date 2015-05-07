<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminESetWT.aspx.cs" Inherits="ONLINEQUIZ.PL.Admin.AdminESetWT" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            text-align: right;
        }
        .style3
        {
            width: 25%;
            text-align: left;
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
            <td class="style3">
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
                <h2>
                TODAYS EXAM</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                ENTER SUBJECT CODE</td>
            <td class="style3">
                <asp:TextBox ID="txtsubcode" runat="server"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtsubcode_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtsubcode" 
                    WatermarkCssClass="watermark" WatermarkText="EURIT101">
                </asp:TextBoxWatermarkExtender>
                (must be in capital letters)</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                ENTER&nbsp; EXAM TIME IN MINUTES
            </td>
            <td class="style3">
                <asp:TextBox ID="txtexamtime" runat="server"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtexamtime_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtexamtime" 
                    WatermarkCssClass="watermark" WatermarkText="15">
                </asp:TextBoxWatermarkExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lblexamset" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="btnsetexam" runat="server" Text="Set Exam" 
                    onclick="btnsetexam_Click" />
            </td>
            <td class="style3">
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td width="12.5%">
                <asp:Button ID="btnreset" runat="server" onclick="btnreset_Click" 
                    Text="Reset" />
                        </td>
                        <td width="12.5%">
                            <asp:Button ID="btndel" runat="server" onclick="btndel_Click" Text="Delete" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
