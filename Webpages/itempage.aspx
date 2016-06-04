<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="itempage.aspx.cs" Inherits="itempage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-left: 30px"></div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2"> &nbsp;</td>
            <td> <asp:Label ID="LabelInformation" CssClass="DetailInformation" runat="server" Text="Label"></asp:Label></td>
            <td><h3><asp:Label ID="LabelDetails" runat="server" Text="Label"></asp:Label></h3>
                <h3><asp:Image ID="ImageItem" CssClass="DetailImage" runat="server" /></h3></td>
            
           
            
        </tr>
        <tr>
            <td class="auto-style2"> &nbsp;</td>
            
            <td> <asp:Label Font-Bold="true" ID="LabelPrice"  runat="server" CssClass="DetailPrice" Text="Label"></asp:Label>
            
            </td>
            
            
            <td>Product Number: <asp:Label ID="LabelItemNo" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="In Stock"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style2"> &nbsp;</td>
            
            <td>
            Quantity :<asp:DropDownList ID="DropDownListAmount"  runat="server"></asp:DropDownList>
            
            </td>
            
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"> &nbsp;</td>
            
            
            <td> 
                <br />
            
            </td>
            
            
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="ButtonAddCart" runat="server" OnClick="ButtonAddCart_Click" CssClass="button3" Text="Add to Cart" Height="47px" Width="175px" />
            
            <asp:Label ID="LabelAddCart" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            
        </tr>
    </table>

</asp:Content>

