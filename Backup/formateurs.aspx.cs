using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using projet_formation.Tools;

namespace projet_formation
{
    public partial class Formateurs: MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            

            //{   
            //    TextBox1.Text = "";
            //    TextBox2.Text = "";
            //    TextBox3.Text="";
            //    DropDownList2.SelectedIndex = 0;
            
            //}

        }
        /// <summary>
        /// AJOUTE
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ajoute_Click(object sender, EventArgs e)
        {
          
           
            
        }
        /// <summary>
        /// MODIFIER
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void modifier_Click(object sender, EventArgs e)
        {
                
              
            
        }
        /// <summary>
        /// SUPPRIMER
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void supprimer_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            int id = Convert.ToInt32(TextBox1.Text);

            formateurs ff = F.formateurs.Where(emt => emt.matricule_form.Equals(DropDownList3.SelectedIndex)).First();
            F.DeleteObject(ff);
            Response.Write("<script>alert ('تم الحذف !!');</script>");
            F.SaveChanges();
            //Response.Write("<script>alert('fonctionnaire supprimé !!');</script>");


        }

        protected void rechercher_Click(object sender, EventArgs e)
        {
           
        }

        protected void annuler_Click(object sender, EventArgs e)
        {
          

        }
        /// <summary>
        /// ajoute
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Button1_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            formateurs ff = new formateurs();



            ff.NOM = TextBox1.Text;
            ff.prenom = TextBox2.Text;
            ff.matricule_form = TextBox3.Text;
            ff.grade = DropDownList1.SelectedValue;

            F.AddObject("formateurs", ff);
            Response.Write("<script>alert ('تمت الاظافة !!');</script>");
            F.SaveChanges();
            //Response.Write("<script>alert('formateur ajouté !!');</script>");
        }
        /// <summary>
        /// modifier
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            formateurs ff = F.formateurs.Where(x => x.matricule_form.Equals(DropDownList3.SelectedValue)).First();

            ff.NOM = TextBox1.Text;
            ff.prenom = TextBox2.Text;
            //ff.matricule_form = TextBox3.Text;
            ff.grade = DropDownList1.SelectedValue;
            Response.Write("<script>alert (' تم التحديث ');</script>");
            F.SaveChanges();
            //Response.Write("<script>alert('fonctionnaire bien modifier !!');</script>");
        }
        /// <summary>
        /// supprimer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            //int id = Convert.ToInt32(DropDownList3.SelectedIndex);

            formateurs ff = F.formateurs.Where(emt => emt.matricule_form.Equals(DropDownList3.SelectedValue)).First();
            F.DeleteObject(ff);
            Response.Write("<script>alert ('تم الحذف  !!');</script>");
            F.SaveChanges();
            //Response.Write("<script>alert('fonctionnaire supprimé !!');</script>");
        }
        /// <summary>
        /// rechercher
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button4_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();

            formateurs ff = F.formateurs.Where(emt => emt.matricule_form.Equals(DropDownList3.SelectedValue)).First();
            TextBox1.Text = ff.matricule_form;
            TextBox2.Text = ff.NOM;
            TextBox3.Text = ff.prenom;
            DropDownList1.SelectedValue = ff.grade;
        }
        /// <summary>
        /// annuler
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click1(object sender, EventArgs e)
        {
            DropDownList3.SelectedIndex = 0;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedIndex = 0;
            TextBox1.Focus();

        }

       
    }
}