<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminDisplayProduct.aspx.cs" Inherits="Adminpages_AdminDisplayProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 415px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12"><h3> Name </h3><br />
                <asp:TextBox ID="TextName" runat="server" Width="323px" Height="35px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="SubmitButton" CssClass="button4" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                <br />
                <asp:Label ID="SubmitLabel" runat="server"></asp:Label>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="button4"  NavigateUrl="~/Adminpages/Administrator.aspx">Back to Administrator</asp:HyperLink>
                
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

