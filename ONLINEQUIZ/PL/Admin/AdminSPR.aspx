<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSPR.aspx.cs" Inherits="ONLINEQUIZ.PL.Admin.AdminSPR" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Watermark.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td width="25%">
            &nbsp;</td>
        <td colspan="2" style="width: 50%" width="25%">
            <h2 style="text-align: center">
               STUDENT PASSWORD RECOVERY</h2>
        </td>
        <td width="25%">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="25%">
            &nbsp;</td>
        <td width="25%">
            &nbsp;</td>
        <td width="25%">
            &nbsp;</td>
        <td width="25%">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="text-align: right">
            ENTER STUDENT ID</td>
        <td>
            <asp:TextBox ID="txtstuid" runat="server"></asp:TextBox>
            <cc1:TextBoxWatermarkExtender ID="txtstuid_TextBoxWatermarkExtender" 
                runat="server" Enabled="True" TargetControlID="txtstuid" 
                WatermarkCssClass="watermark" WatermarkText="1210708199">
            </cc1:TextBoxWatermarkExtender>
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
            <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                Text="Submit" />
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
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
