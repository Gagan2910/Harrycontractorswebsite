using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harrycontractorswebsite
{
    public partial class WebForm5 : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dataaccesslayer da = new dataaccesslayer();
            int user = da.stafflogin(txtuserid.Text,txtpassword.Text);
            if(user>0)
            {
                Response.Redirect("staffenter.aspx");
            }
            else
            {
                txtlabel.Visible = true;
                txtlabel.Text = "Incorrect StaffID or Password";
            }
            


        }
    }
}