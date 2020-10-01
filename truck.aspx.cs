using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class truck : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TruckCheck())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('This Truck already exists. Please enter valid Truck details to add.')", true);
            }
            else
            {
                addNewTruck();
            }
        }
        //user defined function
        void addNewTruck()
        {
            if (TextBox1.Text.Trim().Equals(""))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Truck no cannot be blank')", true);
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("insert into Truck (truckid,towner,dname,dlno,dpan,dphoneno) values (@truckid,@towner,@dname,@dlno,@dpan,@dphoneno)", con);
                    cmd.Parameters.AddWithValue("@truckid", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@towner", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@dname", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@dlno", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@dpan", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@dphoneno", TextBox6.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Truck Added Successfully!')", true);
                    clearForm();
                    GridView2.DataBind();
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
                }
            }
        }
        public bool TruckCheck()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from Truck where truckid='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
                return false;
            }

        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            updateTruck();
        }
        void updateTruck()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update Truck set truckid=@truckid,towner=@towner,dname=@dname,dlno=@dlno,dpan=@dpan,dphoneno=@dphoneno where truckid='" + TextBox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@truckid", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@towner", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@dname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dlno", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@dpan", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@dphoneno", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Truck Details Updated Successfully!')", true);
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TruckCheck())
            {
                deleteTruck();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Truck does not exists')", true);
            }
        }
        void deleteTruck()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Truck WHERE truckid='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Truck Deleted Successfully!')", true);
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            getTruckrById();
        }
        void getTruckrById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Truck where truckid='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
                    TextBox6.Text = dt.Rows[0][5].ToString();

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Truck No.')", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }
    }
}