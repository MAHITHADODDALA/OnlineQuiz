<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentExamPage.aspx.cs" Inherits="ONLINEQUIZ.PL.Student.StudentExamPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .style2
        {
            font-size: large;
        }
        .style3
        {
            font-size: xx-large;
        }
        .style4
        {
            text-align: left;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="style1">
            <tr>
                <td colspan="4" width="1280" bgcolor="White" class="style4">
                    <asp:Image ID="Image1" runat="server" Height="144px" 
                        ImageUrl="~/IMAGES/database.jpg" Width="173px" />
                    <span class="style3"><strong style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    ONLINE EXAMINATION</strong></span></td>
            </tr>
            <tr>
                <td width="427">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    </td>
                <td width="427" align="center">
                    &nbsp;</td>
                <td width="427">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="427">
                 <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                     <ContentTemplate>
                         <asp:Label 
                                ID="Label6" runat="server" 
                                Text="Label" Visible="False"></asp:Label>
                     </ContentTemplate>
                   </asp:UpdatePanel></td>
                <td width="427" align="center">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
                <td width="427">
                                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" width="1280" class="style2">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:Timer ID="Timer2" runat="server" Interval="1" ontick="Timer2_Tick" 
                                Enabled="False">
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="4" width="1280" class="style2">
                    <asp:Label ID="Label7" 
                        runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="427">
                    
                </td>
                <td width="427">
                                        <asp:Button ID="btnstartexam" runat="server" onclick="btnstartexam_Click" 
                                            Text="Start Exam" />
                                    </td>
                <td width="427">
                    <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="1" 
                        Enabled="False">
                    </asp:Timer>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="width: 854px">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <table class="style1">
                                <tr>
                                    <td width="500">
                                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td width="500" style="text-align: left">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="r1" 
                                            Visible="False" />
                                    </td>
                                    <td>
                                        
                                            &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="r1" 
                                            Visible="False" />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Font-Size="XX-Small" Height="1px" 
                                            Text="." Width="0.0000005px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="r1" 
                                            Visible="False" />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Font-Size="XX-Small" Height="16px" 
                                            Text="." Width="0.0000005px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="r1" 
                                            Visible="False" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Button ID="btnskip" runat="server" onclick="btnskip_Click" Text="Skip" 
                                            Visible="False" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnnext" runat="server" onclick="btnnext_Click" Text="Next" 
                                            Visible="False" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

</asp:Content>
