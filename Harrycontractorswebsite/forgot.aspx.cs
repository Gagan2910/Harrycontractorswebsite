using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harrycontractorswebsite
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!passwordstrength.HasMinimumLength(txtpassword.Text, 8))
            {
                txtlbl2.Visible = true;

            }

            else if (!passwordstrength.HasMinimumUniqueChars(txtpassword.Text, 1))
            {
                txtlbl2.Visible = true;

            }

            else if (!passwordstrength.HasDigit(txtpassword.Text))
            {
                txtlbl2.Visible = true;

            }

            else if (!passwordstrength.HasLowerCaseLetter(txtpassword.Text))
            {
                txtlbl2.Visible = true;

            }

            else if (!passwordstrength.HasUpperCaseLetter(txtpassword.Text))
            {
                txtlbl2.Visible = true;

            }
            else
            {
                dataaccesslayer da = new dataaccesslayer();
                int user = da.updatepassword(TextBox3.Text, txtpassword.Text);
                if (user > 0)
                {
                    lbllabel2.Visible = true;
                    customerloginlink.Visible = true;
                    
                }
                else
                {
                    lbllabel2.Visible = true;
                    lbllabel2.Text = "Password doesn't changed successfully";
                }
            }
        }

        
    }
}