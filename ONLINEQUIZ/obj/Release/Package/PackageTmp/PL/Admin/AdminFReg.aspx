<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminFReg.aspx.cs" Inherits="ONLINEQUIZ.PL.Admin.AdminFReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            text-align: right;
        }
    </style>
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
                &nbsp;</td>
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
