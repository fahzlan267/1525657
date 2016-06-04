<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Webpages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 213px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="PanelCart" runat="server">
    </asp:Panel>

    <table style="float:right">
            <tr>
                <td>
                    <b>Total: </b>
                </td>
                <td class="auto-style2">
                    <asp:Literal ID="litTotal" runat="server" Text=""></asp:Literal>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Shipping: </b>
                </td>
                <td class="auto-style2">
                    $BND (Free Shipping)
                </td>
            </tr>

            <tr>
                <td>
                    <b>Total Amount: </b>
                </td>
                <td class="auto-style2">
                    <asp:Literal ID="litTotalAmount" runat="server" Text="" />
                </td>
            </tr>

            <tr>
                <td>
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button1" PostBackUrl="~/Default.aspx">Continue Shopping</asp:LinkButton> &nbsp;&nbsp; or                     
                    <asp:Button ID="ButtonCheckout" runat="server" Text="Check Out" CssClass="button2" Width="200px" PostBackUrl="https://www.paypal.com/signin/?country.x=BN&locale.x=en_BN" />

                    <br />

                    <asp:LinkButton ID="litPayment" Text="" runat="server" />
                </td>
            </tr>

        </table>
     <div style = "clear:both" ></ div >

</asp:Content>


