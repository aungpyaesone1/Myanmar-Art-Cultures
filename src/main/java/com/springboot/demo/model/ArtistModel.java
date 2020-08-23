package com.springboot.demo.model;

import com.springboot.demo.db.Artist;
import com.springboot.demo.db.User;

public class ArtistModel {
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
 
 public ArtistModel() {
		
}
	public ArtistModel(String title,String material,String date,String desc,String photo,String price,int userId,
			          int artId,int active,int status) {
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
	}

	public ArtistModel(int id,String title,String material,String date,String desc,String photo,String price,int userId,
	          int artId,int active,int status) {
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
	}
	public static ArtistModel parse(String[] fields, String[] values) {
		ArtistModel art = null;
		if(values != null) {
			art = new ArtistModel();
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
			
				
				
			}
		}
		return art;
	}
	
 public String getS_desc() {
	return s_desc;
}
public void setS_desc(String s_desc) {
	this.s_desc = s_desc;
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

}
