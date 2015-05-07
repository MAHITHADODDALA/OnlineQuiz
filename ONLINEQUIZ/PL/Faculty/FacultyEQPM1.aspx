<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyEQPM1.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultyEQPM" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
        .style4
        {
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        function ShowMyModalPopup(qno) 
        {
            var modal = $find('ModalPopupExtender1');
            modal.show();
                      
        }

        function HideModalPopup() {
            var modal = $find('ModalPopupExtender1');
            modal.hide();
        }

        function fnClickUpdate(sender, e) {
            __doPostBack(sender, e);
        }

    </script>
</head>
<body background="../../IMAGES/Presentation2.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td colspan="3" height="36" width="100%">
              
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    <h2 class="style4">
                        EDIT QUESTION PAPER 
                    </h2>
                </td>
                <td width="33.3%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%" style="text-align: center">
                    <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    &nbsp;</td>
                <td width="33.3%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" 
                        DataKeyNames="qno"  
                               OnRowDataBound="GridView1_RowDataBound" AllowPaging="True" 
                        AllowSorting="True" 
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
                                    <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                                        <ItemTemplate>

                                           
                                            <asp:HyperLink ID="HyperLink1" runat="server" CommandName="Edit" Text="Edit"></asp:HyperLink>
                                       
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
                            </asp:GridView></td>
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
            </tr>
            <tr>
           
                <td colspan="3" style="text-align: left">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                     <ContentTemplate>
                         <asp:Panel ID="Panel1" runat="server" BackColor="LightGray" Height="500px" 
                             Width="75%"  style="display:none">
                             <table cellpadding="0" cellspacing="0" class="style1">
                                 <tr>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                     <td width="11.5%">
                                         &nbsp;</td>
                                 </tr>
                             
                             
                                 <tr>
                                     <td class="style2">
                                         Q.No.</td>
                                     <td>
                                         <asp:TextBox ID="txtqno" runat="server"></asp:TextBox>
                                     </td>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="style2">
                                         Question</td>
                                     <td>
                                         <asp:TextBox ID="txtq" runat="server" Height="84px" TextMode="MultiLine" 
                                             Width="181px"></asp:TextBox>
                                     </td>
                                     <td style="text-align: center">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="style2">
                                         Option1</td>
                                     <td>
                                         <asp:TextBox ID="txto1" runat="server" Height="36px" TextMode="MultiLine" 
                                             Width="181px"></asp:TextBox>
                                     </td>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="style2">
                                         Option2</td>
                                     <td>
                                         <asp:TextBox ID="txto2" runat="server" Height="31px" TextMode="MultiLine" 
                                             Width="181px"></asp:TextBox>
                                     </td>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="style2">
                                         Option3</td>
                                     <td>
                                         <asp:TextBox ID="txto3" runat="server" Height="36px" TextMode="MultiLine" 
                                             Width="181px"></asp:TextBox>
                                     </td>
                                     <td style="text-align: left">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="style2">
                                         Option4</td>
                                     <td>
                                         <asp:TextBox ID="txto4" runat="server" Height="36px" TextMode="MultiLine" 
                                             Width="181px"></asp:TextBox>
                                     </td>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="style2">
                                         Answer</td>
                                     <td>
                                         <asp:TextBox ID="txtans" runat="server" Height="36px" TextMode="MultiLine" 
                                             Width="181px"></asp:TextBox>
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
                                         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                                         <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
                                         <asp:Button ID="Button3" runat="server" Text="Cancel" />
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
                             </table>
                         </asp:Panel>
                         <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                             BackgroundCssClass="modalBackground" CancelControlID="Button3" 
                             OnCancelScript="HideModalPopup()" PopupControlID="Panel1" 
                             TargetControlID="Panel1" >

                         </cc1:ModalPopupExtender>
                     </ContentTemplate>
                </asp:UpdatePanel>

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
                <td bgcolor="Black">
                    &nbsp;</td>
                <td bgcolor="Black">
                    &nbsp;</td>
                <td bgcolor="Black">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
