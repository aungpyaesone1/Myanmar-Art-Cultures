package com.springboot.demo.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

public class DBFactory {
	private Connection con = null;
	private static final String URL = "jdbc:mysql://localhost:3306/mac";
	private static final String USERNAME = "root"; 
	private static final String PASSWORD = ""; 
	 
	public DBFactory() {
		
	}
	
	private void open() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally { }
	}
	
	private void close() {
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {	}
		}
	}
	
	public boolean insert(String table, String[] columns, Object[] data) {
		boolean response = false;
		if(columns.length < 1 && columns.length != data.length) return response;
		
		open();
		
		String query = "INSERT INTO "+table+"("+columns[0];
		for(int i=1; i<columns.length; i++) 
			query += ","+columns[i];
		query += ") VALUES('"+data[0]+"'";
		for(int i=1; i<data.length; i++) 
			query += ",'"+data[i]+"'";
		query += ")";
		
		try {
			Statement st = con.createStatement();
			st.executeUpdate(query);
			st.close();
			response = true;
		}catch(MySQLIntegrityConstraintViolationException e1) {
			e1.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		close();
		
		return response;
	}
	
	public String select(String table, String column, String condition) {
		String query = "SELECT "+column+" FROM "+table + " WHERE "+condition;
		String response = null;
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				response = rs.getString(1);
				break;
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	
	public int Count(String table) {
		String query = "SELECT COUNT(*) FROM "+table;
		open();
		
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				return rs.getInt(1);
			}
			
			rs.close();
			st.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return 0;
	}
	
	
	public List<String> selectList(String table, String column, String condition) {
		String query = "SELECT "+column+" FROM "+table + " WHERE "+condition;
		ArrayList<String> response = new ArrayList<String>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				response.add(rs.getString(1));
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	
	public String[] selectObject(String table, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table + " WHERE "+condition;
		String[] response =null;
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				response = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					response[i] = rs.getString(i+1);
				}
				break;
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	public String[] selectObjectInPaid(String table, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table + " WHERE "+condition+" and a_mount=(SELECT MAX(a_amount) FROM auction_paid";
		String[] response =null;
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				response = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					response[i] = rs.getString(i+1);
				}
				break;
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	public String[] selectObjectformaxbiduser(String table,String table1,String table3, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table+","+table1+","+table3 + " WHERE "+condition+" and a_post_id=a_post_id1 and a_user_id=a_user_id1";
		String[] response =null;
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				response = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					response[i] = rs.getString(i+1);
				}
				break;
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	public int selectRowCount(String condition) throws SQLException {
		String query="select count(*) AS rowcount from auction_paid where "+condition;
		open();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		rs.next();
		int rows=rs.getInt("rowcount");
		rs.close();
		
		return rows;
	}
	
	public String[] selectObjectMaxBid(String table, String[] columns, String condition) {
		String query = "SELECT MAX(a_amount) from auction_paid where "+condition;
		
		
		String[] response =null;
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				response = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					response[i] = rs.getString(i+1);
				}
				break;
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	
	public List<String[]> selectObjectList(String table, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table + " WHERE "+condition+" ORDER BY "+columns[0]+" DESC";
		List<String[]> response = new ArrayList<String[]>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				String[] data = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					data[i] = rs.getString(i+1);
				}
				response.add(data);
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}

	public List<String[]> selectObjectListPag(String table, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table +condition;
		List<String[]> response = new ArrayList<String[]>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				String[] data = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					data[i] = rs.getString(i+1);
				}
				response.add(data);
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	
	public List<String[]> selectObjectListForArt1(String table, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table + " WHERE "+columns[9]+" = "+1+" ORDER BY "+columns[0]+" DESC";
		List<String[]> response = new ArrayList<String[]>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				String[] data = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					data[i] = rs.getString(i+1);
				}
				response.add(data);
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	public List<String[]> selectObjectListForArt(String table,String table1, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table+","+table1+ " WHERE "+columns[9]+" = "+1+" and "+columns[7]+" = "+columns[11] +" ORDER BY s_id DESC";
		List<String[]> response = new ArrayList<String[]>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				String[] data = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					data[i] = rs.getString(i+1);
				}
				response.add(data);
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	public List<String[]> selectObjectListForArtProfile(String table,String table1, String[] columns, int condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table+","+table1 + " WHERE "+columns[11]+" = "+condition+" and "+columns[7]+" = "+columns[11]+" and "+columns[9]+" = "+1+" ORDER BY "+columns[0]+" DESC";
		List<String[]> response = new ArrayList<String[]>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				String[] data = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					data[i] = rs.getString(i+1);
				}
				response.add(data);
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	
	public List<String[]> selectObjectList2(String table, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table + " WHERE "+condition+" ORDER BY "+columns[0]+" DESC LIMIT "+2;
		List<String[]> response = new ArrayList<String[]>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				String[] data = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					data[i] = rs.getString(i+1);
				}
				response.add(data);
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	public List<String[]> selectObjectList3(String table, String[] columns, String condition) {
		String query = "SELECT "+columns[0];
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i];
		}
		query += " FROM "+table + " WHERE "+condition+" ORDER BY "+columns[0]+" DESC LIMIT "+3;
		List<String[]> response = new ArrayList<String[]>();
		open();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				String[] data = new String[columns.length];
				for(int i=0; i<columns.length; i++) {
					data[i] = rs.getString(i+1);
				}
				response.add(data);
			}
			rs.close();
			st.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		return response;
	}
	
	public boolean update(String table, String[] columns, Object[] data, String condition) {
		boolean response = false;
		String query = "UPDATE "+table+" SET "+columns[0]+"='"+data[0]+"'";
		for(int i=1; i<columns.length; i++) {
			query += ","+columns[i]+"='"+data[i]+"'";
		}
		query += " WHERE "+condition;
		
		open();
		try {
			Statement st = con.createStatement();
			st.executeUpdate(query);
			st.close();
			response = true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		
		return response;
	}
	
	public boolean delete(String table, String condition) {
		boolean response = false;
		String query = "DELETE FROM "+table+" WHERE "+condition;
		
		open();
		try {
			Statement st = con.createStatement();
			st.executeUpdate(query);
			st.close();
			response = true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();
		
		return response;
	}

}
