<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationAcc.aspx.cs" Inherits="UserAcc_RegistrationAcc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
  
  
 
  
  
  
    <style type="text/css">
        .auto-style12 {
            width: 353px;
        }
        .auto-style14 {
            width: 349px;
        }
    </style>
  
  
  
 
  
  
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="registerform">

    <table style="width:100%;">
        <tr>
            <td colspan="4">&nbsp;Please enter all the blank box below to register.<br />
                <br />
                <span style ="color:red"><asp:Literal ID="LiteralStatus" runat="server"></asp:Literal></span>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12" >Username:<br />
                <br />
                <asp:TextBox runat="server" ID="TextBoxUsername" CssClass="inputs" >Please Enter Your Username</asp:TextBox>
                <br />
                <br />
                Password:<br />
                <br />
                <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="inputs">Please Enter Your Password</asp:TextBox>
                <br />
                <br />
                Confirm password:<br />
                <br />
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" CssClass="inputs">Please Enter Your Confirm Password</asp:TextBox>
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style14" >Surname:<br />
                <br />
                <asp:TextBox ID="TextSurname" runat="server" CssClass="inputs"></asp:TextBox>
                <br />
                <br />
                Forename:<br />
                <br />
                <asp:TextBox ID="TextForename" runat="server" CssClass="inputs"></asp:TextBox>
                <br />
                <br />
                IC Number:<br />
                <br />
                <asp:TextBox ID="TextIC" runat="server" CssClass="inputs"></asp:TextBox>
                <br />
                <br />
                Address:<br />
                <br />
                <asp:TextBox ID="TextAddress" runat="server" CssClass="inputs"></asp:TextBox>
            </td>
            <td >&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="align-content:center" colspan="2" >
                <asp:Button ID="ButtonRegister" CssClass="button5" runat="server" OnClick="ButtonRegister_Click" Text="Register" />
                </td>
            <td >&nbsp;</td>
        </tr>
    </table>

    
        </div>
    <div style="clear:both"></div>
</asp:Content>

