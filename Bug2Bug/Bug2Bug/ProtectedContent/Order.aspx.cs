using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bug2Bug
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Title> temp = Session["jk"] as List<Title>;
                int index = 0;
                foreach (var item in temp)
                {
                    string str =item.Title1 + " " + "($" + item.Price + ")";
                    ListItem listitem = new ListItem(str,index.ToString());
                    ListBox1.Items.Add(listitem);
                    index++;
                }
                ListBox1.SelectedIndex = 0;
            }
        }

        protected void emptyBtn_Click(object sender, EventArgs e)
        {
            List<Title> temp = Session["jk"] as List<Title>;
            temp.Clear();
            ListBox1.Items.Clear();
            Session["jk"] = temp;
        }

        protected void removeBtn_Click(object sender, EventArgs e)
        {
            List<Title> temp = Session["jk"] as List<Title>;
            temp.RemoveAt(int.Parse(ListBox1.SelectedItem.Value));
            ListBox1.Items.RemoveAt(ListBox1.SelectedIndex);
            Session["jk"] = temp;
        }

        protected void checkoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Checkout.aspx");
        }

        protected void shoppingBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sitemaster.aspx");
        }
    }
}