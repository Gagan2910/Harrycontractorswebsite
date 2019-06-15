using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harrycontractorswebsite
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
          
           
            try
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
                else { dataaccesslayer da = new dataaccesslayer();
                    da.AddCustomers(txtfirstname.Text, txtlastname.Text, txtemailaddress.Text, txtpassword.Text, txtphone.Text, txtmobile.Text, txtstreetno.Text, txtsuburb.Text, txtcountry.Text);
                    Response.Redirect("customerlogin.aspx");
                }
            }
            catch(Exception)
            {
                txtlbl.Visible = true;
                txtlbl.Text = "Error:EmailID already exists.Try another email" ;
            }
        }
    }
}