<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentResultPage.aspx.cs" Inherits="ONLINEQUIZ.PL.Student.StudentResultPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table >
            <tr>
                <td width="300">
                    &nbsp;</td>
                <td width="400">
                    &nbsp;</td>
                <td width="300">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Sign Out</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    <h2>
                    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#FF0066"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    <h2>
                    <asp:Label ID="Label8" runat="server" ForeColor="#FF0066" Text="Label"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                   <h1>
                       &nbsp;</h1> </td>
                <td align="center">
                    <h2>
                    <asp:Label ID="Label9" runat="server" ForeColor="#FF0066" Text="Label"></asp:Label>
                    </h2>
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
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                   <h1 align="center">Total=<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                    </h1> 
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center" style="text-align: left">
                       <asp:GridView ID="GridView1" runat="server" 
                           onpageindexchanging="GridView1_PageIndexChanging" AllowPaging="True" 
                           BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                           CellPadding="3" CellSpacing="2" PageSize="5" Width="742px"  >
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
            <tr>
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
            </tr>
            <tr>
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
                <td style="text-align: center">
                    <asp:LinkButton ID="lnkbtncontact" runat="server" onclick="lnkbtncontact_Click">Contact Us</asp:LinkButton>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
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
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>
