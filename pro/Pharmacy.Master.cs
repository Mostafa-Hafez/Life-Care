using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pro
{
    public partial class Pharmacy : System.Web.UI.MasterPage
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["mytheme"] = "red";
            Response.Redirect(Request.RawUrl);
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session["mytheme"] = "blue";
            Response.Redirect(Request.RawUrl);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {     
		 if (Session["cu"] == "AR")
            {
                Session["cu"] = "";
                Response.Redirect(Request.RawUrl);
            }
		else 
            {
                Session["cu"] = "AR";
                
                Response.Redirect(Request.RawUrl);
            }
	
            
            
        }

        

        
    }
}