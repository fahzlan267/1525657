<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UserAcc_Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 463px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="registerform">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                <br />
                Please Sign In to Continue.<br />
                <br />
                <br />
                UserName:<br />
                <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="inputs"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style9">Password:<br />
                <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="inputs"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="ButtonSignin" runat="server" OnClick="ButtonSignin_Click" CssClass="button5" Text="Log In" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

