package com.springboot.demo.dao;

import java.util.ArrayList;
import java.util.List;

import com.springboot.demo.db.DBFactory;
import com.springboot.demo.db.User;
import com.springboot.demo.model.UserModel;

public class UserDAO {
private DBFactory dbFactory;
	
	
	private final String[] columns1 = new String[] {User.Id,User.email,User.password, User.firstName,
													User.lastName, User.gender, User.contactNum, User.address,
													User.isAdmin, User.isArtis, User.activationCode, User.active};
	private final String[] columns2 = new String[] {User.email, User.password, User.firstName,
													User.lastName, User.gender, User.contactNum, User.address,
													User.isAdmin, User.isArtis, User.activationCode, User.active};
	private final String[] column3=new String[] {User.email};
	private final String[] column4=new String[] {User.Id};
	private final String[] column5=new String[] {User.active};
	private final String[] columns6 = new String[] { User.firstName,
			User.lastName, User.gender, User.contactNum, User.address,
			};
	private final String[] columns7 = new String[] {User.password};
	public UserDAO() {
		dbFactory = new DBFactory();
	}

	public UserModel readUser(int Id) {	
		String condition = User.Id+"="+Id;
		UserModel user = UserModel.parse(columns1, dbFactory.selectObject(User.table, columns1, condition));
		return user;
	}
	
	public UserModel readUser(int Id,String code) {	
		String condition = User.activationCode+"='"+code+"'";
		UserModel user = UserModel.parse(columns1, dbFactory.selectObject(User.table, columns1, condition));
		return user;
	}
	
	public List<UserModel> readUsers() {
		List<UserModel>  users = new ArrayList<UserModel>();
		
		List<String[]> data = dbFactory.selectObjectList(User.table, columns1, "true");
		for(String[] d : data) {
			users.add(UserModel.parse(columns1, d));
		}
		
		return users;
	}
	public UserModel readUserLogin(String email,String password){
		String condition = User.email+"='"+email+"' and "+User.password+"='"+password+"'";
		UserModel user = UserModel.parse(columns1, dbFactory.selectObject(User.table, columns1, condition));
		return user;
	}
	public UserModel readUserMail(String email) {
		String condition =User.email+"='"+email+"'";
		UserModel user=UserModel.parse(column3, dbFactory.selectObject(User.table, column3,condition));
		return user;
	}
	public UserModel readUserActive(String email) {
		String condition =User.email+"='"+email+"'";
		UserModel user=UserModel.parse(column5, dbFactory.selectObject(User.table, column5,condition));
		return user;
	}
	public UserModel readUserId(String email) {
		String condition =User.email+"='"+email+"'";
		UserModel user=UserModel.parse(column4, dbFactory.selectObject(User.table, column4,condition));
		return user;
	}
	
	
	public boolean createUser(UserModel user) {
		Object[] data = new Object[] {user.getEmail(), user.getPassword(),
				user.getFirst_name(), user.getLast_name(), user.getGender(),
				user.getPhone_no(), user.getAddress(), user.getIs_admin(),
				user.getIs_artist(), user.getActivate_code(), user.getActive()};
		boolean i=dbFactory.insert(User.table, columns2, data);
		
		
		return i;
	}
	public boolean updateArtist(UserModel user) {
		Object[] data = new Object[]  {1};
		String condition = User.Id+"="+user.getUser_id();
		boolean res=dbFactory.update(User.table, column5, data, condition);
		System.out.println(res);
		return res;
	}
	public boolean updateArtistpro(UserModel user) {
		Object[] data = new Object[]  {user.getFirst_name(),user.getLast_name(),user.getGender(),user.getPhone_no(),
				                         user.getAddress()};
		String condition = User.Id+"="+user.getUser_id();
		boolean res=dbFactory.update(User.table, columns6, data, condition);
		System.out.println(res);
		return res;
	}
	public boolean updateArtistpassword(UserModel user) {
		Object[] data = new Object[]  {user.getPassword()};
		String condition = User.Id+"="+user.getUser_id();
		boolean res=dbFactory.update(User.table, columns7, data, condition);
		System.out.println(res);
		return res;
	}
	
	public boolean updateEmployee(UserModel user) {
		Object[] data = new Object[]  { user.getPassword(),
				user.getFirst_name(), user.getLast_name(), user.getGender(),
				user.getPhone_no(), user.getAddress()};
		String condition = User.Id+"="+user.getUser_id();
		
		return dbFactory.update(User.table, columns2, data, condition);
	}
	
	public boolean deleteEmployee(int userId) {
		String condition = User.Id+"="+userId;
		
		return dbFactory.delete(User.table, condition);
	}
}
