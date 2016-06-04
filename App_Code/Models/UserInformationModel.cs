using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class UserInformationModel
{
   public UserInformation GetUserInformationModel(string guId)
    {
        db_1525657_websiteEntities db = new db_1525657_websiteEntities();
        var info = (from x in db.UserInformations
                                     where x.GUID == guId
                                     select x).FirstOrDefault();

        return info;
    }
    public void InserUserInformation (UserInformation info)
    {
        db_1525657_websiteEntities db = new db_1525657_websiteEntities();
        db.UserInformations.Add(info);
        db.SaveChanges();
    }

    
}