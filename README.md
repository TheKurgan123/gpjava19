# gpjava19
gpjava19 is a package containing some basic, but useful, everyday classes and methods, like  validatePass, isValidEmail, OS, loginSucceeded, loginFailed, date manipulation, etc. This is a new project.  It is in it`s infancy.

The file gpjava19.zip (available for download above) contains the gpjava19 package and all class files.

The following classes {within gpjava19} are designed to work with JSP servlets (or standard Java classes).  They must be in a package named "gpjava19".  Just unzip the gpjava19 package from gpjava19.zip to your application's WEB-INF/classes folder.
For Tomcat/jsp apps, this package would be a folder like:
  ../WEB-INF/classes/gpjava19
  
  
----- Class Common19b,  in pacakge gpjava19 :
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
```
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
Then later, within the form, you would have a line to display the loginDisplay string, like:
  <%  out.println( loginDisplay );  %><br/>
```
Note -- Dates19 is another class in the gpjava19 package.


-- Using Email validation:
This method performs simple email validation.  I will write a more comprehensive one as time permits.
>> See Sample #1 above for usage.


----- Dates19:
Class Dates19 helps with Java date values allowing you to quickly return/get a date in a common format without a lot of thought or fuss.  It accepts a Date parameter.  The date passed in must be a  std  Java.util.Date().
Like:  Mon Dec 16 15:51:46 CST 2019
The usual format is:  "EEE MMM d HH:mm:ss zzz yyyy"
Accomplished simply as:  Date dateNow = new Java.util.Date();

Class dates19 methods:
-- String dateFormat(Date, int ):  Accetps a Date and an integer and returns a date string indicated by the int value parameter:
   int:  indicates the date format desired:  
   1= std short format nn-nn-nnnn, like:  12-10-2019
   5= Dec 10 2019
   6= Dec 10 2019 10:20
   7= long format, like:   December 10, 2019
   8= long format with time, like:  	December 10, 2019 10:20
I was undecided on  format for 2 and 3, so I they are skipped for now.

Or simply use:
-- String dateFormat(Date ):  Accetps a Date and returns a date string in a short format like  "12-10-2019"

USAGE sample:
```
  dateNow = new java.util.Date();     // instantiate a Date object -- requires an  'import java.util.Date();' stmt.
  String dateStr1 = dateFormat(dateNow, 7);   // call dateFormat(), saving to string var.
Returns a value like:   December 10, 2019
```

There are other methods within this class I will describe as time permits:
dateDay, dateMonth, dateYear, dateGetMonthLong, etc.




///eof


