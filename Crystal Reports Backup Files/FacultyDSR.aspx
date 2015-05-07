<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyDSR.aspx.cs" Inherits="ONLINEQUIZ.PL.Faculty.FacultyDSR" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
            text-align: center;
        }
        .style3
        {
            text-align: left;
        }
    </style>
    <link href="../../CSS/Watermark.css" rel="stylesheet" type="text/css" />
</head>
<body background="../../IMAGES/Presentation2.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td colspan="4" height="19" width="100%" bgcolor="Black">
              
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" width="100%">
              
                    <asp:Menu ID="Menu1" runat="server" BackColor="#5F9FFF" 
                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                        ForeColor="Black" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                        Width="100%" BorderColor="Black" BorderStyle="Solid" Font-Bold="True">
                        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#E3EAEB" />
                        <DynamicSelectedStyle BackColor="#1C5E55" />
                    <Items>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultySPage.aspx" Text="Faculty Home" 
                                Value="Faculty Home"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultyAQP.aspx" Text="Add Questions" 
                                Value="Add Questions"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultyCP.aspx" Text="Change Password" 
                                Value="Change Password"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultyDSR.aspx" 
                                Text="Delete Student Result" Value="Delete Student Result"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultyENofQ.aspx" 
                                Text="Set No. Questions" Value="Set No. Questions"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultyIEDQP.aspx" 
                                Text="Add,Edit,Delete Question" Value="Add,Edit,Delete Question">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultyVQP.aspx" 
                                Text="View Question Paper" Value="View Question Paper"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/PL/Faculty/FacultyVR.aspx" Text="View Result" 
                                Value="View Result"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                         <StaticMenuItemStyle Font-Size="Small" HorizontalPadding="12px" 
                            VerticalPadding="8px" />
                       
                        <StaticMenuStyle HorizontalPadding="20px" VerticalPadding="10px" />
                        <StaticSelectedStyle BackColor="#1C5E55" />
                    </asp:Menu>
                </td>
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    <h2 style="text-align: center">
                        DELETE STUDENT RESULTS</h2>
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
                    <asp:LinkButton ID="lnkbtnsout" runat="server" onclick="lnkbtnsout_Click">SignOut</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td width="25%">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td style="text-align: right" width="25%">
                    ENTER STUDENT ID</td>
                <td width="25%">
                    <asp:TextBox ID="txtfdsr" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtfdsr_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtfdsr" 
                        WatermarkCssClass="watermark" WatermarkText="1210708199">
                    </cc1:TextBoxWatermarkExtender>
                </td>
                <td width="25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: right">
                    <asp:Button ID="btndel" runat="server" onclick="btndel_Click" Text="Delete" />
                </td>
                <td>
                    <asp:Button ID="btnreset" runat="server" Text="Reset" 
                        onclick="btnreset_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="lbldelall" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Red" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: right">
                    ENTER SECTON</td>
                <td class="style3">
                    <asp:TextBox ID="txtfdstures" runat="server"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="txtfdstures_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="txtfdstures" 
                        WatermarkCssClass="watermark" WatermarkText="c1">
                    </cc1:TextBoxWatermarkExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="btndelall" runat="server" onclick="btndelall_Click" 
                        Text="Delete All" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Black" height="19">
                    &nbsp;</td>
                <td style="text-align: center" bgcolor="Black" height="19">
                    &nbsp;</td>
                <td class="style3" bgcolor="Black" height="19">
                    &nbsp;</td>
                <td bgcolor="Black" height="19">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
