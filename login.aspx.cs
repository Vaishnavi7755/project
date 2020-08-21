using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace project
{
    public partial class login : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["projectConnectionString"].ConnectionString);
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from login where user=@username and pwd=@password;";
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            MySqlDataReader reader = cmd.ExecuteReader();
            {
                if (reader.Read())
                {
                    Label1.Text = "Login sucessful...";
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Label1.Text = "Incorrect username or password..";
                }
            }
            con.Close();
        }
    }
}