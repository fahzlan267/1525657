using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ProductTypeModel
{
    public string InsertProductType(ProductType productType)
    {
        try
        {
            db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();
            db.ProductTypes.Add(productType);
            db.SaveChanges();

            return productType.Name + "was succesfully inserted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdateProductType(int id, ProductType productType)
    {
        try
        {
            db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();

            
            ProductType p = db.ProductTypes.Find(id);

            p.Name = productType.Name;

            db.SaveChanges();
            return productType.Name + "was succesfully updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string DeleteProductType(int id)
    {
        try
        {
            db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();
            ProductType productType = db.ProductTypes.Find(id);

            db.ProductTypes.Attach(productType);
            db.ProductTypes.Remove(productType);
            db.SaveChanges();

            return productType.Name + "was succesfully deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
}