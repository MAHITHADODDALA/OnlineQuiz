<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="FacultyIEDQP.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultyIEDQP" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="50%" style="text-align: center">
                <h2>
                    ADD,EDIT ,DELETE&nbsp; QUESTION PAPER</h2>
            </td>
            <td width="25%">
                <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="grdContact" runat="server" AutoGenerateColumns="False" DataKeyNames="qno" 
    OnRowCancelingEdit="grdContact_RowCancelingEdit" 
    OnRowEditing="grdContact_RowEditing" OnRowUpdating="grdContact_RowUpdating" 
    ShowFooter="True" 
    OnRowCommand="grdContact_RowCommand" 
   OnRowDeleting="grdContact_RowDeleting"  AllowPaging="True" PageSize="10" 
        onpageindexchanging="grdContact_PageIndexChanging" 
  style="margin-right: 2px; margin-top: 0px;" BackColor="#DEBA84" BorderColor="#DEBA84" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
              >
  <Columns> 
      <asp:TemplateField HeaderText="Qno"  HeaderStyle-HorizontalAlign="Left"> 
                <EditItemTemplate> 
                    <asp:Label ID="lblqno" runat="server" Width="25px" Text='<%# Bind("qno") %>'></asp:Label>
                </EditItemTemplate> 
                <FooterTemplate> 
                <asp:TextBox ID="txtNewqno" runat="server" Height="40px"  Width="25px" ></asp:TextBox> 
                 </FooterTemplate> 
                <ItemTemplate> 
                 <asp:Label ID="lblqno" runat="server"  Width="25px"  Text='<%# Bind("qno") %>'></asp:Label> 
                </ItemTemplate> 
  
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
  
</asp:TemplateField>
<asp:TemplateField HeaderText="Question" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txtq" runat="server" Text='<%# Bind("question") %>'></asp:TextBox> 
   </EditItemTemplate> 
   <FooterTemplate> 
    <asp:TextBox ID="txtNewq" runat="server" Height="40px" TextMode="MultiLine" 
           Width="150px" ></asp:TextBox> 
   </FooterTemplate> 
   <ItemTemplate> 
    <asp:Label ID="lblq" runat="server" Text='<%# Bind("question") %>'></asp:Label> 
   </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="Option1" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txto1" runat="server" Text='<%# Bind("option1") %>'></asp:TextBox> 
   </EditItemTemplate> 
   <FooterTemplate> 
    <asp:TextBox ID="txtNewo1" runat="server" Height="40px" TextMode="MultiLine"  Width="150px" ></asp:TextBox> 
   </FooterTemplate> 
   <ItemTemplate> 
    <asp:Label ID="lblo1" runat="server" Text='<%# Bind("option1") %>'></asp:Label> 
   </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="Option2" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txto2" runat="server" Text='<%# Bind("option2") %>'></asp:TextBox> 
   </EditItemTemplate> 
   <FooterTemplate> 
    <asp:TextBox ID="txtNewo2" runat="server" Height="40px" TextMode="MultiLine"  Width="150px" ></asp:TextBox> 
   </FooterTemplate> 
   <ItemTemplate> 
    <asp:Label ID="lblo2" runat="server" Text='<%# Bind("option2") %>'></asp:Label> 
   </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="Option3" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txto3" runat="server" Text='<%# Bind("option3") %>'></asp:TextBox> 
   </EditItemTemplate> 
   <FooterTemplate> 
    <asp:TextBox ID="txtNewo3" runat="server" Height="40px" style="margin-right: 4px" TextMode="MultiLine" 
           Width="150px" ></asp:TextBox> 
   </FooterTemplate> 
   <ItemTemplate> 
    <asp:Label ID="lblo3" runat="server" Text='<%# Bind("option3") %>'></asp:Label> 
   </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="Option4" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txto4" runat="server" Text='<%# Bind("option4") %>'></asp:TextBox> 
   </EditItemTemplate> 
   <FooterTemplate> 
    <asp:TextBox ID="txtNewo4" runat="server" Height="40px" TextMode="MultiLine"  Width="150px" ></asp:TextBox> 
   </FooterTemplate> 
   <ItemTemplate> 
    <asp:Label ID="lblo4" runat="server" Text='<%# Bind("option4") %>'></asp:Label> 
   </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="Answer" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txtans" runat="server" Text='<%# Bind("answer") %>'></asp:TextBox> 
   </EditItemTemplate> 
   <FooterTemplate> 
    <asp:TextBox ID="txtNewans" runat="server" Height="40px" TextMode="MultiLine"  Width="150px" ></asp:TextBox> 
   </FooterTemplate> 
   <ItemTemplate> 
    <asp:Label ID="lblans" runat="server" Text='<%# Bind("answer") %>'></asp:Label> 
   </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
</asp:TemplateField>
 <asp:TemplateField HeaderText="Edit" ShowHeader="False" HeaderStyle-HorizontalAlign="Left"> 
                <EditItemTemplate> 
                    <asp:LinkButton ID="lbkUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton> 
                    <asp:LinkButton ID="lnkCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton> 
                </EditItemTemplate> 
                <FooterTemplate> 
                    <asp:LinkButton ID="lnkAdd" runat="server" CausesValidation="False" CommandName="Insert" Text="Insert"></asp:LinkButton> 
                </FooterTemplate> 
                <ItemTemplate> 
                    <asp:LinkButton ID="lnkEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton> 
                </ItemTemplate> 

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
            </asp:TemplateField> 

            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" /> 
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
            <td bgcolor="Black">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
