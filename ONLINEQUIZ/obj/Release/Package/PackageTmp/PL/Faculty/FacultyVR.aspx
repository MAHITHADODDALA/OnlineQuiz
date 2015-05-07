<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="FacultyVR.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultyVR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                 <h2>
                     RESULT OF SUBJECT:<asp:Label ID="lblsubcode" runat="server" Text="Label"></asp:Label>&nbsp;</h2>
            </td>
            <td style="text-align: center">
                <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>&nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="50%" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True" PageSize="15" 
        onpageindexchanging="GridView1_PageIndexChanging"  
                    CellPadding="3" Width="300px" BackColor="#DEBA84" BorderColor="#DEBA84" 
                    BorderStyle="None" BorderWidth="1px" CellSpacing="2" Height="475px" 
                    >
                    <Columns >
                      

                        <asp:BoundField DataField="id" HeaderText="Student ID"  
                            HeaderStyle-Wrap="False"  >
<HeaderStyle Wrap="False"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="sname" HeaderText="Student Name" 
                            HeaderStyle-Wrap="False"  >
<HeaderStyle Wrap="False"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="sec" HeaderText="Section" HeaderStyle-Wrap="False" >
<HeaderStyle Wrap="False"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="marks" HeaderText="Marks" HeaderStyle-Wrap="False" >
<HeaderStyle Wrap="False"></HeaderStyle>
                        </asp:BoundField>
                    </Columns>
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
        </tr>
        <tr>
            <td bgcolor="Black" height="19">
                &nbsp;</td>
            <td bgcolor="Black" height="19">
                &nbsp;</td>
            <td bgcolor="Black" height="19">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
