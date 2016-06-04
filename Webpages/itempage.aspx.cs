using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class itempage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();
    }



    private void FillPage()
    {
        
        if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            ProductModel model = new ProductModel();
            Product product = model.GetProduct(id);

            
            LabelDetails.Text = product.Name;
            LabelInformation.Text = product.Information;
            LabelPrice.Text = "Price per unit:<br/>$BND " + product.Price;
            ImageItem.ImageUrl = "~/Product/" + product.Image;
            LabelItemNo.Text = product.ID.ToString();

            
            int[] amount = Enumerable.Range(1, 20).ToArray();
            DropDownListAmount.DataSource = amount;
            DropDownListAmount.AppendDataBoundItems = true;
            DropDownListAmount.DataBind();
        }
    }

    protected void ButtonAddCart_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            string clientId = Context.User.Identity.GetUserId();
            if (clientId != null)
            {

                int id = Convert.ToInt32(Request.QueryString["id"]);
                int amount = Convert.ToInt32(DropDownListAmount.SelectedValue);

                Cart cart = new Cart
                {
                    Amount = amount,
                    ClientID = clientId,
                    DatePurchased = DateTime.Now,
                    IsInCart = true,
                    ProductID = id
                };

                CartModel model = new CartModel();
                LabelAddCart.Text = model.InsertCart(cart);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<Script>alert('Your Oder Has been insert to Shopping Cart');</ScriptBehaviorDescriptor>");
            }
            else
            {
                LabelAddCart.Text = "Please log in to order items";
            }
        }
    }
}
