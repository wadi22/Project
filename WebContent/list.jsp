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
            <h1 class="animated fadeInLeftBig">Welcome <span>back</span></h1>
            <p class="animated fadeInRightBig">Here you can book events</p>
            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#about-us">Book now</a>
          </div>
        </div>
        <div class="item" style="background-image: url(images/slider/3.jpg)">
          <div class="caption">
            <h1 class="animated fadeInLeftBig">We help you make your <span>dreams</span> come true</h1>
            <p class="animated fadeInRightBig">&nbsp;</p>
            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#about-us">Book now</a>
          </div>
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
            <li class="scroll"><a href="#about-us">Book an event</a></li>                     
            <li class="scroll"><a href="#portfolio">Portfolios</a></li>
            <li class="scroll"><a href="#blog">Search</a></li>
			<li><a href="index.jsp">logout</a></li>
                  
          </ul>
        </div>
      </div>
    </div><!--/#main-nav-->
  </header>
  <section id="about-us" class="parallax" align="center">
   <div class="container" >
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6 col-md-12">
								<a href="#" class="active" id="login-form-link">Book an Event</a>
							</div>
							
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form action="OrderController" method="post">
<input type="hidden" name="userId" value="<%=request.getAttribute("userId")%>">
				
				<div class="form-group">
					<input style="color: Black;" type="text" name="managerName" id="name" tabindex="2" class="form-control" placeholder="Manager Name">
				</div>
                <div class="form-group">
					<input style="color: Black;" type="text" name="name" id="name" tabindex="2" class="form-control" placeholder="Name">
				</div>
                
                <div class="form-group">
	<input style="color: Black;" type="text" name="location" id="location" tabindex="2" class="form-control" placeholder="Location">
				</div>
                
                <div class="form-group">
					<input style="color: Black;" type="text" name="number" id="number" tabindex="2" class="form-control" placeholder="Number">
				</div>
                
                <div class="form-group">
					<input style="color: Black;" type="text" name="email" id="email" tabindex="2" class="form-control" placeholder="email">
				</div>
                
                <div class="form-group">
					<input style="color: Black;" type="number" name="persons" id="persons" tabindex="2" class="form-control" placeholder="How many Persons">
				</div>
				<div class="form-group">
					<input style="color: Black;" type="date" name="date" id="name" tabindex="2" class="form-control" placeholder="Name">
				</div>
                <div >
					<p class="col-md-5" style="color:Black">Wedding</p>
					<input style="color: Black;" type="checkbox" name="event" value="1" >
	              	<p></p>
                    <p class="col-md-5" style="color:Black">Birthdays</p>
                    <input style="color: Black;" type="checkbox" name="event" value="2">
                 	<p></p>
                    <p class="col-md-5" style="color:Black">Baby Showers</p>
                    <input style="color: Black;" type="checkbox" name="event" value="3">
                 	<p></p>
                    <p class="col-md-5" style="color:Black">Cooperate Events</p>
                    <input style="color: Black;" type="checkbox" name="event" value="4">
                 	<p></p>
                    <p class="col-md-5" style="color:Black">Educational Events</p>
                    <input style="color: Black;" type="checkbox" name="event" value="5">
                 	<p></p>
                    <p class="col-md-5" style="color:Black">Exhibition</p>
                    <input style="color: Black;" type="checkbox" name="event" value="6">
                 	<p></p>
                    <p class="col-md-5" style="color:Black">Concerts</p>
                    <input style="color: Black;" type="checkbox" name="event" value="7">
                </div>
                
                 <div class="form-group">
				
                ]	<input style="color: Black;" type="text" name="requirements" id="requirements" tabindex="2" class="form-control" placeholder="requirements">
				</div>
				
                <div class="col-sm-6 col-sm-offset-3">
					<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Orders">
				</div>                              
</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

      </section><!--/#about-us-->


  <section id="portfolio">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
          <h2>Event Manager Portfolios</h2>
          <p></p>
        </div>
      </div> 
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3">
          <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/1.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Nemoz</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="1.jsp"><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="400ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/2.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Event Architects</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="2.jsp"><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="500ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/3.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Eventiments</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="3.jsp"><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/4.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Empire Marquee</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="4.jsp"><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="700ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/5.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Asian Events</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="5.jsp"><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="800ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/6.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Eventox</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="6.jsp" ><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="900ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/7.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Amir Rajput</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="7.jsp" ><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="1000ms">
            <div class="folio-image">
              <img class="img-responsive" src="images/portfolio/8.jpg" alt="">
            </div>
            <div class="overlay">
              <div class="overlay-content">
                <div class="overlay-text">
                  <div class="folio-info">
                    <h3>Shah Jahan</h3>
                    <p></p>
                  </div>
                  <div class="folio-overview">
                    <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                    <span class="folio-expand"><a href="8.jsp" ><i class="fa fa-search-plus"></i></a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="portfolio-single-wrap">
      <div id="portfolio-single">
      </div>
    </div><!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->


  <section id="blog">
   <div class="container" align="center">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    	<div class="row" align="center">
		
 <form action="ManagerController" >
 <font color="white"><input type="hidden" name="action" value="search">
Search Managers:  <font color="black"><input type="text" name="manager" style="color:black">
<input type="submit" value="Search">
</form>
<table border=1>
	<tbody>
		<c:forEach items="${managers}" var="manager">
			<tr>
				<td><a href="<c:out value="${manager.link }" />"><c:out value="${manager.managerName }" /></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

		
            
	</div>
      </section><!--/#blog-->

  <section id="contact">
    <div id="google-map" class="wow fadeIn" data-latitude="33.671998" data-longitude="73.071242" data-wow-duration="1000ms" data-wow-delay="400ms"></div>
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
              </form>   
            </div>
              
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <p>&copy; 2015 Eventists.</p>
          </div>
          <div class="col-sm-6">
            <p class="pull-right">Designed by <a href="http://www.themeum.com/">Wadood Ahmed</a></p>
          </div>
        </div>
      </div>
    </div>
  </footer>

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