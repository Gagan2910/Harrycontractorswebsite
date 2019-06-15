using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harrycontractorswebsite
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnAddProduct_OnClick(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Firstname"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtfirstname")).Text;
            SqlDataSource1.InsertParameters["Lastname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtlastname")).Text;
            SqlDataSource1.InsertParameters["Emailaddress"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtemail")).Text;
            SqlDataSource1.InsertParameters["Phone"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtphone")).Text;
            SqlDataSource1.InsertParameters["Mobile"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtemail")).Text;
            SqlDataSource1.InsertParameters["Streetno"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtstreet")).Text;
            SqlDataSource1.InsertParameters["Suburb"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtsuburb")).Text;
            SqlDataSource1.InsertParameters["Country"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtcountry")).Text;
            SqlDataSource1.Insert();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("staffenter.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}