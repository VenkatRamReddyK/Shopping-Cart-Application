using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bug2Bug
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "venkat" && TextBox2.Text == "ram")
            {
                    Response.Redirect("~/ClientWeb.aspx");
            }
            else
            {
                Label3.Text = "Username or password invalid...";    
            }
        }
    }
}