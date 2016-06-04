<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminproducts.aspx.cs" Inherits="Adminpages_Adminproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 175px;
        }
        .auto-style10 {
            width: 116px;
        }
        .auto-style11 {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style9">Name:<br />
                <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10">Type:<br />
                <asp:DropDownList ID="DropDownListType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525657_websiteConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Product] ([TypeID], [Name], [Price], [Information], [Image]) VALUES (@TypeID, @Name, @Price, @Information, @Image)" UpdateCommand="UPDATE [Product] SET [TypeID] = @TypeID, [Name] = @Name, [Price] = @Price, [Information] = @Information, [Image] = @Image WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TypeID" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="Information" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TypeID" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="Information" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td >Price:<br />
                <asp:TextBox ID="TextPrice" runat="server" ></asp:TextBox>
            </td>
            <td>Load Image:<br />
                <asp:DropDownList ID="DropDownListImage" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">Information:<br />
                <asp:TextBox ID="TextInformation" runat="server" Height="97px" TextMode="MultiLine" Width="545px"></asp:TextBox>
                <br />
            </td>
        </tr>
         <tr>
            <td class="auto-style9">
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click1" />
                <br />
                <asp:Label ID="LabelSubmit" runat="server"></asp:Label>
             </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

