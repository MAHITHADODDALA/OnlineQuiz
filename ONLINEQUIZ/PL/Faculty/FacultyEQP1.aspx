<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="FacultyEQP1.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultyEQP" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            text-align: right;
        }
        .style3
        {
            height: 17px;
        }
    </style>
    <link href="http://localhost:3270/CSS/Watermark.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Panel ID="panelgrid" runat="server">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" 
                                >
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="qno" HeaderText="Q.No." />
                                    <asp:BoundField DataField="question" HeaderText="Question" />
                                    <asp:BoundField DataField="option1" HeaderText="Option1" />
                                    <asp:BoundField DataField="option2" HeaderText="Option2" />
                                    <asp:BoundField DataField="option3" HeaderText="Option3" />
                                    <asp:BoundField DataField="option4" HeaderText="Option4" />
                                    <asp:BoundField DataField="answer" HeaderText="Answer" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("qno") %>' 
                                                CommandName="edt" Text="Edit" onclick="Button1_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </asp:Panel>
                          <cc1:CollapsiblePanelExtender ID="Panelgrid_CollapsiblePanelExtender" 
                                runat="server" CollapseControlID="Button2" Enabled="True" 
                                ExpandControlID="Button1" TargetControlID="panelgrid">
                            </cc1:CollapsiblePanelExtender>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
           
                             
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="panelq" runat="server" CssClass="Panel">
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td class="style3">
                                        </td>
                                    <td class="style3">
                                        </td>
                                    <td class="style3">
                                        </td>
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
                                    <td class="style2" width="25%">
                                        Q.No.</td>
                                    <td width="25%">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="38px"></asp:TextBox>
                                    </td>
                                    <td width="25%">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Question</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Option1</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Option2</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Option3</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Option4</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Answer</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Height="27px" Width="177px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2" colspan="3">
                                        <asp:Button ID="btnupd" runat="server" onclick="btnupd_Click" Text="Update" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btncancel" runat="server" Text="Cancel" />
                                        <asp:Button ID="btnreset" runat="server" onclick="btnreset_Click" 
                                            Text="Reset" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="Panelq_CollapsiblePanelExtender" 
                                runat="server" CollapseControlID="Button1" Collapsed="True" Enabled="False" 
                                ExpandControlID="Button2" TargetControlID="panelq">
                            </cc1:CollapsiblePanelExtender>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                        &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Black">
                &nbsp;</td>
            <td bgcolor="Black">
                &nbsp;</td>
            <td bgcolor="Black">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
