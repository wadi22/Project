<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.x.model.Order" %>
    <%@ page import="com.x.model.EventModel" %>
    <%@ page import="com.x.dao.LoginDAOImpl" %>
    <%@ page import="java.util.Iterator" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Eventists - We help your dreams comes true |</title>
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
</head>
<body >

<%
Order obj = new Order();
obj = (Order)request.getAttribute("userOrder");
String events = obj.getEvents();
System.out.println("From JSP events :"+events);
String[] strArray = events.split(" ");
System.out.println("From JSP "+strArray[0]);
int head = strArray.length;


%>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#bbb;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#594F4F;background-color:#E0FFEB;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#493F3F;background-color:#9DE0AD;}
.tg .tg-z9mx{font-weight:bold;background-color:#219fcc;text-align:center;vertical-align:top}
.tg .tg-q3eh{background-color:#68cbd0;text-align:center;vertical-align:top}
.tg .tg-50dt{font-weight:bold;font-size:20px;background-color:#68cbd0;text-align:center;vertical-align:top}
.tg .tg-93t1{background-color:#68cbd0;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 420px">
<colgroup>
<col style="width: 133px">
<col style="width: 147px">
<col style="width: 140px">
</colgroup>
  <tr>
    <th class="tg-50dt" colspan="3">Check Out</th>
  </tr>
  	
	<tr>Selected Events: 
	
		<%-- <c:forEach items="${prices}" var="price"> --%>
		<%
		int i=0;
		double total=0;
		LoginDAOImpl dao = new LoginDAOImpl();
		List<EventModel> model = new ArrayList<EventModel>();
		model = dao.listEvents();
		double div,net;
		int persons = obj.getPersons();
		for (Iterator iterator = model.iterator(); iterator.hasNext();) {
			i=0;
			EventModel eventModel = (EventModel) iterator.next();
			while(i<head){
				if(eventModel.getEventId() == Integer.parseInt(strArray[i])){
					div = eventModel.getPrice() / 20;
					net = div * persons;
				%>
				<tr  class="tg-z9mx">
				<td  class="tg-z9mx"><%=eventModel.getEventName() %></td>
				<td class="tg-z9mx"><%=net %></td>
				</tr>
				<%
				total += net;
					
				}
				i++;
			}
		}
		%>
			<%-- 
				<%
				String events1 = obj.getEvents();
				System.out.println("From JSP events :"+events1);
				String[] strArray = events1.split(" ");
				LoginDAOImpl dao = new LoginDAOImpl();
				List<EventModel> model = new ArrayList<EventModel>();
				model = dao.listEvents();
				int i=0;
				for (Iterator iterator = model.iterator(); iterator.hasNext();) {
					EventModel eventModel = (EventModel) iterator.next();
					if(eventModel.getEventId() == Integer.parseInt(strArray[i])){
						%>
						<tr>
						<%=eventModel.getEventName() %>
						</tr>
						<%
					}
					i++;
				}
				%>
			 --%>
		<!-- </c:forEach> -->
	</tr>
<tr>Total: <%=total %></tr>  
</table>
</body>
</html>












