<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentBExam.aspx.cs" Inherits="ONLINEQUIZ.PL.Student.StudentBExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 248px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" style="width: 134%">
        <tr>
            <td class="style2">
                <img alt="" src="../../IMAGES/stopwatch.jpg" 
                    style="height: 394px; width: 459px" /></td>
            <td class="style3" width="900" align="left">
                 <br />
                 <br />
                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                     ForeColor="#CC3300" Text="INSTRUCTIONS &lt;br/&gt;&lt;br/&gt;"></asp:Label>
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                     ForeColor="Blue" 
                     
                     Text="1 . Do Not Refresh / Reload &amp;nbsp;the Page While Answering!&lt;br /&gt;&lt;br/&gt;"></asp:Label>
                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                     ForeColor="Blue" Text="2 .Timer is provided&lt;br/&gt;&lt;br/&gt;"></asp:Label>
                 <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                     ForeColor="Blue" 
                     
                     Text="3 .Test Module Works better with Internet Explorer!...&lt;br/&gt;"></asp:Label>
                 <br />
                 <asp:Label ID="lblerrds" runat="server" Font-Bold="True" Font-Size="Medium" 
                     ForeColor="Blue" Text="Contact" Visible="False"></asp:Label>
                 <br />
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                     <ContentTemplate>
                         <asp:Button ID="btntaketest" runat="server" Font-Bold="True" 
                             Text="Take Test &gt;&gt;" onclick="btntaketest_Click" />
                     </ContentTemplate>
                 </asp:UpdatePanel>
                 <br />
                 <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                     <ProgressTemplate>
<img alt="Loading" class="style4" longdesc="Loading" 
    src="../../IMAGES/loading.gif" />
                         <br />
                         <br />
                     </ProgressTemplate>
                 </asp:UpdateProgress>
                 <br />
                 <br />
                 <br />
                 <br />
            </td>
        </tr>
    </table>
</asp:Content>
