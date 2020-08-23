package com.springboot.demo.model;

import com.springboot.demo.db.Artist;
import com.springboot.demo.db.User;

public class UserAndArtistModel {
	private int s_id;
	 private String s_title;
	 private String s_material;
	 private String s_date;
	 private String s_desc;
	 private int s_active;
	 private int s_status;
	 private String s_photo;
	 private String s_price;
	 private int s_user_id;
	 private int s_art_id;
	 private int user_id;
		private String email;
		private String password;
		private String first_name;
		private String last_name;
		private String gender;
		private String phone_no;
		private String address;
		private int is_admin;
		private int is_artist;
		private String activate_code;
		private int active;
		private String retype_password;
		public UserAndArtistModel() {
			
		}
		
		public UserAndArtistModel(String title,String material,String date,String desc,String photo,String price,int userId,
		          int artId,int active,int status,String email, String password, String first_name, 
					String last_name, String gender	, String phone_no,
					String address, int is_admin, int is_artist, String activate_code, int active1) {
	super();
	this.s_title=title;
	this.s_material=material;
	this.s_date=date;
	this.s_desc=desc;
	this.s_photo=photo;
	this.s_price=price;
	this.s_user_id=userId;
	this.s_art_id=artId;
	this.s_active=active;
	this.s_status=status;
	this.email = email;
	this.password = password;
	this.first_name = first_name;
	this.last_name = last_name;
	this.gender = gender;
	this.phone_no = phone_no;
	this.address = address;
	this.is_admin = is_admin;
	this.is_artist = is_artist;
	this.activate_code =activate_code;
	this.active = active1;
}

public UserAndArtistModel(int id,String title,String material,String date,String desc,String photo,String price,int userId,
        int artId,int active,int status,int user_id, String email, String password, String first_name, 
		String last_name, String gender	, String phone_no,
		String address, int is_admin, int is_artist, String activate_code, int active1) {
	super();
	this.s_id=id;
	this.s_title=title;
	this.s_material=material;
	this.s_date=date;
	this.s_desc=desc;
	this.s_photo=photo;
	this.s_price=price;
	this.s_user_id=userId;
	this.s_art_id=artId;
	this.s_active=active;
	this.s_status=status;
	this.user_id = user_id;
	this.email = email;
	this.password = password;
	this.first_name = first_name;
	this.last_name = last_name;
	this.gender = gender;
	this.phone_no = phone_no;
	this.address = address;
	this.is_admin = is_admin;
	this.is_artist = is_artist;
	this.activate_code =activate_code;
	this.active = active1;
}
public static UserAndArtistModel parse1(String[] fields, String[] values) {
	UserAndArtistModel art = null;
	if(values != null) {
		art = new UserAndArtistModel();
		for(int i=0; i<fields.length; i++) {
			String v = values[i];
			if(fields[i].equals(Artist.Id)) art.s_id = Integer.parseInt(v.trim());
			else if(fields[i].equals(Artist.sTitle)) art.s_title = v;
			else if(fields[i].equals(Artist.sMaterial)) art.s_material = v;
			else if(fields[i].equals(Artist.sDate))art.s_date  = v;
			else if(fields[i].equals(Artist.sDesc)) art.s_desc = v;
			else if(fields[i].equals(Artist.sPhoto)) art.s_photo = v;
			else if(fields[i].equals(Artist.sPrice)) art.s_price = v;
			else if(fields[i].equals(Artist.sUserId)) art.s_user_id = Integer.parseInt(v.trim());
			else if(fields[i].equals(Artist.sArtId)) art.s_art_id= Integer.parseInt(v.trim());
			else if(fields[i].equals(Artist.sActive)) art.s_active = Integer.parseInt(v.trim());
			else if(fields[i].equals(Artist.sStatus)) art.s_status = Integer.parseInt(v.trim());
			else if(fields[i].equals(User.Id)) art.user_id = Integer.parseInt(v.trim());
			else if(fields[i].equals(User.email)) art.email = v;
			else if(fields[i].equals(User.password)) art.password = v;
			else if(fields[i].equals(User.firstName)) art.first_name = v;
			else if(fields[i].equals(User.lastName)) art.last_name = v;
			else if(fields[i].equals(User.gender)) art.gender = v;
			else if(fields[i].equals(User.contactNum)) art.phone_no = v;
			else if(fields[i].equals(User.address)) art.address = v;
			else if(fields[i].equals(User.isAdmin))art.is_admin = Integer.parseInt(v.trim());
			else if(fields[i].equals(User.isArtis)) art.is_artist = Integer.parseInt(v.trim());
			else if(fields[i].equals(User.activationCode)) art.activate_code = v;
			else if(fields[i].equals(User.active)) art.active = Integer.parseInt(v.trim());
		
			
			
		}
	}
	return art;
}
		
		
		public int getS_id() {
			return s_id;
		}
		public void setS_id(int s_id) {
			this.s_id = s_id;
		}
		public String getS_title() {
			return s_title;
		}
		public void setS_title(String s_title) {
			this.s_title = s_title;
		}
		public String getS_material() {
			return s_material;
		}
		public void setS_material(String s_material) {
			this.s_material = s_material;
		}
		public String getS_date() {
			return s_date;
		}
		public void setS_date(String s_date) {
			this.s_date = s_date;
		}
		public String getS_desc() {
			return s_desc;
		}
		public void setS_desc(String s_desc) {
			this.s_desc = s_desc;
		}
		public int getS_active() {
			return s_active;
		}
		public void setS_active(int s_active) {
			this.s_active = s_active;
		}
		public int getS_status() {
			return s_status;
		}
		public void setS_status(int s_status) {
			this.s_status = s_status;
		}
		public String getS_photo() {
			return s_photo;
		}
		public void setS_photo(String s_photo) {
			this.s_photo = s_photo;
		}
		public String getS_price() {
			return s_price;
		}
		public void setS_price(String s_price) {
			this.s_price = s_price;
		}
		public int getS_user_id() {
			return s_user_id;
		}
		public void setS_user_id(int s_user_id) {
			this.s_user_id = s_user_id;
		}
		public int getS_art_id() {
			return s_art_id;
		}
		public void setS_art_id(int s_art_id) {
			this.s_art_id = s_art_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getFirst_name() {
			return first_name;
		}
		public void setFirst_name(String first_name) {
			this.first_name = first_name;
		}
		public String getLast_name() {
			return last_name;
		}
		public void setLast_name(String last_name) {
			this.last_name = last_name;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getPhone_no() {
			return phone_no;
		}
		public void setPhone_no(String phone_no) {
			this.phone_no = phone_no;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public int getIs_admin() {
			return is_admin;
		}
		public void setIs_admin(int is_admin) {
			this.is_admin = is_admin;
		}
		public int getIs_artist() {
			return is_artist;
		}
		public void setIs_artist(int is_artist) {
			this.is_artist = is_artist;
		}
		public String getActivate_code() {
			return activate_code;
		}
		public void setActivate_code(String activate_code) {
			this.activate_code = activate_code;
		}
		public int getActive() {
			return active;
		}
		public void setActive(int active) {
			this.active = active;
		}
		public String getRetype_password() {
			return retype_password;
		}
		public void setRetype_password(String retype_password) {
			this.retype_password = retype_password;
		}
}
