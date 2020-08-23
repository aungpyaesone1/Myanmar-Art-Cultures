package com.springboot.demo.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import com.springboot.demo.model.adminpost;

public class adminpostDao {
	public int getValidUser(String title,String desc)
	{
		adminpost ad =new adminpost();
		int i=0;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/employee","root","");
			Statement st=con.createStatement();
			String sql1="insert into post (post_title,post_description) values ('"+title+"','"+desc+"')";
		    i=st.executeUpdate(sql1);
			
			con.close();
			
		}catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		return i;
	
	}


}
