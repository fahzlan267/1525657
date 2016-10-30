using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserAcc_RegistrationAcc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ButtonRegister_Click(object sender, EventArgs e)
    {
       
        var userStore = new UserStore<IdentityUser>();

       
        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.ConnectionStrings["db_1525657_sweethswixthshopConnectionString"].ConnectionString;
        var manager = new UserManager<IdentityUser>(userStore);

       
        var user = new IdentityUser { UserName = TextBoxUsername.Text };

        if (TextBoxPassword.Text == TextBoxConfirmPassword.Text)
        {
            try
            {
                IdentityResult result = manager.Create(user, TextBoxPassword.Text);
                if (result.Succeeded)
                {
                    UserInformation info = new UserInformation
                    
                    {
                        Address = TextAddress.Text,
                        Surname = TextSurname.Text,
                        Forename = TextForename.Text,
                        
                        GUID = user.Id
                        
                    };

                    UserInformationModel model = new UserInformationModel();
                    model.InserUserInformation(info);


                    
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    
                    authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    LiteralStatus.Text = result.Errors.FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                LiteralStatus.Text = ex.ToString();
            }
        }
        else
        {
            LiteralStatus.Text = "Confirm Password dont match with your password!";
        }
    }

}


