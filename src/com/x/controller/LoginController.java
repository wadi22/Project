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

import com.x.util.DbUtil;
import com.x.dao.LoginDAOImpl;
import com.x.model.Login;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	String uname;
	String upass;
	Statement stmt;
	ResultSet rs;
	RequestDispatcher dispatch;

	public LoginController() {
		con = DbUtil.getConnection();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		uname = request.getParameter("username"); // new work
		upass = request.getParameter("password");
		LoginDAOImpl dao = new LoginDAOImpl();
		Login user;
		user = dao.checkUser(uname, upass);

		if (user.isFlag()) {
			int userId = user.getUserId();
			request.setAttribute("userId", userId);
			dispatch = request.getRequestDispatcher("list.jsp");
			dispatch.forward(request, response);
		} 
		else {
			dispatch = request.getRequestDispatcher("error.jsp");

			dispatch.forward(request, response);
			System.out.println("first register ");
		}
/*
		try {
			String sql = "SELECT * FROM events.register where username='"
					+ uname + "'and password='" + upass + "'";
			PreparedStatement prep = con.prepareStatement(sql);

			rs = prep.executeQuery(sql);

			if (rs.next()) {
				if ((uname.equalsIgnoreCase(rs.getString("username")) && upass
						.equalsIgnoreCase(rs.getString("password")))) {

					dispatch = request.getRequestDispatcher("view.jsp");
					dispatch.forward(request, response);
					System.out.println(rs);
				}
			} else {
				dispatch = request.getRequestDispatcher("error.jsp");

				dispatch.forward(request, response);
				System.out.println("first register ");
			}

		}

		catch (SQLException e) {
			e.printStackTrace();
		}
*/	}
}
