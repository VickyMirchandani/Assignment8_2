<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUpJs.aspx.cs" Inherits="SignUpJs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JS Sign up Form</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        #Userlabel{
            width:9%;
        }
        #username{
            width:10%;
        }
        #labelpassword{
            width:9%;
        }
        #password{
            width:10%;
        }
        #labelconfpassword{
            width:9%;
        }
        #confirm-password{
            width:10%;
        }
        #labelemail{
            width:9%;
        }
        #email{
            width:10%;
        }

    </style>
</head>
<body>
    <form  name="sign-up-form" method="post" action="#" id="signupform" runat="server">
    <div>
        <label for="username" id="Userlabel">Name:</label>
        <input type="text" name="username" id="username" onkeyup="checkName()" autocomplete="off" required="required"/>

        <span id="displayNameErrorMsg"></span>

        <br />
        <label for="password" id="labelpassword">Password</label>
      <input type="password" name="password" id="password" onkeyup="checkPassword()" autocomplete="off" required="required"/>

        <span id="displayPwdErrorMsg"></span><br />

        <label for="confirm-password" id="labelconfpassword">Confirm Password</label>
      <input type="password" name="confirm-password" id="confirm-password" onkeyup="checkConfPassword()" autocomplete="off" required="required"/><br />

        <label for="email" id="labelemail">Email</label>
      <input type="email" name="email" id="email" onkeyup="checkEmail()" autocomplete = "off" required="required" />

      <span id="displayEmailErrorMsg"></span>
      
      <br />
      <input type="submit" onclick="location.href='JSLoginForm.aspx'" value="Register Now"/>

    </div>
    </form>
    <script type="text/javascript">

        function checkName() {

            var name = document.getElementById("username").value;
            var errorMsg = document.getElementById("displayNameErrorMsg");
            var regex = /^[0-9]+$/;

            if (name == null || name == " " || name.match(regex)) {

                errorMsg.textContent = "Check the entered value. Either it is blank or not valid";
            } else {
                errorMsg.textContent = "";
            }

        }

        function checkPassword() {

            var pwd = document.getElementById("password").value;
            var errorMsgPwd = document.getElementById("displayPwdErrorMsg");

            //var pwdLength = 8;

            //1. (?=.*\d)		#   must contains one digit from 0-9
            //2.   (?=.*[a-z])		#   must contains one lowercase characters
            // 3.  (?=.*[A-Z])		#   must contains one uppercase characters
            //4.  (?=.*[@#$%])		#   must contains one special symbols in the list "@#$%"  


            var passwRegEx = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})";
            var matchRegEx = pwd.match(passwRegEx);

            if (pwd == null || pwd == " " || !matchRegEx) {

                errorMsgPwd.textContent = "Your Password must be of 6 to 10 characters long and must contain characters and underscore ";
            } else {
                errorMsgPwd.textContent = "";
            }

        }


        function checkConfPassword() {

            var pwd = document.getElementById("password").value;
            var confpwd = document.getElementById("confirm-password").value;
            var check = true;
            var errorConfMsgPwd = document.getElementById("displayConfPwdErrorMsg");

            if (pwd !== confpwd) {
                errorConfMsgPwd.textContent = "Incorrect password match";
                check = false;
            } else {
                errorConfMsgPwd.textContent = "";
            }

            return check;
        }


        function checkEmail() {

            var email = document.getElementById("email").value;
            var displayEmailErrorMsg = document.getElementById("displayEmailErrorMsg");

            var test = true;

            if (email.indexOf("@") === -1) {

                displayEmailErrorMsg.textContent = "Not a valid email address";
                test = false;

            } else {
                displayEmailErrorMsg.textContent = "";
            }

            return test;
        }

        // localstorage feature on form submit
        window.onload = function () {

            // Check for LocalStorage support.
            if (typeof (Storage) !== "undefined") {

                // Add an event listener for form submissions
                document.getElementById('signupform').addEventListener('submit', function (event) {

                    event.preventDefault();
                    // Get the value of the form field.
                    var name = document.getElementById('username').value;
                    var pwd = document.getElementById('password').value;
                    var confpwd = document.getElementById('confirm-password').value;
                    var email = document.getElementById('email').value;

                    // Save the name in localStorage.
                    localStorage.setItem('name', name);
                    localStorage.setItem('password', pwd);
                    localStorage.setItem('confirmpassword', confpwd);
                    localStorage.setItem('email', email);

                });

            } else {
                alert("Sorry, your browser does not support Web Storage...");
            }
        }

    </script>
</body>
</html>
