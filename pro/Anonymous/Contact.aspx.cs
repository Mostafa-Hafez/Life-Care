using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pro.Anonymous
{
    public partial class Contact : Classlang
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label7.Text = DateTime.Now.ToString();
            SqlDataSource1.Insert();
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }
    }
}