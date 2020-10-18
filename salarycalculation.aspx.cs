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
    public partial class salarycalculation : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
            Session["role"] = "admin";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (AgentCheck())
            {
                salaryCalculation();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter valid Agent id')", true);
            }
        }

        //user defined functions
        public bool AgentCheck()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from agent where agentid='" + TextBox1.Text.Trim() + "';", con);
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
        void salaryCalculation()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
              
                SqlCommand cmd = new SqlCommand("insert into salary(agentid,aname,date,bsalary,da,hra,ma,pf" +
                    ",pt,it,commission,netsalary,status) values((select agentid from agent where agentid=@agentid),(select aname from agent where agentid=@agentid)" +
                    ",@date,@bsalary,@da,@hra,@ma,@pf,@pt,@it,@commission,@netsalary,@status)", con);
                cmd.Parameters.AddWithValue("@agentid", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@aname", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@bsalary", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@da", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@hra", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@ma", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pf", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pt", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@it", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@commission", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@netsalary", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@status", DropDownList1.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Salary Updated Successfully!')", true);
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
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
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getAgentById();
        }
        void getAgentById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from agent where agentid='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid agent ID')", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }

       
    }
}