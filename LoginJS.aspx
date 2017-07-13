<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginJS.aspx.cs" Inherits="LoginJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <button type="button" onclick="location.href='SignUpJS.aspx'" class="float-left submit button">Sign Up</button> 
    <button type="button"  onclick="location.href='JSLoginForm.aspx'" class="float-left submit button">Login</button> 
    </div>
    </form>
    
</body>
</html>
