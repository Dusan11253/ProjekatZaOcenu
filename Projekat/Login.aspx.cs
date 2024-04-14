using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["GlobalVar"] = "";
        }

   
        protected void Registerdugme_Click(object sender, EventArgs e)
        {
            if(Page.IsValid) { 
            string cs= "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=KorisnickiPodaci;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (SqlConnection con = new SqlConnection(cs))
                {
                   string req = SifraTxt.Text;
                    if (SifraTxt.Text == SifraTxtconfirm.Text && req.Length > 5)
                    {
                        string query = "INSERT INTO Korisnici VALUES (@ime, @gmail, @pass)";
                        SqlCommand cmd = new SqlCommand(query, con);

                        cmd.Parameters.AddWithValue("@ime", ImeTxt.Text);
                        cmd.Parameters.AddWithValue("@gmail", EmailTxt.Text);
                        cmd.Parameters.AddWithValue("@pass", SifraTxt.Text);

                        try
                        {
                            con.Open();
                            int uspeh = cmd.ExecuteNonQuery();
                            if (uspeh > 0)
                            {

                                label5.Text = "successfully registered account!";
                                Response.Redirect("~/PraviLogin.aspx");
    
                            }
                            else
                            {

                                label5.Text = "Registration failed!";

                            }

                        }

                        catch (Exception ex)
                        {
                            
                            label5.Text = "Greska kod: - " +ex.ToString();

                        }
                    }
                    else
                    {
                        label5.Text = "The passwords do not match or are not at required length!";
                        return;
                    }
                }
            }
        }

       
    }
}