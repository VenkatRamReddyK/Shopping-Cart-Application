using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Bug2Bug
{
    public partial class ClientWeb : System.Web.UI.Page
    {
        private HttpClient client = new HttpClient();
        private XNamespace xmlNamespace = XNamespace.Get("http://schemas.datacontract.org/2004/07/Bug2Bug");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListBox1.Items.Clear();
            }
        }

        protected async void btnadd_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
        Uri uri = HttpContext.Current.Request.Url;
        String host = "http://localhost:" + uri.Port;
        HttpResponseMessage response =
            await client.GetAsync(new Uri(host + "/AuthorsWCFService.svc/AddAuthor/" + txtFname.Text + "/" + txtLname.Text));
        if (response.StatusCode == System.Net.HttpStatusCode.OK)
            ListBox1.Items.Add("Entry added successfully");
        else
            ListBox1.Items.Add("AddEntry failed with HTTP code " + response.StatusCode);
        }

        protected async void btngo_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            Uri uri = HttpContext.Current.Request.Url;
            String host = "http://localhost:" + uri.Port;
            String result = await client.GetStringAsync(new Uri(host + "/AuthorsWCFService.svc/GetAuthors/" + txtsearch.Text));
            XDocument xmlResponse = XDocument.Parse(result);
            if (xmlResponse.Element(xmlNamespace + "ArrayOfAuthorEntry").Value == string.Empty)
            {
                ListBox1.Items.Add("No matches");
            }
            else
            {
                foreach (XElement element in xmlResponse.Element(xmlNamespace + "ArrayOfAuthorEntry").Elements())
                {

                    string str = element.Element(xmlNamespace + "FirstName").Value + " " + element.Element(xmlNamespace + "LastName").Value;
                    ListBox1.Items.Add(str);
                }
            }
        }
    }
}