package com.springboot.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.springboot.demo.db.PostCulture;
import com.springboot.demo.db.PostEvent;
@Entity
public class PostCultureModel {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int c_post_id;
private String c_post_title;
private String c_post_des;
private String c_post_photo;
private int c_user_id;

public PostCultureModel() {
	
}
public PostCultureModel(String title, String des, String photo, int user_id) {
	super();
	this.c_post_title=title;
	this.c_post_des=des;
	this.c_post_photo=photo;
	this.c_user_id=user_id;
}

public PostCultureModel(int id,String title, String des, String photo, int user_id) {
	super();
	this.c_post_id=id;
	this.c_post_title=title;
	this.c_post_des=des;
	this.c_post_photo=photo;
	this.c_user_id=user_id;
	}


public static PostCultureModel parse(String[] fields, String[] values) {
	PostCultureModel cpost = null;
	if(values != null) {
		cpost = new PostCultureModel();
		for(int i=0; i<fields.length; i++) {
			String v = values[i];
			if(fields[i].equals(PostCulture.Id)) cpost.c_post_id= Integer.parseInt(v.trim());
			else if(fields[i].equals(PostCulture.cPostTitle)) cpost.c_post_title = v;
			else if(fields[i].equals(PostCulture.cPostDes))cpost.c_post_des= v;
			else if(fields[i].equals(PostCulture.cPostPhoto)) cpost.c_post_photo = v;
			else if(fields[i].equals(PostCulture.cUserId)) cpost.c_user_id = Integer.parseInt(v.trim());
		}
	}
	return cpost;
}

public int getC_post_id() {
	return c_post_id;
}
public void setC_post_id(int c_post_id) {
	this.c_post_id = c_post_id;
}
public String getC_post_title() {
	return c_post_title;
}
public void setC_post_title(String c_post_title) {
	this.c_post_title = c_post_title;
}
public String getC_post_des() {
	return c_post_des;
}
public void setC_post_des(String c_post_des) {
	this.c_post_des = c_post_des;
}
public String getC_post_photo() {
	return c_post_photo;
}
public void setC_post_photo(String c_post_photo) {
	this.c_post_photo = c_post_photo;
}
public int getC_user_id() {
	return c_user_id;
}
public void setC_user_id(int c_user_id) {
	this.c_user_id = c_user_id;
}
}
