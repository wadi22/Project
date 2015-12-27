package com.x.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.x.dao.LoginDAO;
import com.x.dao.LoginDAOImpl;
import com.x.model.insman;
import com.x.util.DbUtil;

public class insertmanager extends HttpServlet {
	Statement stmt;
    ResultSet rs;
    RequestDispatcher dispatch;
    private Connection con;
	private LoginDAO lo;
	
	private static final long serialVersionUID = 1L;
    public insertmanager() {
   	 lo=new LoginDAOImpl();
     con=DbUtil.getConnection();   
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	insman i = new insman();
		i.setManagerName(request.getParameter( "managerName" ));
		i.setAddress(request.getParameter( "Address" ));
		i.setNumber(request.getParameter( "Number" ));
		i.setEmail(request.getParameter( "Email" ));
		i.setSpeciality(request.getParameter( "speciality" ));
		
		System.out.println("call say pehlay");
	      lo.insertmanager(i);
	      System.out.println("call kay bad");
	      dispatch=request.getRequestDispatcher("managerinserted.jsp");       
	      dispatch.forward(request, response);
	}

    
    }

