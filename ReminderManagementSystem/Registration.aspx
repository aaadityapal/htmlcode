﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ReminderManagementSystem.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
  form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] ,input[type=email] {
  width: 200px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

input[type=submit]{
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50px%;
}

input[type=submit]:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}



span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
}
.container{
    margin:200px 0px 200px 550px;
 
}
table{
    /*border: 1px solid black;*/
}
body {
  background-color: lightblue;
}
</style>
    <script>
        function validateData() {
            debugger;
            var txtName = document.getElementById("<%=txtName.ClientID%>").value;
            var txtMobile = document.getElementById("<%=txtMobile.ClientID%>").value;
            var txtEmail = document.getElementById("<%=txtEmail.ClientID%>").value;
            var txtPassword = document.getElementById("<%=txtPassword.ClientID%>").value;
            if (txtName == '') {
                alert("Please Enter User Name!");
                return false;
            }
            
            else if (txtEmail == '') {
                alert("Please Enter Email!");
                return false;
            }
            else if (txtMobile == '') {
                alert("Please Enter Mobile Number!");
                return false;
            }
            else if (txtPassword == '') {
                alert("Please Enter a Password!");
                return false;
            }
            
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <table>
        <tr>

    <td><label for="uname"><b>Username :</b></label></td>
    <td><asp:TextBox ID="txtName" runat="server" placeholder="Enter Username" ></asp:TextBox></td>
        </tr>
          <tr>

    <td><label for="uname"><b>Email :</b></label></td>
    <td><asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" textmode="Email" MaxLength="30"></asp:TextBox></td>
        </tr>
            <tr>

    <td><label for="uname"><b>Mobile :</b></label></td>
    <td><asp:TextBox ID="txtMobile" runat="server" placeholder="Enter Mobile" ></asp:TextBox></td>
        </tr>
        <tr>
    <td><label for="psw"><b>Password :</b></label></td>
    <td><asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password" ></asp:TextBox></td>
        </tr>
        <tr>
      <td><asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" onClientClick="return validateData();"/></td>
  

     <td><asp:Button ID="Button1" runat="server" Text="Cancel" /></td>
    
 
        </tr>
            <tr>
                <td></td>
                <td><a href="Login.aspx">Already have an account?</a></td>
            </tr>
      </table>
         </div>
    </form>
</body>
</html>
