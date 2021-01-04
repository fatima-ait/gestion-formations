using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using projet_formation;

namespace projet_formation
{
    public partial class admin : System.Web.UI.Page
    {
        FORMATIONEntities F= new FORMATIONEntities();
            //= new FORMATIONEntities();
        protected void Page_Load(object sender, EventArgs e)
        {  
            if (CheckBox1.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
                Response.Cookies["UserName"].Value = TextBox1.Text.Trim();
                Response.Cookies["Password"].Value = TextBox2.Text.Trim();

           
             
                 if (!Page.IsPostBack)
               {
                
                    //if (Request.Cookies["nom"] != null && Request.Cookies[""] != null)
                    //{
                    //    TextBox1.Text = "Administrateur :"+ Request.Cookies["UserName"].Value;
                    //    TextBox2.Attributes["value"] = Request.Cookies["Password"].Value;
                    //}

               }

            
            else
            {
               
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string nom = Request["nom"];
            Session["nom"] = TextBox1.Text;
            foreach (var administrateur in F.administrateur)
            {
                if (administrateur.login == TextBox1.Text && administrateur.mot_d_passe == TextBox2.Text)
                {

                    Session["connected"] = true;
                
                    Response.Redirect("formations.aspx");
                   
                }
            
            }

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    CheckBox1.Checked = false;
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {

        }
    }
}