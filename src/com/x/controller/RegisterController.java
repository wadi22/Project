package com.x.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.x.dao.LoginDAO;
import com.x.dao.LoginDAOImpl;
import com.x.model.Login;
import com.x.util.DbUtil;



public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    String uname;
    String upass;
    Statement stmt;
    ResultSet rs;
    RequestDispatcher dispatch;
    private Connection con;
	private LoginDAO lo;
   //private static final String LOGIN_PAGE ="/login.jsp";
   //private static final String LIST="list.jsp";
    public RegisterController() {
       lo=new LoginDAOImpl();
       con=DbUtil.getConnection(); 
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
					Login l=new Login();
					
					l.setUsername( request.getParameter( "username" ) );
					l.setPassword( request.getParameter( "password" ) );
					l.setFirstname(request.getParameter("firstname"));
					l.setLastname(request.getParameter("lastname"));
					l.setDob(request.getParameter("dob"));
					l.setAddress(request.getParameter("address"));
					l.setNumber(request.getParameter("number"));
					
					System.out.println("call say pehlay");
		      lo.addUser(l);
		      System.out.println("call kay bad");
		      dispatch=request.getRequestDispatcher("index.jsp");       
		      dispatch.forward(request, response);
					}			
			
			

		

}