using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace Bug2Bug
{
    [DataContract]
    public class AuthorEntry 
    { 
        // property for the last name 
        [DataMember] 
        public string LastName { get; set; }
        // property for the first name 
        [DataMember]
        public string FirstName { get; set; }
        public AuthorEntry() { } // end constructor
        // return a string representation of a AuthorEntry 
        public override string ToString() { return LastName + ", " + FirstName; } // end method ToString
    }
}
