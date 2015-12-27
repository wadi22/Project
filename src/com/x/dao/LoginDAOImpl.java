package com.x.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.x.model.EventModel;
import com.x.model.Login;
import com.x.model.Managers;
import com.x.model.Order;
import com.x.model.insman;
import com.x.util.DbUtil;

public class LoginDAOImpl implements LoginDAO {
	private Connection con;
	private ResultSet rs;
	PreparedStatement prep;
	public LoginDAOImpl(){
		con=DbUtil.getConnection();
	}	
	
	public Login checkUser(String user, String pass) {
		Login log = new Login();
		log.setFlag(false);
		try {
			 String sql="SELECT * FROM events.register where username='"+user+"'and password='"+pass+"'";
			 prep=con.prepareStatement(sql);
			
		   
		    rs = prep.executeQuery(sql);
		   
		    if(rs.next()){
		    	log.setUserId(rs.getInt("userId"));
		    	log.setUsername(rs.getString("username"));
		    	log.setFlag(true);
		    }
		}catch (Exception e) {
			// TODO: handle exception
		}
		return log;
	}

	public void insertmanager (insman i) {
		 try {
	            String query = "insert into events.emanagers(managerName,Address,Number,Email,speciality) values (?,?,?,?,?);";
				prep=con.prepareStatement(query);
	            prep.setString( 1, i.getManagerName());
	            prep.setString( 2, i.getAddress() );
	            prep.setString( 3, i.getNumber() );
	            prep.setString( 4, i.getEmail() );
	            prep.setString( 5, i.getSpeciality());
	            prep.executeUpdate();
	            prep.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }}
	
	
	public void addUser(Login log) {
		  String query = "insert into events.register (username,password,firstname,lastname,dob,address,number) values (?,?,?,?,?,?,?)";
		  try {
			prep=con.prepareStatement(query);
			prep.setString(1,log.getUsername());
		   prep.setString(2, log.getPassword());
		   prep.setString(3, log.getFirstname());
		   prep.setString(4, log.getLastname());
		   prep.setString(5,log.getDob());
		   prep.setString(6,log.getAddress());
		   prep.setString(7,log.getNumber());
		   prep.executeUpdate();
           prep.close();
		  
		   } 
		  
		  
		  catch (SQLException e) {
			e.printStackTrace();
		}
		  
		  
	}


	public boolean addOrder(Order o) {
		boolean flag = false;
		String query2="insert into events.order(name,location,number,email,events,requirements,managerName) values(?,?,?,?,?,?,?)";
		try {
			prep=con.prepareStatement(query2);
			prep.setString(1,o.getName());
			prep.setString(2,o.getLocation());
			prep.setString(3,o.getNumber());
			prep.setString(4,o.getEmail());
			prep.setString(5, o.getEvents());
			prep.setString(6, o.getRequirements());
			prep.setString(7, o.getManagerName());
		//	prep.setInt(8, Integer.parseInt(o.getUserId()));
			prep.executeUpdate();
			prep.close();
			flag = true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;
		
	}
	public List<EventModel> listEvents(){
		System.out.println("Inside DAO events");
		String sql="SELECT * FROM events.events";
		List<EventModel> list = new ArrayList<EventModel>();
		 try {
			prep=con.prepareStatement(sql);
			rs = prep.executeQuery();
			while (rs.next()) {
				EventModel even = new EventModel();
				even.setEventId(rs.getInt("eventId"));
				even.setEventName(rs.getString("eventName"));
				even.setPrice(rs.getDouble("price"));
				list.add(even);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return list;
	}

	
	public List<Managers> searchManager(String search){
		System.out.println("Inside DAO search: "+search);
		String sql="SELECT * FROM events.emanagers WHERE speciality LIKE '%"+search+"%'";
		List<Managers> list = new ArrayList<Managers>();
		 try {
			prep=con.prepareStatement(sql);
			rs = prep.executeQuery();
			while (rs.next()) {
				Managers mngr = new Managers();
				mngr.setMnagerId(rs.getInt("ManagerID"));
				mngr.setManagerName(rs.getString("managerName"));
				mngr.setEmail(rs.getString("Email"));
				mngr.setAddress(rs.getString("Address"));
				mngr.setLink(rs.getString("link"));
				mngr.setNumber(rs.getString("Number"));
				mngr.setSpeciality(rs.getString("speciality"));
				list.add(mngr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return list;
	}

	public List<Managers> managerList(){
		 String sql="SELECT * FROM events.emanagers";
		 List<Managers> list = new ArrayList<Managers>();
		 try {
			prep=con.prepareStatement(sql);
			rs = prep.executeQuery();
			while (rs.next()) {
				Managers mngr = new Managers();
				mngr.setMnagerId(rs.getInt("ManagerID"));
				mngr.setManagerName(rs.getString("managerName"));
				mngr.setEmail(rs.getString("Email"));
				mngr.setAddress(rs.getString("Address"));
				mngr.setLink(rs.getString("link"));
				mngr.setNumber(rs.getString("Number"));
				list.add(mngr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return list;
	}
	

	
}
