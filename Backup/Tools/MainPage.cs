using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace projet_formation.Tools
{
    public class MainPage : Page
    {
       override protected void OnInit(EventArgs e)
        {
           bool connected =false;

           if (Session["connected"] != null)
           {
               bool.TryParse(Session["connected"].ToString(), out connected);  
           }

           if (connected == false)
           { 
                Response.Redirect("~/admin.aspx");
           }
            
        }
    }
}