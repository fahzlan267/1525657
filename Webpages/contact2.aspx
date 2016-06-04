<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact2.aspx.cs" Inherits="Webpages_contact2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style9 {
            width: 82px;
        }
        .auto-style10 {
            width: 538px;
        }
        .auto-style12 {
            width: 82px;
            margin-bottom: 43px;
        }
    </style>

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <table class="auto-style8">
            <tr>
                <td " class="auto-style11" colspan="3">Feel Free to Contact Us! We are Listening! </td>
            </tr>
            <tr>
                <td class="auto-style12">Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextName" runat="server" Width="495px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please enter you name" ForeColor="#CC0000" ControlToValidate="TextName" Text="*"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp; Address:
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No.32 unit 3, The SwixthShop Ground Floor<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Laksamana College of Business Building<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tel: +6738 255255</td>
            </tr>
            <tr>
                <td class="auto-style12">Email</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextEmail" runat="server" Width="495px"></asp:TextBox>
                </td>
                <td class="auto-style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please enter you email" ForeColor="#CC0000" ControlToValidate="TextEmail" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Please enter valid email" ForeColor="#CC0000" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Subject</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextSubject" runat="server" Width="495px"></asp:TextBox>
                </td>
                <td class="auto-style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please enter your subject" ForeColor="#CC0000" ControlToValidate="TextSubject" Text="*"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="vertical-align:top" class="auto-style12">Message </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextMessage" runat="server" Width="494px" Height="219px"></asp:TextBox>
                </td>
                <td style="vertical-align:top" class="auto-style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please type in your message" ForeColor="#CC0000" ControlToValidate="TextMessage" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">
                    <br />
                    <asp:ValidationSummary HeaderText="Please Fix The Following Error" ID="ValidationSummary1" forecolor="Red" runat="server" />
                    <br />
                    <asp:Label ID="LabelContact" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:Button ID="ButtonSubmit" CssClass="button4" runat="server" Text="Submit" OnClick="ButtonSubmit_Click"  />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
   
    <p>
        
        <iframe id="I1" style="align-content:center" allowfullscreen="" frameborder="0" height="450" name="I1" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3975.3236145263445!2d114.9292325152745!3d4.8853686413876565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x32228ac8ee3f7d03%3A0xcacd96016959ec39!2sLaksamana+College+of+Business!5e0!3m2!1sen!2s!4v1460723165739" style="border:0" width="100%"></iframe>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
   
    <p>
        &nbsp;</p>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
</p>
</asp:Content>


