using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Web.UI.HtmlControls;
using projet_formation.Tools;

namespace projet_formation
{
    public partial class formation_fonctionnaire : MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox1.Focus();


            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chb = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chb.NamingContainer;
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Formation f = new Formation();
            FORMATIONEntities fo = new FORMATIONEntities();
            DateTime date_debut;
            DateTime date_fin;
            if (DateTime.TryParse(TextBox3.Text, out date_debut) && DateTime.TryParse(TextBox4.Text, out date_fin))
            {

                f.id_formation = TextBox1.Text;
                f.matricule_form = TextBox2.Text;
                f.date_debut = date_debut;
                f.date_fin = date_fin;
                f.nom_for = TextBox5.Text;
                f.id_tribunal = TextBox6.Text ;
                //F.AddObject("Formation", ff);
                //fo.Formation.AddObject(f);
                //Response.Write("<scrip>alert('formation ajouté!!!');</script>");
                //fo.SaveChanges();

            }

            foreach (GridViewRow row in GridView1.Rows)
            {
                HtmlInputCheckBox cb = (HtmlInputCheckBox)row.FindControl("CheckBox4");
                if(cb!=null && cb.Checked)
                {                    
                    string som;
                    som = row.Cells[0].Text;
                    fonctionnaire fon;
                    fon = fo.fonctionnaire.Where(id => id.SOM.Equals(som)).First();
                    f.fonctionnaire.Add(fon);                   
                }
            }
            fo.Formation.AddObject(f);
            fo.SaveChanges();


        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource8.WhereParameters.Clear();
            EntityDataSource8.AutoGenerateWhereClause = true;
            EntityDataSource8.WhereParameters.Add("ID_tribunal",TypeCode.String,DropDownList5.SelectedValue);
        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource4.WhereParameters.Clear();
            EntityDataSource4.AutoGenerateWhereClause = true;
            EntityDataSource4.WhereParameters.Add("ID_Filiere", TypeCode.String, DropDownList6.SelectedValue);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Formation f = new Formation();
            FORMATIONEntities fo = new FORMATIONEntities();
            Formation ff = fo.Formation.Where(x => x.id_formation.Equals(DropDownList7.SelectedValue)).First();
            DateTime date_debut;
            DateTime date_fin;
            if (DateTime.TryParse(TextBox3.Text, out date_debut) && DateTime.TryParse(TextBox4.Text, out date_fin))
            {

                f.id_formation = TextBox1.Text;
                f.matricule_form = TextBox2.Text;
                f.date_debut = date_debut;
                f.date_fin = date_fin;
                f.nom_for = TextBox5.Text;
                f.id_tribunal = TextBox6.Text;
             

            }

            foreach (GridViewRow row in GridView1.Rows)
            {
                HtmlInputCheckBox cb = (HtmlInputCheckBox)row.FindControl("CheckBox4");
                if (cb != null && cb.Checked)
                {
                    string som;
                    som = row.Cells[0].Text;
                    fonctionnaire fon;
                    fon = fo.fonctionnaire.Where(id => id.SOM.Equals(som)).First();
                    f.fonctionnaire.Add(fon);
                }
            }
            Response.Write("<script>alert ('تم تحديث البيانات');</script>");
            fo.SaveChanges();

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            Formation fo = F.Formation.Where(emt => emt.id_formation.Equals(DropDownList7.SelectedValue)).First();
            F.DeleteObject(fo);
            Response.Write("<script>alert ('تم حذف التكوين !!');</script>");
            F.SaveChanges();
            
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Formation f = new Formation();
            FORMATIONEntities fo = new FORMATIONEntities();
            Formation ff = fo.Formation.Where(x => x.id_formation.Equals(DropDownList7.SelectedValue)).First();
            
            

                f.id_formation = TextBox1.Text;
                f.matricule_form = TextBox2.Text;
                f.date_debut =DateTime.Parse(TextBox3.Text);
                f.date_fin = DateTime.Parse(TextBox4.Text);
                f.nom_for = TextBox5.Text;
               
                f.id_tribunal = TextBox6.Text;
                
               

            

        }

      
    }

}
