using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bug2Bug
{
    public partial class checkout : System.Web.UI.Page
    {
        int total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                List<Title> temp = Session["jk"] as List<Title>;
                foreach (var item in temp)
                {
                    listBoxShoppingCart.Items.Add(item.Title1 + " " + "($" + item.Price + ")");
                    total += item.Price;
                }
                total = (total * 9)/100 + total;
                labelSalesTaxResult.Text = "$" + (total * 9)/100;
                labelCostResult.Text = "$" + total.ToString();
                Session["totalCost"] = total;
            }

        }
    }
}