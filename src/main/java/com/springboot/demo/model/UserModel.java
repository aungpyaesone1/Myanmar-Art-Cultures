package com.springboot.demo.model;

import com.springboot.demo.db.Emp;
import com.springboot.demo.db.User;

public class UserModel {
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
		private String new_password;
		
		public String getNew_password() {
			return new_password;
		}
		public void setNew_password(String new_password) {
			this.new_password = new_password;
		}
		public String getRetype_password() {
			return retype_password;
		}
		public void setRetype_password(String retype_password) {
			this.retype_password = retype_password;
		}
		public UserModel() {
			
		}
		public UserModel(String email, String password, String first_name, 
				String last_name, String gender	, String phone_no,
				String address, int is_admin, int is_artist, String activate_code, int active) {
			super();
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
			this.active = active;
		}

		public UserModel(int user_id, String email, String password, String first_name, 
				String last_name, String gender	, String phone_no,
				String address, int is_admin, int is_artist, String activate_code, int active) {
			super();
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
			this.active = active;
		}
		
		
		public static UserModel parse(String[] fields, String[] values) {
			UserModel user = null;
			if(values != null) {
				user = new UserModel();
				for(int i=0; i<fields.length; i++) {
					String v = values[i];
					if(fields[i].equals(User.Id)) user.user_id = Integer.parseInt(v.trim());
					else if(fields[i].equals(User.email)) user.email = v;
					else if(fields[i].equals(User.password)) user.password = v;
					else if(fields[i].equals(User.firstName)) user.first_name = v;
					else if(fields[i].equals(User.lastName)) user.last_name = v;
					else if(fields[i].equals(User.gender)) user.gender = v;
					else if(fields[i].equals(User.contactNum)) user.phone_no = v;
					else if(fields[i].equals(User.address)) user.address = v;
					else if(fields[i].equals(User.isAdmin)) user.is_admin = Integer.parseInt(v.trim());
					else if(fields[i].equals(User.isArtis)) user.is_artist = Integer.parseInt(v.trim());
					else if(fields[i].equals(User.activationCode)) user.activate_code = v;
					else if(fields[i].equals(User.active)) user.active = Integer.parseInt(v.trim());
					
					
				}
			}
			return user;
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
		
}
