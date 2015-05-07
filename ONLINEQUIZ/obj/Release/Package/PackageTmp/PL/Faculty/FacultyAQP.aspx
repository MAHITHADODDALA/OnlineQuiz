<%@ Page Title="" Language="C#" MasterPageFile="~/PL/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="FacultyAQP.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultyAddQuestion" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            text-align: right;
        }
    </style>
    <link href="../../CSS/Watermark.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td colspan="4" height="35" width="100%" style="text-align: center">
              
                    <h2>
                        SUBJECT CODE:<asp:Label ID="lblsubcode" runat="server" Text="Label"></asp:Label>
                    </h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                Enter Question No</td>
            <td width="30%">
                <asp:TextBox ID="txtqno" runat="server"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtqno_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtqno" 
                    WatermarkCssClass="watermark" WatermarkText="1-10">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td width="20%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" valign="middle" width="25%">
                Enter Question</td>
            <td width="25%">
                <asp:TextBox ID="txtq" runat="server" Rows="5" TextMode="MultiLine" 
                    Width="210px"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtq_TextBoxWatermarkExtender" runat="server" 
                    Enabled="True" TargetControlID="txtq" WatermarkCssClass="watermark" 
                    WatermarkText="India got  Independence on?">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                Option1</td>
            <td width="25%">
                <asp:TextBox ID="txto1" runat="server" Height="40px" TextMode="MultiLine" 
                    Width="210px" ></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txto1_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txto1" 
                    WatermarkCssClass="watermark" WatermarkText="1967">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                Option2</td>
            <td width="25%">
                <asp:TextBox ID="txto2" runat="server" Height="40px" TextMode="MultiLine" 
                    Width="210px"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txto2_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txto2" 
                    WatermarkCssClass="watermark" WatermarkText="1957">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                Option3</td>
            <td width="25%">
                <asp:TextBox ID="txto3" runat="server" Height="40px" TextMode="MultiLine" 
                    Width="210px"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txto3_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txto3" 
                    WatermarkCssClass="watermark" WatermarkText="1937">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                Option4</td>
            <td width="25%">
                <asp:TextBox ID="txto4" runat="server" Height="40px" TextMode="MultiLine" 
                    Width="210px"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txto4_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txto4" 
                    WatermarkCssClass="watermark" WatermarkText="1947">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                Answer</td>
            <td width="25%">
                <asp:TextBox ID="txtans" runat="server" Height="25px" Width="210px"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="txtans_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="txtans" 
                    WatermarkCssClass="watermark" WatermarkText="4">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style2" width="25%">
                <asp:Button ID="btnqsubmit" runat="server" onclick="btnqsubmit_Click" 
                    Text="Submit" />
            </td>
            <td width="25%">
                <asp:Button ID="btnqreset" runat="server" onclick="btnqreset_Click" 
                    Text="Reset" />
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
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Black" height="19">
                &nbsp;</td>
            <td colspan="2" bgcolor="Black" height="19">
                &nbsp;</td>
            <td bgcolor="Black" height="19">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
