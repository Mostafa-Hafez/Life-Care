using pro.Anonymous;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pro.Staff
{
    public partial class Add_Invoice : Classlang
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text= Label1.Text +GridView1.SelectedRow.Cells[0].Text+"("+ GridView1.SelectedRow.Cells[2].Text + ")"+" , " ;
            Label2.Text = (double.Parse( Label2.Text) +double.Parse( GridView1.SelectedRow.Cells[1].Text)).ToString();
            Label3.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = Label1.Text + GridView1.SelectedRow.Cells[0].Text + "(" + GridView1.SelectedRow.Cells[2].Text + ")" + " , ";
            Label2.Text = (double.Parse(Label2.Text) + double.Parse(GridView1.SelectedRow.Cells[1].Text)).ToString();
            Label3.Text = DateTime.Now.ToString();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = true;
            }
        }
    }
}