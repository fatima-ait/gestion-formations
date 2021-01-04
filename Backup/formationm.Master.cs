using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projet_formation
{
    public partial class formationm : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nom"] != " ")
            {
                Label1.Text = Session["nom"].ToString();
            }

        }
    }
}