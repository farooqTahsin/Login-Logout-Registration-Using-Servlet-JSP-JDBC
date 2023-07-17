
// DAO : Data Access Object

package com.login.dao;

import java.sql.*;


public class LoginDao {
	
	
	String url = "jdbc:mysql://localhost:3306/home";
	String dbName = "root";
	String dbPass = "FarooqTahsin23";	
	Connection con = null;
		
	public void connect () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    con = DriverManager.getConnection(url,dbName,dbPass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean check(String userName, String password) {
		connect();
		String query = "select userName, pass from login where userName=? and pass=?";
		try {
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, userName);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return false;
	}
	public void addUser( String email, String userName, String password, String phone) {
		connect();
		String query = "insert into login values (?,?,?,?)";
		try {
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, email);
			st.setString(2, userName);
			st.setString(3, password);
			st.setString(4, phone);
	        st.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public String getPhone(String userName) {
		connect();
		String query = "select phone from login where userName = ?";
		try {
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, userName);
			ResultSet rs = st.executeQuery();
			rs.next();
			String phone = rs.getString(1);
			return phone;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public String getEmail(String userName) {
		connect();
		String query = "select email from login where userName = ?";
		try {
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, userName);
			ResultSet rs = st.executeQuery();
			rs.next();
			String email = rs.getString(1);
			return email;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
