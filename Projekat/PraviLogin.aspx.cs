using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat
{
    public partial class PraviLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Ime = ImeTxt.Text;
            string pass = TxtSifra.Text;
            string gmail = EmailTxt.Text;
            string cs = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=KorisnickiPodaci;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT COUNT(*) FROM Korisnici WHERE Ime = @Ime AND Sifra = @sifra AND email = @Email";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ime", Ime);
                cmd.Parameters.AddWithValue("@sifra", pass);
                cmd.Parameters.AddWithValue("@Email", gmail);


                try
                {
                    con.Open();

                    int uspeh = (int)cmd.ExecuteScalar();

                    if (uspeh > 0)
                    {

                        Session["GlobalVar"] = EmailTxt.Text;

                        Response.Redirect("~/Index.aspx");
                        
                    }
                    else
                    {
                        Label3.Text = "Incorrect Input!";
                    }
                }

                

                catch (Exception ex)
                {
                    Label3.Text = ex.ToString();
                }
            }
        }
    }
}