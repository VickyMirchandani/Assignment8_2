<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JSLoginForm.aspx.cs" Inherits="JSLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JS Login Form</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
       #labelemail{
           width:7%;
           padding:0%;
       }
       #email{
           width:10%;
       }
       #labelpassword{
           width:7%;
       }
       #password{
           width:10%;
       }
    </style>
</head>
<body>
   <form name="sign-up-form" method="post" action="#" id="signupform">
      <label for="email" id="labelemail">Email</label>
      <input type="email" name="email" id="email" autocomplete = "off" required="required" />
       <span id="displayEmailErrorMsg"></span><br />

      <label for="password" id="labelpassword">Password</label>
      <input type="password" name="password" id="password"  autocomplete="off" required="required" />
      <span id="displayPwdErrorMsg"></span> <br />
       <input type="submit" value="Login"/>
   </form>

<p id="showContent"></p>


<script type="text/javascript">


// localstorage feature on form submit
window.onload = function() {

var showContent = document.getElementById('showContent');
  // Check for LocalStorage support.
 if (typeof(Storage) !== "undefined") {

    // Add an event listener for form submissions
    document.getElementById('signupform').addEventListener('submit', function(event) {

       event.preventDefault();
      var userEmail = document.getElementById('email').value;
      var emailGetStorage =  localStorage.getItem('email', email);

    
      if(userEmail !== emailGetStorage)

      {
        showContent.innerHTML = "Sorry, this email address: " + userEmail  + "  is not registered with us. ";
      }else{
          showContent.innerHTML = "Hello this email id  " + emailGetStorage + "  exists. Continue browsing our application";
          window.open("JSHome.aspx");
      }
    
      
    });

  }else {
    alert("Sorry, your browser does not support Web Storage...");
}
  

}
</script>

</body>
</html>
