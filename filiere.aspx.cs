using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using projet_formation.Tools;

namespace projet_formation
{
    public partial class filiere : MainPage
    {   
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// ajoute
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            
        }
        /// <summary>
        /// modifier
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
       
       
        /// <summary>
        /// ajoute
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click1(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            Filiere fi = new Filiere();



            fi.ID_Filere = TextBox1.Text;
            fi.nom = TextBox2.Text;
            fi.ID_tribunal = DropDownList1.SelectedValue;
            F.AddObject("Filiere", fi);
            Response.Write("<script>alert (' تمت الاضافة  !!');</script>");
            F.SaveChanges();

        }
        /// <summary>
        /// modifier
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click1(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            Filiere ff = F.Filiere.Where(x => x.ID_Filere.Equals(DropDownList2.SelectedValue)).First();
            
            ff.nom = TextBox2.Text;
            ff.ID_tribunal = DropDownList1.SelectedValue;
            Response.Write("<script>alert ('تم التحديث   !!');</script>");
            F.SaveChanges();

        }
        /// <summary>
        /// RECHERCHER
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Button4_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            Filiere ff = F.Filiere.Where(x => x.ID_Filere.Equals(DropDownList2.SelectedValue)).First();
            TextBox1.Text = ff.ID_Filere;
            TextBox2.Text=ff.nom;
           DropDownList1.SelectedValue= ff.ID_tribunal ;
           txt333.Text = "recherche !!";
           txt333.Visible = true;
        }
        /// <summary>
        /// suppr
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button5_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            Filiere fi;


            txt333.Visible = false;

            if (F.Filiere.Where(emt => emt.ID_Filere.Equals(DropDownList2.SelectedValue)).Count() > 0)
            {
                fi = F.Filiere.Where(emt => emt.ID_Filere.Equals(DropDownList2.SelectedValue)).First();
                //if (fi != null)
                //{
                try
                {
                    F.DeleteObject(fi);
                    Response.Write("<script>alert ('تم الحذف  !!');</script>");
                    F.SaveChanges();
                }

                catch(Exception ex)
                {
                    txt333.Text = "impossible de supprimer les données!!";
                    txt333.Visible = true;
                    
                }

            }

        }
    }
}