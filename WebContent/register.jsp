<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Sign Up</title>
  <link rel="stylesheet" href="csss/style.css">
<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>

  <div class="container">
    <section class="register">
      <h1>Client Sign Up</h1>
      <form method="post" action="RegisterController">
      <div class="reg_section personal_info">
 
  <h3>Your Personal Information</h3>
      <input type="text" name="username" value="" placeholder="Username"><br>
      <input type="password" name="password" value="" placeholder="Password"><br>
      <input type="text"  name="firstname"value="" placeholder="Firstname"><br>
      <input type="text"  name="lastname"value="" placeholder="Lastname"><br>
      <input type="text"  name="dob"value="" placeholder="Dob"><br>
      <input type="text" name="address"value="" placeholder="Address"><br>
       <input type="text"  name="number"value="" placeholder="Number"><br>
      </div>
  <input type="submit" value="Sign Up"><br>
      
      

      </form>
    </section>
  </div>

</body>
</html>