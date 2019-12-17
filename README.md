# gpjava19
gpjava19 is a package containing some basic, but useful, everyday classes and methods, like  validatePass, isValidEmail, OS, loginSucceeded, loginFailed, date manipulation, etc. This is a new project.  It is in it`s infancy.

----- Class Common19b,  in pacakge gpjava19 :
This class is designed to work with JSP servlets (or standard Java classes).  It must be in a package named "gpjava19".  For Tomcat/jsp apps, this package would be a folder  within your WEB-INF/classes folder, like:
  ../WEB-INF/classes/gpjava19

At present, this class contains a few useful methods and properties, like:
  validatePass, isValidEmail, OS, loginSucceeded, loginFailed, etc.
These are some tedious, but always needed methods for most JSP projects.
This is a new project.  The class is in it`s infancy.

USAGE:
To use, simply import the class/package:  gpjava19.Dates19
Then start using the methods direcectly.  Most of the methods do not need an instantiated object.  
However, some methods and properties are initialized within the constructor.  So a simple object instantiation is best:
  Common19b c = new Common19b();

-- Using Login / Password validation - validatePass():
Following is a usage sample for using methods `validatePass`, `isValidEmail`, and properties `loginSucceeded` & `loginFailed`.  First import the  gpjava19.Common19b class.  Then instantiate it  and use the method:s/properties

Sample #1:
  <%@ page import = "gpjava19.Common19b" %>
  <%
  Common19b c = new Common19b();
  String loginDisplay="", dateStr1="";    // output vars
  Date dateNow = new java.util.Date();   // create Date object for use in Dates19 call.
  // Call Dates19.dateFormat() to set dateStr1 var for combining with `loginDisplay` output further below:
  dateStr1 = Dates19.dateFormat(dateNow, 7);
  // Pass entered password (passwordStr1) and actual password (passwordVar) for testing:
  boolean passOK = Common19b.validatePass(passwordStr1, passwordVar) ;
  boolean emailOK = Common19b.isValidEmail(emailStr1);   // validate email
  out.println("Email OK: "+ emailOK +"<br/>") ;    // this is informative/testing only; it can be ommitted.
  // Build the loginDisplay:
  if(passOK) {
    loginDisplay = nameStr1 +" "+ Common19b.loginSucceeded + " - "+ dateStr1 ;    
  }  // nameStr1 is a var saved from prior input of user-name.
  else {   loginDisplay = Common19b.loginFailed;   }

  %>
This also calls the validatePassOutput method so you can clearly see whether the values are passed accurately and if they are equal/not.
Note -- Dates19 is another class in the gpjava19 package.


-- Using Email validation:
This method performs simple email validation.  I will write a more comprehensive one as time permits.
>> See Sample #1 above for usage.


