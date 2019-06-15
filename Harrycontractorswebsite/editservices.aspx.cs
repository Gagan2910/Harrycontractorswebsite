using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harrycontractorswebsite
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnAddProduct_OnClick(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["ServiceID"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtServiceID")).Text;
            SqlDataSource1.InsertParameters["Servicename"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtServicename")).Text;
            SqlDataSource1.InsertParameters["Price"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPrice")).Text;
            SqlDataSource1.InsertParameters["ServiceDescription"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtServiceDescription")).Text;
            SqlDataSource1.InsertParameters["Serviceimage"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtServiceimage")).Text;
            SqlDataSource1.Insert();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Backbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("staffenter.aspx");
        }

        protected void Logoutbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}