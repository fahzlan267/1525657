using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Webpages_contact2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    
   

protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage message = new MailMessage(TextName.Text, TextEmail.Text, TextMessage.Text, TextSubject.Text);
            message.IsBodyHtml = true;

            SmtpClient client = new SmtpClient("smtp.gmai.com", 587);
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("swixthshop@gmail.com", "admin1525657");
            client.Send(message);
            LabelContact.Text = "Mail was sent successfully";
        }
        catch (Exception ex)
        {
            LabelContact.Text = ex.StackTrace;
            LabelContact.ForeColor = System.Drawing.Color.Red;
            LabelContact.Text = "There is a error. Please try again later";
        }
    }
}