using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace project
{
    public partial class bill : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
            Session["role"] = "home1";
        }
        //add
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (BillCheck())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('This bill already exists. Please generate a new bill.')", true);
            }
            else
            {
                addNewBill();
            }
        }
        //user defined function
        void addNewBill()
        {
            if (TextBox1.Text.Trim().Equals(""))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(GR no cannot be blank')", true);
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
                    SqlCommand cmd = new SqlCommand("insert into bill (GRNo,Date,from,to,crid,crname,cid,cname" +
                        ",package,description,HSNcode,privatemark,invoiceno,value,truckid,paymentmode,actual" +
                        ",charged,amount) values(@GRNo,@Date,@from,@to,(select crid from Consignor where crid=@crid),(select crname from Consignor where crid=@crid),(select cid from Consignee where cid=@cid),(select cname from Consignee where cid=@cid),@package" +
                        ",@description,@HSNcode,@privatemark,@invoiceno,@value,@truckid,@paymentmode,@actual" +
                        ",@charged,@amount);", con);
                    try
                    {
                        cmd.Parameters.AddWithValue("@GRNo", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@Date", TextBox2.Text.Trim());
                        cmd.Parameters.AddWithValue("@from", TextBox7.Text.Trim());
                        cmd.Parameters.AddWithValue("@to", TextBox3.Text.Trim());
                        cmd.Parameters.AddWithValue("@crid", TextBox4.Text.Trim());
                        cmd.Parameters.AddWithValue("@crname", TextBox5.Text.Trim());
                        cmd.Parameters.AddWithValue("@cid", TextBox8.Text.Trim());
                        cmd.Parameters.AddWithValue("@cname", TextBox9.Text.Trim());
                        cmd.Parameters.AddWithValue("@package", TextBox6.Text.Trim());
                        cmd.Parameters.AddWithValue("@description", TextBox10.Text.Trim());
                        cmd.Parameters.AddWithValue("@HSNcode", TextBox11.Text.Trim());
                        cmd.Parameters.AddWithValue("@privatemark", TextBox12.Text.Trim());
                        cmd.Parameters.AddWithValue("@invoiceno", TextBox13.Text.Trim());
                        cmd.Parameters.AddWithValue("@value", TextBox14.Text.Trim());
                        cmd.Parameters.AddWithValue("@truckid", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@paymentmode", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@actual", TextBox21.Text.Trim());
                        cmd.Parameters.AddWithValue("@charged", TextBox22.Text.Trim());
                        cmd.Parameters.AddWithValue("@amount", TextBox23.Text.Trim());
                        cmd.ExecuteNonQuery();
                    }
                    catch (System.Data.SqlClient.SqlException ex)
                    {
                        // Output exception information to log.
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);

                    }
                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Bill added Successfully!')", true);
                    clearForm();
                    GridView2.DataBind();
                }
                catch (System.Data.SqlClient.SqlException ex)
                {
                    // Output exception information to log.
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
                
            }
            }
        }
        public bool BillCheck()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from bill where GRNo='" + TextBox1.Text.Trim() + "';", con);
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
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
           
        }
        //update
        protected void Button2_Click(object sender, EventArgs e)
        {
            updateBill();
        }
        //uerdefined function
        void updateBill()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update bill set Date=@Date,from=@from,to=@to,crid=@crid,crname=@crname,cid=@cid,cname=@cname,package=@package,description=@description,HSNcode=@HSNcode,privatemark=@privatemark,invoiceno=@invoiceno,value=@value,truckid=@truckid,paymentmode=@paymentmode,actual=@actual,charged=@charged,amount=@amount where GRNo='" + TextBox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@GRNo", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@from", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@to", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@crid", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@crname", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@cid", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@cname", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@package", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@HSNcode", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@privatemark", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@invoiceno", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@value", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@truckid", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@paymentmode", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@actual", TextBox21.Text.Trim());
                cmd.Parameters.AddWithValue("@charged", TextBox22.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", TextBox23.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bill Updated Successfully!')", true);
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
            grGo();
        }
        void grGo()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from bill where GRNo='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][3].ToString();
                    TextBox4.Text = dt.Rows[0][4].ToString();
                    TextBox5.Text = dt.Rows[0][5].ToString();
                    TextBox6.Text = dt.Rows[0][8].ToString();
                    TextBox7.Text = dt.Rows[0][2].ToString();
                    TextBox8.Text = dt.Rows[0][6].ToString();
                    TextBox9.Text = dt.Rows[0][7].ToString();
                    TextBox10.Text = dt.Rows[0][9].ToString();
                    TextBox11.Text = dt.Rows[0][10].ToString();
                    TextBox12.Text = dt.Rows[0][11].ToString();
                    TextBox13.Text = dt.Rows[0][12].ToString();
                    TextBox14.Text = dt.Rows[0][13].ToString();
                    TextBox21.Text = dt.Rows[0][16].ToString();
                    TextBox22.Text = dt.Rows[0][17].ToString();
                    TextBox23.Text = dt.Rows[0][18].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0][14].ToString();
                    DropDownList2.SelectedValue = dt.Rows[0][15].ToString();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid GR No')", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            gst1GO();
        }
        void gst1GO()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Consignor where  crid='" + TextBox4.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox5.Text = dt.Rows[0][1].ToString();

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid GST No.')", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            gst2GO();
        }
        void gst2GO()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Consignee where  cid='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox9.Text = dt.Rows[0][1].ToString();

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid GST No.')", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
            }
        }
    }
}
