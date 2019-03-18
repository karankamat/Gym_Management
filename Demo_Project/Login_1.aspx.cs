using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo_Project
{
    public partial class Login_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
            
                if (tb1.Text.ToString() == "Karan" && tb2.Text.ToString() == "12345678")
                {
                    Response.Redirect("~/WebForm1.aspx");
                }
                else
                {
                    //Response.Redirect("~/Login_1.aspx");
                    l1.Text = "Username or Password incorrect";
                }

                       
        
        }

        
    }
}