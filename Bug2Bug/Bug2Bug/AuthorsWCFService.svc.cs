using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.Entity;
using System.Data.Entity.Validation;
namespace Bug2Bug
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "AuthorsWCFService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select AuthorsWCFService.svc or AuthorsWCFService.svc.cs at the Solution Explorer and start debugging.
    public class AuthorsWCFService : IAuthorsWCFService
    {
        BooksEntities dbcontext = new BooksEntities();
        public void AddAuthor(string FirstName,string LastName)
        {
            dbcontext.Authors.Load();
            Author author = new Author()
            {
                FirstName = FirstName,
                LastName = LastName
            }; //end new author object
            dbcontext.Authors.Add(author);
            dbcontext.SaveChanges();
            /*
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\final web\Bug2Bug\Bug2Bug\App_Data\Books.mdf;Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework");
            SqlCommand cmd = new SqlCommand("insert into Authors values('" + FirstName + "','"+LastName+"')", con);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();*/

        }
        public AuthorEntry[] GetAuthors(string lastName)
        {
            dbcontext.Authors.Load();
            var matchingEntries = from author in dbcontext.Authors.Local
                                where author.LastName == lastName
                                select new AuthorEntry {
                                LastName = author.LastName,
                                FirstName = author.FirstName
                                };
            return matchingEntries.ToArray();
        }
    }
}