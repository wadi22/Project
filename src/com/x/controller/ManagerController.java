package com.x.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.x.dao.LoginDAOImpl;
public class ManagerController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println(action);
		RequestDispatcher dis;
		LoginDAOImpl dao  = new LoginDAOImpl();
		if (action.equalsIgnoreCase("list.jsp") ) {
			request.setAttribute("managers", dao.managerList());
			dis = request.getRequestDispatcher("list.jsp");
			dis.forward(request, response);
			
		}
		else
			if(action.equalsIgnoreCase("search")){
			String ser = request.getParameter("manager");
			System.out.println(ser);
			request.setAttribute("managers", dao.searchManager(ser));
			dis = request.getRequestDispatcher("list.jsp");
			dis.forward(request, response);
		}
	}


}
