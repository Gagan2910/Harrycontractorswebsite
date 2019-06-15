using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harrycontractorswebsite
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dataaccesslayer da = new dataaccesslayer();
            int user1 = da.customerlogin(txtemailid.Text.Trim(), txtpassword.Text.Trim());
             if (user1 > 0)
             {
                HttpCookie user = new HttpCookie("user");
                user["userName"] = txtemailid.Text;
                //store as much data as you want.
                user.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(user);
                Response.Redirect("services.aspx");
             }
             else
             {
                 txtlbl.Visible = true;
                 txtlbl.Text = "Incorrect CustomerID or Password";
             }
           
        }

        
    }
}