using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    LinkButton1.Visible = true; //userlogin
                    LinkButton4.Visible = true; //enquiry

                    LinkButton3.Visible = false; //logout
                    LinkButton7.Visible = false; //hello agent

                    LinkButton6.Visible = true; //adminlogin
                    LinkButton11.Visible = false; //add agent
                    LinkButton12.Visible = false; //remove agent
                    LinkButton8.Visible = false; //salary cal
                    LinkButton2.Visible = false; //update agent

                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //userlogin
                    LinkButton4.Visible = false; //enquiry

                    LinkButton3.Visible = true; //logout
                    LinkButton7.Visible = true; //hello agent
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true; //adminlogin
                    LinkButton11.Visible = false; //add agent
                    LinkButton12.Visible = false; //remove agent
                    LinkButton8.Visible = false; //salary cal
                    LinkButton2.Visible = false; //update agent
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //userlogin
                    LinkButton4.Visible = false; //enquiry

                    LinkButton3.Visible = true; //logout
                    LinkButton7.Visible = true; //hello agent
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = false; //adminlogin
                    LinkButton11.Visible = true; //add agent
                    LinkButton12.Visible = true; //remove agent
                    LinkButton8.Visible = true; //salary cal
                    LinkButton2.Visible = true; //update agent
                }
            }
            catch(Exception ex)
            {
 
            }
            
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("addagent.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("removeagent.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("salarycalculation.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            LinkButton1.Visible = true; //userlogin
            LinkButton4.Visible = true; //enquiry

            LinkButton3.Visible = false; //logout
            LinkButton7.Visible = false; //hello agent

            LinkButton6.Visible = true; //adminlogin
            LinkButton11.Visible = false; //add agent
            LinkButton12.Visible = false; //remove agent
            LinkButton8.Visible = false; //salary cal
            LinkButton2.Visible = false; //update agent
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("enquiry.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateagent.aspx");
        }
    }
}