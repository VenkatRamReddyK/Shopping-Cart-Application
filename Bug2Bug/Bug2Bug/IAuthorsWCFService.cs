using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Bug2Bug
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IAuthorsWCFService" in both code and config file together.
    [ServiceContract]
    public interface IAuthorsWCFService
    {
        [OperationContract] 
        [WebGet(UriTemplate = "/AddAuthor/{FirstName}/{LastName}")] 
        void AddAuthor(string FirstName,string LastName);
        // retrieve author entries with a given last name 
        [OperationContract]
        [WebGet(UriTemplate = "/GetAuthors/{lastName}")] 
        AuthorEntry[] GetAuthors(string lastName);
    }
}
