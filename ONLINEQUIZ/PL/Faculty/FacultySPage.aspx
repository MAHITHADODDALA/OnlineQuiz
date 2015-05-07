<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="FacultySPage.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultySPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style2
    {
        height: 21px;
    }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            height: 21px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td width="25%" colspan="3">
              
                    &nbsp;</td>
        </tr>
        <tr>
            <td width="33.3%">
                &nbsp;</td>
            <td width="33.3%">
                &nbsp;</td>
            <td width="33.3%" align="right">
                <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">SignOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">Change Password</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">Add Questions</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">Edit Question Paper</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">View Question Paper</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">View Result</asp:LinkButton>
                </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="lnkbtndelsr" runat="server" onclick="lnkbtndelsr_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">Delete Student Result</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="lnkbtnfeset" runat="server" onclick="lnkbtnfeset_Click" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Black">Set No of Questions for Exam</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="lnkbtnpqp" runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="Black" onclick="lnkbtnpqp_Click">Print Question Paper</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td class="style3">
                <asp:LinkButton ID="lnkbtnpr" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Black" onclick="lnkbtnpr_Click">Print Result</asp:LinkButton>
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
