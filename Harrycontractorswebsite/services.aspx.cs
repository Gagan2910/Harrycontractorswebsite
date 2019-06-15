using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harrycontractorswebsite
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie user = Request.Cookies["user"];
            if (user != null)
            {
                Label1.Visible = true;
                Label2.Visible = true;
                Label2.Text = user["userName"].ToString();
            }
            else
            {
                Response.Redirect("customerlogin.aspx");
            }
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie user = new HttpCookie("user");
            user.Expires = DateTime.Now.AddDays(-3);
            Response.Cookies.Add(user);
            Response.Redirect("default.aspx");
        }

        protected void ListView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("addtocart.aspx");
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("addtocart.aspx");
        }
    }
}