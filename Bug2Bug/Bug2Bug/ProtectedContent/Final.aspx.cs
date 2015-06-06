using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bug2Bug
{
    public partial class final : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbdate.Text = DateTime.Now.AddDays(3).ToShortDateString();
                int total = (int)Session["totalCost"];
                labelTotalCostResult.Text = total.ToString();
            }
        }

    }
}