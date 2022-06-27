using pro.Anonymous;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pro.Staff
{
    public partial class Store : Classlang
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            TextBox name = (TextBox)GridView1.FooterRow.FindControl("TextBoxName");
            TextBox Price = (TextBox)GridView1.FooterRow.FindControl("TextBoxPrice");
            TextBox Num = (TextBox)GridView1.FooterRow.FindControl("TextBoxNum");
            TextBox Des = (TextBox)GridView1.FooterRow.FindControl("TextBoxDes");
            DropDownList type = (DropDownList)GridView1.FooterRow.FindControl("DropDownListType");
            SqlDataSource1.InsertParameters["Med_Name"].DefaultValue = name.Text;
            SqlDataSource1.InsertParameters["Med_Price"].DefaultValue = Price.Text;
            SqlDataSource1.InsertParameters["Med_Num"].DefaultValue = Num.Text;
            SqlDataSource1.InsertParameters["Med_Des"].DefaultValue = Des.Text;
            SqlDataSource1.InsertParameters["Med_Type"].DefaultValue = type.SelectedValue;
            if (e.CommandName == "Insert")
            {
                SqlDataSource1.Insert();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButtonSave_Click(object sender, EventArgs e)
        {

        }
    }
}