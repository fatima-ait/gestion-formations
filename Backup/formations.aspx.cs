using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using projet_formation.Tools;

namespace projet_formation
{
    public partial class formations : MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                TextBox1.Text = "";
                DropDownList2.SelectedIndex = 0;
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                DropDownList3.SelectedIndex = 0;
                DropDownList4.SelectedIndex = 0;
               

               
            }
        }

       

        
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
            FORMATIONEntities F = new FORMATIONEntities();
            Formation  fo;
            if (F.Formation.Where(emt => emt.id_formation.Equals(TextBox1.Text)).Count() > 0)
            {
                fo = F.Formation.Where(emt => emt.id_formation.Equals(TextBox1.Text)).First();
                if (fo != null)
                {
                    F.DeleteObject(fo);
                    Response.Write("<script>alert('formation supprimée!!!');</script>");
                    F.SaveChanges();
                    System.Threading.Thread.Sleep(2000);
                }
            }
        }

        /// <summary>
        /// modification
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            //int id = Convert.ToInt32(TextBox1.Text);

            Formation ff = F.Formation.Where(x => x.id_formation.Equals(TextBox1.Text)).First();
            DateTime date_debut;
            DateTime date_fin;
            if (DateTime.TryParse(TextBox3.Text, out date_debut) && DateTime.TryParse(TextBox4.Text, out date_fin))
            {
                
                ff.matricule_form = DropDownList4.SelectedValue;
                ff.date_debut = date_debut;
                ff.date_fin = date_fin;
                ff.nom_for = TextBox5.Text;
                
               
                ff.id_tribunal = DropDownList3.SelectedValue;
                Response.Write("<script>alert('formation bien modifiée !!');</script>");
                F.SaveChanges();
                
            }

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            Formation fo;
            if (F.Formation.Where(emt => emt.id_formation.Equals(DropDownList2.SelectedValue)).Count() > 0)
            {
                fo = F.Formation.Where(emt => emt.id_formation.Equals(DropDownList2.SelectedValue)).First();
                TextBox1.Text = fo.id_formation;
                DropDownList4.SelectedValue = fo.matricule_form;
                //DropDownList3.SelectedValue 
                TextBox3.Text = fo.date_debut.ToShortDateString();
                TextBox4.Text = fo.date_fin.ToShortDateString();
                TextBox5.Text = fo.nom_for;
                DropDownList3.SelectedValue = fo.id_tribunal;
            }
            


        }

        /// <summary>
        /// ajout
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            Formation ff = new Formation();
            DateTime date_debut;
            DateTime date_fin;
            if (DateTime.TryParse(TextBox3.Text, out date_debut) && DateTime.TryParse(TextBox4.Text, out date_fin))
            {

                ff.id_formation = TextBox1.Text;
                ff.matricule_form = DropDownList4.SelectedValue  ;
                ff.date_debut = date_debut;
                ff.date_fin = date_fin;
                ff.nom_for = TextBox5.Text;
                //ff.SOM = TextBox6.Text;
                //ff.lieu = TextBox7.Text;
                ff.id_tribunal=DropDownList3.SelectedValue ;
                //F.AddObject("Formation", ff);
                F.Formation.AddObject(ff);
                Response.Write("<scrip>alert('formation ajouté');</script>");
                F.SaveChanges();
               
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            //FORMATIONEntities.Formation we;
            //we = new FORMATIONEntities.Formation();
            //var countryQuery = from c in we.country
            //orderby c.Name
            //select new { c.nom, c.prenom };
            //DropDownList3.DataValueField = "nom";
            //DropDownList3.DataTextField = "prenom";
            //DropDownList3.DataSource = countryQuery;
            //DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}