package com.springboot.demo.model;
import com.springboot.demo.db.PostEvent;

public class PostEventModel {
 private int event_id;
 private String e_start_date;
 private String e_title;
 private String e_des;
 private String e_photo;
 private int e_user_id;
 private String type;
 public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public PostEventModel() {
 }
public int getEvent_id() {
	return event_id;
}
public void setEvent_id(int event_id) {
	this.event_id = event_id;
}
public String getE_start_date() {
	return e_start_date;
}
public void setE_start_date(String e_start_date) {
	this.e_start_date = e_start_date;
}
public String getE_title() {
	return e_title;
}
public void setE_title(String e_title) {
	this.e_title = e_title;
}
public String getE_des() {
	return e_des;
}
public void setE_des(String e_des) {
	this.e_des = e_des;
}
public String getE_photo() {
	return e_photo;
}
public void setE_photo(String e_photo) {
	this.e_photo = e_photo;
}
public int getE_user_id() {
	return e_user_id;
}
public void setE_user_id(int e_user_id) {
	this.e_user_id = e_user_id;
}
public PostEventModel(String date, String title, String des, 
		String pht, int user_id) {
	super();
	this.e_start_date=date;
	this.e_title=title;
	this.e_des=des;
	this.e_photo=pht;
	this.e_user_id=user_id;
}

public PostEventModel(int id,String date, String title, String des, 
		String pht, int user_id) {
	super();
	this.event_id=id;
	this.e_start_date=date;
	this.e_title=title;
	this.e_des=des;
	this.e_photo=pht;
	this.e_user_id=user_id;
	}


public static PostEventModel parse(String[] fields, String[] values) {
	PostEventModel epost = null;
	if(values != null) {
		epost = new PostEventModel();
		for(int i=0; i<fields.length; i++) {
			String v = values[i];
			if(fields[i].equals(PostEvent.Id)) epost.event_id = Integer.parseInt(v.trim());
			else if(fields[i].equals(PostEvent.eStartDate)) epost.e_start_date = v;
			else if(fields[i].equals(PostEvent.eTitle)) epost.e_title= v;
			else if(fields[i].equals(PostEvent.eDes)) epost.e_des = v;
			else if(fields[i].equals(PostEvent.ePhoto)) epost.e_photo = v;
			else if(fields[i].equals(PostEvent.eUserId)) epost.e_user_id = Integer.parseInt(v.trim());
		}
	}
	return epost;
}
}
