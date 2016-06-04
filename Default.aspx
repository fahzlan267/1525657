<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="/css/StyleSheet.css" rel="stylesheet" />
     
    <p>


        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1500" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:Image ID="Image2"  Height="250px" Width="1100"  runat="server" />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        


    </p>
    
        Search Items:
        <asp:TextBox ID="TextBoxSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="ButtonSearch" runat="server" Text="Button" OnClick="ButtonSearch_Click" />

    <p>





    </p>
    <asp:Panel ID="PanelProducts" CssClass ="PanelProducts" runat="server">
       <div id="panel">

       </div>
    </asp:Panel>

    <div style="clear:both"></div>
    


</asp:Content>

