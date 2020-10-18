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
    public partial class salaryreport1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["role"] = "add";
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select agentid,aname, convert(varchar, cast(convert(varchar(10)," +
                    " date, 110) as datetime), 106) as date,bsalary,netsalary,status from salary where " +
                    "month(date)=" + DropDownList1.SelectedItem.Value + " and year(date)=" + TextBox2.Text +";",con);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                con.Close();
                
                clearForm();
               
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }
        void clearForm()
        {
            
            TextBox2.Text = "";
            DropDownList1.SelectedValue = "-1";
            //DropDownList2.SelectedValue = "0";
        }

    }
}