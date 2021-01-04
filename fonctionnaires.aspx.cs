using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using projet_formation.Tools;

namespace projet_formation
{
    public partial class fonctionnaires : MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// AJOUTE
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            fonctionnaire ff = new fonctionnaire();
            DateTime date_naissence;
            DateTime date_embauche;
            if (DateTime.TryParse(TextBox8.Text, out date_naissence) && DateTime.TryParse(TextBox6.Text, out date_embauche))
            {
                ff.SOM = TextBox1.Text;
                ff.nom_f = TextBox2.Text;
                ff.prenom_f = TextBox3.Text;
                ff.adresse = TextBox4.Text;
                ff.poste = TextBox5.Text ;
                ff.date_embauche = date_embauche;
                ff.lieu_naissance = TextBox5.Text;
                ff.date_naissance = date_naissence;
                ff.ID_Filiere = DropDownList1.SelectedValue;
                F.AddObject("fonctionnaire",ff);
                Response.Write("<script>alert (' تمت الاضافة  !!');</script>");
                F.SaveChanges();
               
            }

        }
        /// <summary>
        /// MODIFIER
        ///
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            //int id = Convert.ToInt32(TextBox1.Text);

            fonctionnaire ff = F.fonctionnaire.Where(x => x.SOM.Equals(DropDownList2.SelectedValue)).First();
            DateTime date_naissence;
            DateTime date_embauche;
            if (DateTime.TryParse(TextBox8.Text, out date_naissence) && DateTime.TryParse(TextBox6.Text, out date_embauche))
            {
                
                ff.nom_f = TextBox2.Text;
                ff.prenom_f = TextBox3.Text;
                ff.adresse = TextBox4.Text ;
                ff.poste =TextBox5.Text;
                ff.date_embauche = date_embauche;
                ff.lieu_naissance = TextBox5.Text;
                ff.date_naissance = date_naissence;
                ff.ID_Filiere = DropDownList1.SelectedValue;
                Response.Write("<script>alert ('تم التحديث   !!');</script>");
                F.SaveChanges();
                
            }

        }
        /// <summary>
        /// SUPPRESSION
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {
                FORMATIONEntities F = new FORMATIONEntities();
                fonctionnaire fo = F.fonctionnaire.Where(emt => emt.SOM.Equals(DropDownList2.SelectedValue)).First();
                F.DeleteObject(fo);
                Response.Write("<script>alert ('تم الحذف  !!');</script>");
                F.SaveChanges();
                
        }
        /// <summary>
        /// rechercher
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button4_Click(object sender, EventArgs e)
        {
            FORMATIONEntities F = new FORMATIONEntities();
            fonctionnaire fo = F.fonctionnaire.Where(emt => emt.SOM.Equals(DropDownList2.SelectedValue)).First();
            TextBox1.Text = fo.SOM;
            TextBox2.Text = fo.nom_f;
            TextBox3.Text = fo.prenom_f;
            TextBox4.Text = fo.adresse;
            TextBox5.Text = fo.poste;
            TextBox6.Text = fo.date_embauche.ToShortDateString();
            TextBox7.Text = fo.lieu_naissance;
            TextBox8.Text = fo.date_naissance.ToString();
        }
    }
}