<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminproducts.aspx.cs" Inherits="Adminpages_Adminproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 505px;
        }
        .auto-style11 {
            width: 95%;
            font-size: 25px;
            font-style: italic;
            color: #eb740e;
        }
        .auto-style13 {
            width: 275px;
        }
        .auto-style14 {
            width: 95%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style9">Name:<br />
                <asp:TextBox ID="TextName" runat="server" Width="293px"></asp:TextBox>
            </td>
            <td class="auto-style13">Type:<br />
                <asp:DropDownList ID="DropDownListType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525657_sweethswixthshopConnectionString %>" SelectCommand="SELECT * FROM [ProductType] ORDER BY [Name]">
                </asp:SqlDataSource>
            </td>
            <td class="auto-style14" >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <br />
                <br />
                <br />
                Load Image:<br />
                <asp:DropDownList ID="DropDownListImage" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style13">
                <br />
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="16px" Width="163px" />
                <asp:Button ID="buttonupload" runat="server" OnClick="buttonupload_Click" Text="Upload Image" />
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <br />
                Price:<br />
                <asp:TextBox ID="TextPrice" runat="server" ></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                Information:<br />
                <asp:TextBox ID="TextInformation" runat="server" Height="97px" TextMode="MultiLine" Width="521px"></asp:TextBox>
                <br />
            </td>
        </tr>
         <tr>
            <td class="auto-style9">
                <asp:Button ID="ButtonSubmit" CssClass="button4" runat="server" Text="Submit" OnClick="ButtonSubmit_Click1" />
                <br />
                <asp:Label ID="LabelSubmit" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Labelresult" runat="server" ></asp:Label>
             </td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="button4" NavigateUrl="~/Adminpages/Administrator.aspx">Back to Administrator</asp:HyperLink>
             </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

