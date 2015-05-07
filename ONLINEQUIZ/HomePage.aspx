<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ONLINEQUIZ.HomePage" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register src="WUC/HPHead.ascx" tagname="HPHead" tagprefix="uc1" %>
<%@ Register src="WUC/HPFooter.ascx" tagname="HPFooter" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 105%;
        }        
        .style2
        {
            height: 19px;
        }
        .style3
        {
            width: 41%;
        }
        .style4
        {
            height: 19px;
            width: 41%;
        }
        .style5
        {
            height: 20px;
        }
        .style6
        {
            height: 1px;
        }
        .style7
        {
            height: 127px;
        }
    </style>
    <link href="CSS/Watermark.css" rel="stylesheet" type="text/css" />

</head >
<body background="IMAGES/background1.jpg"  >
<h5>
<script type="text/javascript">
    var message = "Test Module Works better with Internet Explorer!..."
var neonbasecolor="gray"
var neontextcolor="pink"
var flashspeed=100 //in milliseconds

///No need to edit below this line/////

var n=0
if (document.all||document.getElementById){
document.write('<font color="'+neonbasecolor+'">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
document.write('</font>')
}
else
document.write(message)

function crossref(number){
var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
return crossobj
}

function neon(){

//Change all letters to base color
if (n==0){
for (m=0;m<message.length;m++)
//eval("document.all.neonlight"+m).style.color=neonbasecolor
crossref(m).style.color=neonbasecolor
}

//cycle through and change individual letters to neon color
crossref(n).style.color=neontextcolor

if (n<message.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",1500)
return
}
}

function beginneon(){
if (document.all||document.getElementById)
flashing=setInterval("neon()",flashspeed)
}
beginneon()


</script>
</h5>


    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td colspan="3" width="100%" class="style7">
                    <uc1:HPHead ID="HPHead1" runat="server" />
                </td>
            </tr>
            <tr>
                <td width="33%" bgcolor="Black" class="style5" height="19">
                </td>
                <td width="33%" bgcolor="Black" class="style5" height="19">
                    </td>
                <td width="33%" bgcolor="Black" class="style5" height="19">
                    </td>
            </tr>
            <tr>
                <td width="33%">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td width="33%">
                    &nbsp;</td>
                <td width="33%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="33%">
                    &nbsp;</td>
                <td style="text-align: center" width="33%"><br/>
                   <asp:Label ID="studentpanel" runat="server" Text="STUDENT LOGIN"></asp:Label> 
                </td>
                <td width="33%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="33%">
                    &nbsp;</td>
                <td style="text-align: center" width="33%">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" Width="400px">
                                <table cellpadding="0" cellspacing="0" class="style1">
                                    <tr>
                                        <td id="error" runat="server" colspan="2" style="width: 100%" width="35%">
                                            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td width="60%">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right" class="style3">
                                            STUDENT ID</td>
                                        <td>
                                            <asp:TextBox ID="txtsid" runat="server"></asp:TextBox>
                                            <cc1:TextBoxWatermarkExtender ID="txtsid_TextBoxWatermarkExtender" 
                                                runat="server" Enabled="True" TargetControlID="txtsid" 
                                                WatermarkCssClass="watermark" WatermarkText="1210708166">
                                            </cc1:TextBoxWatermarkExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right" class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right" class="style3">
                                            PASSWORD</td>
                                        <td>
                                            <asp:TextBox ID="txtspwd" runat="server" TextMode="Password"></asp:TextBox>
                                            <cc1:TextBoxWatermarkExtender ID="txtspwd_TextBoxWatermarkExtender" 
                                                runat="server" Enabled="True" TargetControlID="txtspwd" 
                                                WatermarkCssClass="watermark" WatermarkText="**********">
                                            </cc1:TextBoxWatermarkExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right" class="style3">
                                            <asp:Button ID="btnssubmit" runat="server" onclick="btnssubmit_Click1" 
                                                Text="SUBMIT" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnsreset" runat="server" onclick="btnsreset_Click" 
                                                Text="RESET" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                        </td>
                                        <td class="style2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right" class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right" class="style3">
                                            &nbsp;</td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                                NavigateUrl="~/PL/Student/StudentRegister.aspx">New User Register?</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <cc1:CollapsiblePanelExtender ID="Panel1_CollapsiblePanelExtender" 
                                runat="server" CollapseControlID="facultypanel" Collapsed="True" Enabled="True" 
                                ExpandControlID="studentpanel" TargetControlID="Panel1">
                            </cc1:CollapsiblePanelExtender>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td width="33%">
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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="facultypanel" runat="server" Text="FACULTY LOGIN"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: center">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel2" runat="server" Width="400px">
                                <table cellpadding="0" cellspacing="0" class="style1">
                                    <tr>
                                        <td align="right" width="35%" colspan="2" 
                                            style="width: 100%; text-align: center">
                                            <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="40%">
                                            USER NAME</td>
                                        <td width="60%">
                                            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                                            <cc1:TextBoxWatermarkExtender ID="txtfname_TextBoxWatermarkExtender" 
                                                runat="server" Enabled="True" TargetControlID="txtfname" 
                                                WatermarkCssClass="watermark" WatermarkText="Billgates">
                                            </cc1:TextBoxWatermarkExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">
                                            &nbsp;</td>
                                        <td width="65%">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            &nbsp;PASSWORD</td>
                                        <td>
                                            <asp:TextBox ID="txtfpwd" runat="server" TextMode="Password"></asp:TextBox>
                                            <cc1:TextBoxWatermarkExtender ID="txtfpwd_TextBoxWatermarkExtender" 
                                                runat="server" Enabled="True" TargetControlID="txtfpwd" 
                                                WatermarkCssClass="watermark" WatermarkText="***********">
                                            </cc1:TextBoxWatermarkExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            SUBJECT CODE</td>
                                        <td>
                                            <asp:TextBox ID="txtsubcode" runat="server"></asp:TextBox>
                                            <cc1:TextBoxWatermarkExtender ID="txtsubcode_TextBoxWatermarkExtender" 
                                                runat="server" Enabled="True" TargetControlID="txtsubcode" 
                                                WatermarkCssClass="watermark" WatermarkText="EURIT101">
                                            </cc1:TextBoxWatermarkExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnfsubmit" runat="server" onclick="btnfsubmit_Click" 
                                                Text="SUBMIT" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnfreset" runat="server" onclick="btnreset_Click" 
                                                Text="RESET" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <cc1:CollapsiblePanelExtender ID="Panel2_CollapsiblePanelExtender" 
                                runat="server" CollapseControlID="studentpanel" Collapsed="True" Enabled="True" 
                                ExpandControlID="facultypanel"  
                                ExpandedText="Faculty" TargetControlID="Panel2">
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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="270">
                    &nbsp;</td>
                <td style="text-align: center">
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
                    <asp:LinkButton ID="lnkbtnadmin" runat="server" onclick="lnkbtnadmin_Click">Admin</asp:LinkButton>
                </td>
                <td align="center">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Contact Us</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style6" height="3">
                </td>
                <td bgcolor="Black" class="style6" height="3" width="33%" align="center">
                    &nbsp;</td>
                <td bgcolor="Black" class="style6" height="3" width="33%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" height="50" width="100%">
                    <uc2:HPFooter ID="HPFooter1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
