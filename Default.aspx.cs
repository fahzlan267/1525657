using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlDataSource vid = new SqlDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();

        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {
        Random rand = new Random();
        int i = rand.Next(1, 5);
        Image2.ImageUrl = "~/images/slider/" + i.ToString() + ".jpg";

    }

    private void FillPage()
    {
        ProductModel model = new ProductModel();
        List<Product> products = model.GetAllProducts();

        if (products != null)
        {
            foreach (Product product in products)
            {
                Panel productPanel = new Panel();
                ImageButton imageButton = new ImageButton
                {
                    ImageUrl = "~/Product/" + product.Image,
                    CssClass = "productImage",
                    PostBackUrl = string.Format("~/Webpages/itempage.aspx?id={0}", product.ID)
                };
                Label LabelName = new Label
                {
                    Text = product.Name,
                    CssClass = "productName"
                };
                Label LabelPrice = new Label
                {
                    Text = "$BND " + product.Price,
                    CssClass = "productPrice"
                };

                productPanel.Controls.Add(imageButton);
                productPanel.Controls.Add(new Literal { Text = "<br/>" });
                productPanel.Controls.Add(LabelName);
                productPanel.Controls.Add(new Literal { Text = "<br/>" });
                productPanel.Controls.Add(LabelPrice);

                PanelProducts.Controls.Add(productPanel);
            }
        }
        else
            PanelProducts.Controls.Add(new Literal { Text = "No Item found!" });
    }





   
}


    
