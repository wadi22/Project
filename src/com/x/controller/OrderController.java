package com.x.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.x.dao.LoginDAO;
import com.x.dao.LoginDAOImpl;
import com.x.model.EventModel;
import com.x.model.Order;
import com.x.util.DbUtil;

public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private LoginDAO log;
	RequestDispatcher dispatcher;

	public OrderController() {
		log = new LoginDAOImpl();
		con = DbUtil.getConnection();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Order o = new Order();
		//o.setUserId(request.getParameter("userId"));
		o.setName(request.getParameter("name"));
		o.setLocation(request.getParameter("location"));
		o.setNumber(request.getParameter("number"));
		o.setEmail(request.getParameter("email"));
		o.setPersons(Integer.parseInt(request.getParameter("persons")));
		String[] events1 = request.getParameterValues("event");
		String finalEvents= "";
		for (int i = 0; i < events1.length; i++) {
			finalEvents += events1[i]+" ";
		}
		o.setEvents(finalEvents);
		//o.setEvents(Arrays.toString(events));
		o.setManagerName(request.getParameter("managerName"));
		o.setRequirements(request.getParameter("requirements"));
		
		LoginDAOImpl dao = new LoginDAOImpl();
	/*	List<EventModel> model = new ArrayList<EventModel>();
		model = dao.listEvents();
		int i=1;
		for (Iterator iterator = model.iterator(); iterator.hasNext();) {
			EventModel eventModel = (EventModel) iterator.next();
			if(eventModel.getEventId() == Integer.parseInt(events1[i])){
				
			}
			i++;
		}
		*/
		if(log.addOrder(o)){
			request.setAttribute("prices", dao.listEvents());
			request.setAttribute("userOrder", o);
			 dispatcher=request.getRequestDispatcher("checkout.jsp");
			 dispatcher.forward(request, response);
		}

	}

}
