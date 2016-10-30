using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class CartModel
{
    public List<Cart> GetOrdersInCart(string userId)
    {
        db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();
        List<Cart> orders = (from x in db.Carts
                             where x.ClientID == userId
                             && x.IsInCart
                             orderby x.DatePurchased descending
                             select x).ToList();
        return orders;
    }

    public int GetAmountOfOrders(string userId)
    {
        try
        {
            db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();
            int amount = (from x in db.Carts
                          where x.ClientID == userId
                          && x.IsInCart
                          select x.Amount).Sum();

            return amount;
        }
        catch
        {
            return 0;
        }
    }

    public void UpdateQuantity(int id, int quantity)
    {
        db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();
        Cart p = db.Carts.Find(id);
        p.Amount = quantity;

        db.SaveChanges();
    }

    public void MarkOrdersAsPaid(List<Cart> carts)
    {
        db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();

        if (carts != null)
        {
            foreach (Cart cart in carts)
            {
                Cart oldCart = db.Carts.Find(cart.ID);
                oldCart.DatePurchased = DateTime.Now;
                oldCart.IsInCart = false;
            }
            db.SaveChanges();
        }
    }

    public string InsertCart(Cart cart)
    {
        try
        {
            db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();
            db.Carts.Add(cart);
            db.SaveChanges();

            return  "<Script>alert('Your Oder Has been insert to Shopping Cart. Click your Username to Proceed to Shopping Cart')</Script>";
        
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdateCart(int id, Cart cart)
    {
        try
        {
            db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();

           
            Cart p = db.Carts.Find(id);

            p.DatePurchased = cart.DatePurchased;
            p.ClientID = cart.ClientID;
            p.Amount = cart.Amount;
            p.IsInCart = cart.IsInCart;
            p.ProductID = cart.ProductID;

            db.SaveChanges();
            return cart.DatePurchased + " was succesfully updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string DeleteCart(int id)
    {
        try
        {
            db_1525657_sweethswixthshopEntities db = new db_1525657_sweethswixthshopEntities();
            Cart cart = db.Carts.Find(id);

            db.Carts.Attach(cart);
            db.Carts.Remove(cart);
            db.SaveChanges();

            return cart.DatePurchased + "was succesfully deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
}