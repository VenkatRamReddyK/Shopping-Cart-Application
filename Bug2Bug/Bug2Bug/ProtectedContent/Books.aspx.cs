using System;
using System.Data.Entity;
using System.Linq;
using System.Collections.Generic;

namespace Bug2Bug.ProtectedContent
{
   public partial class Books : System.Web.UI.Page
   {

      BooksEntities dbcontext = new BooksEntities();

      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            dbcontext.Authors.Load();

             var authorsQuery =
               from author in dbcontext.Authors.Local
               orderby author.LastName, author.FirstName
               select new
               {
                  Name = author.LastName + ", " + author.FirstName,
                  author.AuthorID
               };

            authorsDropDownList.DataValueField = "AuthorID";
            authorsDropDownList.DataTextField = "Name";
            authorsDropDownList.DataSource = authorsQuery;
            authorsDropDownList.DataBind();
            authorsDropDownList.SelectedIndex = 0;
         }
      }

      // display selected author's books
      protected void authorsDropDownList_SelectedIndexChanged(
         object sender, EventArgs e)
      {
         dbcontext.Authors.Load(); // load Authors table into memory

         // use LINQ to get Author object for the selected author
         Author selectedAuthor =
            (from author in dbcontext.Authors.Local
             where author.AuthorID == 
                Convert.ToInt32(authorsDropDownList.SelectedValue)
             select author).First();

         // query to get books for the selected author
         var titlesQuery =
            from book in selectedAuthor.Titles
            orderby book.Title1
            select book;

         // set titlesQuery as the titlesGridView's data source
         titlesGridView.DataSource = titlesQuery.ToList();
         titlesGridView.DataBind(); // displays query results  
      }

      protected void titlesGridView_SelectedIndexChanged(object sender, EventArgs e)
      {
          int index = titlesGridView.SelectedIndex;
          List<Bug2Bug.Title> listbooks = new List<Bug2Bug.Title>();
          listbooks = Session["jk"] as List<Bug2Bug.Title>;
          Bug2Bug.Title titletemp = new Bug2Bug.Title();
          titletemp.ISBN = titlesGridView.Rows[index].Cells[1].Text;
          titletemp.Title1 = titlesGridView.Rows[index].Cells[2].Text;
          titletemp.Price = int.Parse(titlesGridView.Rows[index].Cells[5].Text);
          listbooks.Add(titletemp);
          Session["jk"] = listbooks;
      }


      protected void titlesGridView_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
      {
          titlesGridView.PageIndex = e.NewPageIndex;
          dbcontext.Authors.Load(); // load Authors table into memory

          // use LINQ to get Author object for the selected author
          Author selectedAuthor =
             (from author in dbcontext.Authors.Local
              where author.AuthorID ==
                 Convert.ToInt32(authorsDropDownList.SelectedValue)
              select author).First();

          // query to get books for the selected author
          var titlesQuery =
             from book in selectedAuthor.Titles
             orderby book.Title1
             select book;

          // set titlesQuery as the titlesGridView's data source
          titlesGridView.DataSource = titlesQuery.ToList();
          titlesGridView.DataBind(); // displays query results  
      }
   }
}