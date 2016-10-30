using System;
using System.Collections;
using System.IO;

public partial class Adminpages_Adminproducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetImages();

            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                FillPage(id);
            }


        }
    }

    
    private void FillPage(int id)
    {
        try
        {
            ProductModel productModel = new ProductModel();
            Product product = productModel.GetProduct(id);

            TextInformation.Text = product.Information;
            TextName.Text = product.Name;
            TextName.Text = product.Price.ToString();
            DropDownListImage.SelectedValue = product.Image;
            DropDownListType.SelectedValue = product.TypeID.ToString();
        }
        catch (Exception ex)
        {
            LabelSubmit.Text = ex.ToString();
        }



    }


    private void GetImages()
    {
        try
        {
            //Get all filepaths
            string[] images = Directory.GetFiles(Server.MapPath("~/Product/"));

            //Get all filenames and add them to an arraylist
            ArrayList imageList = new ArrayList();
            foreach (string image in images)
            {
                string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                imageList.Add(imageName);
            }

            //Set the arrayList as the dropdownview's datasource and refresh
            DropDownListImage.DataSource = imageList;
            DropDownListImage.AppendDataBoundItems = true;
            DropDownListImage.DataBind();

            
        }
        catch (Exception e)
        {
            LabelSubmit.Text = e.ToString();
        }
    }

    private Product CreateProduct()
    {
        Product product = new Product();

        product.Name = TextName.Text;
        product.Price = Convert.ToDouble(TextPrice.Text);
        product.TypeID = Convert.ToInt32(DropDownListType.SelectedValue);
        product.Information = TextInformation.Text;
        product.Image = DropDownListImage.SelectedValue;

        return product;
    }



    protected void ButtonSubmit_Click1(object sender, EventArgs e)
    {
        ProductModel productModel = new ProductModel();
        Product product = CreateProduct();

        if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            LabelSubmit.Text = productModel.UpdateProduct(id, product);
        }
        else
        {
            LabelSubmit.Text = productModel.InsertProduct(product);
        }
    }




    protected void buttonupload_Click(object sender, EventArgs e)
    {
        try
        {
            string filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Product/") + filename);

            Labelresult.Text = "Image" + filename + "successfully uploaded";
            Page_Load(sender, e);
        }
        
        catch (Exception)
        {
            Labelresult.Text = "Upload Failed";

        }
    }
}