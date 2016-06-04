using System;

using System.Web.UI;

using System.Net.Mail;

public partial class Webpages_Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void ButtonSubmit_OnClick(object sender, EventArgs e)
    {

        try
        {
            if (Page.IsValid)
            {
                MailMessage mailmessage = new MailMessage();
                mailmessage.From = new MailAddress("swixthshop@gmail.com");
                mailmessage.To.Add("swixthshop@gmail.com");
                mailmessage.Subject = TextSubject.Text;

                mailmessage.Body = "<b>sender Name:</b>" + TextName.Text + "</Br>" + "<b>Sender Email: </b>" + TextEmail.Text + "</br>" + "<b>Message Content: </b>" + TextMessage.Text;
                mailmessage.IsBodyHtml = true;

                SmtpClient smtpUser = new SmtpClient("smtp.gmail.com", 587);
                smtpUser.EnableSsl = true;
                smtpUser.Credentials =
                    new System.Net.NetworkCredential("swixthshop@gmail.com", "admin1525657");
                smtpUser.Send(mailmessage);

                LabelContact.ForeColor = System.Drawing.Color.Green;
                LabelContact.Text = "Your Message has been send. Thank you for contacting us";

                TextName.Enabled = false;
                TextEmail.Enabled = false;
                TextSubject.Enabled = false;
                TextMessage.Enabled = false;

                ButtonSubmit.Enabled = false;

            }

        }
        catch (Exception ex)
        {
            LabelContact.Text = ex.StackTrace;
            LabelContact.ForeColor = System.Drawing.Color.Red;
            LabelContact.Text = "There is a error. Please try again later";
        }
    }

}
   
    
