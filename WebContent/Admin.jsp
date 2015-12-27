<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Eventists - We help your dreams comes true | </title>
  <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
  <link href="css/bootstrap-3.3.4.css" rel="stylesheet" type="text/css">
  <link href="css/animate.min.css" rel="stylesheet"> 
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/lightbox.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">

  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
  <![endif]-->
  
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/favicon.ico">
  <style>
  
  </style>
</head><!--/head-->

<body>

  <!--.preloader-->
  <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
  <!--/.preloader-->

  <header id="home">
    <div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(images/slider/1.jpg)">
          <div class="caption">
            <h1 class="animated fadeInLeftBig">Admin Portal</h1>
            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">View Orders</a>
          </div>
        </div>
        <a class="left-control" href="#home-slider" data-slide="prev"><i class="fa fa-angle-left"></i></a>
      <a class="right-control" href="#home-slider" data-slide="next"><i class="fa fa-angle-right"></i></a>

      <a id="tohash" href="#services"><i class="fa fa-angle-down"></i></a>

    </div><!--/#home-slider-->
    <div class="main-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">
            <h1><img class="img-responsive" src="images/logo.png" alt="logo"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
            <li class="scroll active"><a href="#services">View Orders</a></li>
            <li class="scroll"><a href="#about-us">Manage Managers</a></li>                     
            <li class="scroll"><a href="#team">Manager List</a></li>
           
          </ul>
        </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->
  <section id="services">
    <div class="container">
      <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      			  
      
	<div align="center">			  
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#bbb;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#594F4F;background-color:#E0FFEB;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#493F3F;background-color:#9DE0AD;}
.tg .tg-dcvw{font-weight:bold;background-color:#9de0ad;text-align:center;vertical-align:top}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-ylsa{font-weight:bold;font-size:20px;background-color:#e0ffeb;text-align:center;vertical-align:top}
.tg .tg-dirm{background-color:#e0ffeb;text-align:center;vertical-align:top}
</style>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("cid");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "events";
String userId = "root";
String password = "123456";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<table class="tg" style="undefined;table-layout: fixed; width: 1087px">
<colgroup>
<col style="width: 55px">
<col style="width: 173px">
<col style="width: 134px">
<col style="width: 162px">
<col style="width: 162px">
<col style="width: 95px">
<col style="width: 94px">
<col style="width: 170px">
<col style="width: 170px">
</colgroup>
  <tr>
    <th class="tg-ylsa" colspan="9">All Orders</th>
    <th class="tg-dirm"></th>
    <th class="tg-dirm"></th>
  </tr>
  <tr>
    <td class="tg-dcvw">ID</td>
    <td class="tg-dcvw">Full Name</td>
    <td class="tg-dcvw">Location</td>
    <td class="tg-dcvw">Number</td>
    <td class="tg-dcvw">Email</td>
    <td class="tg-dcvw">Events</td>
    <td class="tg-dcvw">Requirements</td>
    <td class="tg-dcvw">Date</td>
    <td class="tg-dcvw">managerName</td>
  </tr>
  
    <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * from events.order";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
 <tr>
    <td class="tg-baqh"><%=resultSet.getString("orderId")%></td>
    <td class="tg-baqh"><%=resultSet.getString("name")%></td>
    <td class="tg-baqh"><%=resultSet.getString("location")%></td>
    <td class="tg-baqh"><%=resultSet.getString("number")%></td>
    <td class="tg-baqh"><%=resultSet.getString("email")%></td>
    <td class="tg-baqh"><%=resultSet.getString("events")%></td>
    <td class="tg-baqh"><%=resultSet.getString("requirements")%></td>
    <td class="tg-baqh"><%=resultSet.getString("date")%></td>
    <td class="tg-baqh"><%=resultSet.getString("managerName")%></td>
  <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

  </tr>
</table>			  
</div>			  
      
      </div>
      </div>
  </section><!--/#services-->

  <section id="about-us" class="parallax" align="center">
 	<form action="insertmanager" method="post" class="formreg">
   				<div class="form-group">
					<input style="color: Black;" type="text" name="managerName" id="managerName" tabindex="2" class="form-control" placeholder="managerName">
				</div>

   				<div class="form-group">
					<input style="color: Black;" type="text" name="Address" id="Address" tabindex="2" class="form-control" placeholder="Address">
				</div>

   				<div class="form-group">
					<input style="color: Black;" type="text" name="Number" id="Number" tabindex="2" class="form-control" placeholder="Number">
				</div>

   				<div class="form-group">
					<input style="color: Black;" type="text" name="Email" id="Email" tabindex="2" class="form-control" placeholder="Email">
				</div>

   				<div class="form-group">
					<input style="color: Black;" type="text" name="speciality" id="speciality" tabindex="2" class="form-control" placeholder="speciality">
				</div>

				<div class="form-group">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Insert"> </Button>
						</div>
					</div>
				</div>
</form>
    
      </section><!--/#about-us-->

	<section id="team">
	
<table class="tg" style="undefined;table-layout: fixed; width: 1087px">
<colgroup>
<col style="width: 55px">
<col style="width: 173px">
<col style="width: 134px">
<col style="width: 162px">
<col style="width: 162px">
<col style="width: 95px">
<col style="width: 94px">
<col style="width: 170px">
<col style="width: 170px">
</colgroup>
  <tr>
    <th class="tg-ylsa" colspan="5">Manager List</th>
    <th class="tg-dirm"></th>
    <th class="tg-dirm"></th>
  </tr>
  <tr>
    <td class="tg-dcvw">ID</td>
    <td class="tg-dcvw">Manager Name</td>
    <td class="tg-dcvw">Address</td>
    <td class="tg-dcvw">Number</td>
   <td class="tg-dcvw">Email</td>
   <td class="tg-dcvw">Page link</td>
    <td class="tg-dcvw">Speciality</td>
     </tr>
  
    <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql1 ="SELECT * FROM events.emanagers";
ResultSet resultset = null;
resultset = statement.executeQuery(sql1);
while(resultSet.next()){
%>
 <tr>
    <td class="tg-baqh"><%=resultset.getString("ManagerID")%></td>
    <td class="tg-baqh"><%=resultset.getString("managerName")%></td>
    <td class="tg-baqh"><%=resultset.getString("Address")%></td>
    <td class="tg-baqh"><%=resultset.getString("Number")%></td>
    <td class="tg-baqh"><%=resultset.getString("Email")%></td>
    <td class="tg-baqh"><%=resultset.getString("link")%></td>
    <td class="tg-baqh"><%=resultset.getString("speciality")%></td>
  <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

  </tr>
</table>			  
	</section>

  <script type="text/javascript" src="js/jquery.js"></script>
  <!-- <script type="text/javascript" src="js/bootstrap.min.js"></script> -->
  <script src="js/bootstrap-3.3.4.js" type="text/javascript"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="js/jquery.inview.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/mousescroll.js"></script>
  <script type="text/javascript" src="js/smoothscroll.js"></script>
  <script type="text/javascript" src="js/jquery.countTo.js"></script>
  <script type="text/javascript" src="js/lightbox.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>
</body>
</html>