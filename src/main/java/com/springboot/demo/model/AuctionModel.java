package com.springboot.demo.model;

import com.springboot.demo.db.Artist;
import com.springboot.demo.db.AuctionPaid;
import com.springboot.demo.db.AuctionPost;
import com.springboot.demo.db.AuctionUser;
import com.springboot.demo.db.User;

public class AuctionModel {
	private int a_post_id;
	private String a_title;
	private String a_photo1;
	private String a_photo2;
	private String a_photo3;
	private String a_date;
	private String a_des;
	private String a_start_date;
	private String a_duration;
	private int a_start_bid;
	private int a_view_count;
	private int active;
	
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}
	private int a_paid_id;
	private int a_amount;
	private int a_user_id1;
	private int a_post_id1;
	
	private int a_user_id;
	private String a_email;
	private String a_first_name;
	private String a_last_name;
	private String a_phone_no;
	private String a_password;
	private String a_retype;
public String getA_retype() {
		return a_retype;
	}

	public void setA_retype(String a_retype) {
		this.a_retype = a_retype;
	}

public AuctionModel() {
		
	}
	
	public AuctionModel(String atitle,String ap1,String ap2,String ap3,String ap4,String ades,
			           String adate,String duration,int astartbid,int aviewcount,int active,int apaidid,int aamount,int auserid1,int apostid1
			           ,int auserid,String aemail,String afirstname,String alastname,String aphone,String apass) {
		this.a_title=atitle;
		this.a_photo1=ap1;
		this.a_photo2=ap2;
		this.a_photo3=ap3;
		this.a_date=ap4;
		this.a_des=ades;
		this.a_start_date=adate;
		this.a_duration=duration;
		this.a_start_bid=astartbid;
		this.a_view_count=aviewcount;
		this.active=active;
		this.a_paid_id=apaidid;
		this.a_amount=aamount;
		this.a_user_id1=auserid1;
		this.a_post_id1=apostid1;
		this.a_user_id=auserid;
		this.a_email=aemail;
		this.a_first_name=afirstname;
		this.a_last_name=alastname;
		this.a_phone_no=aphone;
		this.a_password=apass;
		
		
		
	}
	public AuctionModel(int apostid,String atitle,String ap1,String ap2,String ap3,String ap4,String ades,
	           String adate,String duration,int astartbid,int aviewcount,int active,int apaidid,int aamount,int auserid1,int apostid1
	           ,int auserid,String aemail,String afirstname,String alastname,String aphone,String apass) {
this.a_post_id=apostid;
		this.a_title=atitle;
this.a_photo1=ap1;
this.a_photo2=ap2;
this.a_photo3=ap3;
this.a_date=ap4;
this.a_des=ades;
this.a_start_date=adate;
this.a_duration=duration;
this.a_start_bid=astartbid;
this.a_view_count=aviewcount;
this.active=active;
this.a_paid_id=apaidid;
this.a_amount=aamount;
this.a_user_id1=auserid1;
this.a_post_id1=apostid1;
this.a_user_id=auserid;
this.a_email=aemail;
this.a_first_name=afirstname;
this.a_last_name=alastname;
this.a_phone_no=aphone;
this.a_password=apass;
}
	
	public static AuctionModel parse1(String[] fields, String[] values) {
		AuctionModel art = null;
		if(values != null) {
			art = new AuctionModel();
			for(int i=0; i<fields.length; i++) {
				String v = values[i];
				if(fields[i].equals(AuctionPost.aPostId)) art.a_post_id = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPost.aTitle)) art.a_title = v;
				else if(fields[i].equals(AuctionPost.aPhoto1)) art.a_photo1 = v;
				else if(fields[i].equals(AuctionPost.aPhoto2))art.a_photo2  = v;
				else if(fields[i].equals(AuctionPost.aPhoto3)) art.a_photo3 = v;
				else if(fields[i].equals(AuctionPost.a_date)) art.a_date = v;
				else if(fields[i].equals(AuctionPost.aDes)) art.a_des = v;
				else if(fields[i].equals(AuctionPost.aStartDate)) art.a_start_date= v;
				else if(fields[i].equals(AuctionPost.aDuration)) art.a_duration = v;
				else if(fields[i].equals(AuctionPost.aStartBid)) art.a_start_bid = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPost.aViewCount)) art.a_view_count = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPost.Active)) art.active = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPaid.aPaidId)) art.a_paid_id = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPaid.aAmount)) art.a_amount = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPaid.aUserId1)) art.a_user_id1 = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPaid.aPostId1)) art.a_post_id1 = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionUser.aUserId)) art.a_user_id = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionUser.aEmail)) art.a_email = v;
				else if(fields[i].equals(AuctionUser.aFirstName)) art.a_first_name = v;
				else if(fields[i].equals(AuctionUser.aLastName))art.a_last_name = v;
				else if(fields[i].equals(AuctionUser.aPhoneNo)) art.a_phone_no = v;
				else if(fields[i].equals(AuctionUser.aPassword)) art.a_password = v;
				
			}
		}
		return art;
	}


	public static AuctionModel parse(String[] fields, String[] values) {
		AuctionModel art = null;
		if(values != null) {
			art = new AuctionModel();
			for(int i=0; i<fields.length; i++) {
				String v = values[i];
				if(fields[i].equals(AuctionPost.aPostId)) art.a_post_id = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPost.aTitle)) art.a_title = v;
				else if(fields[i].equals(AuctionPost.aPhoto1)) art.a_photo1 = v;
				else if(fields[i].equals(AuctionPost.aPhoto2))art.a_photo2  = v;
				else if(fields[i].equals(AuctionPost.aPhoto3)) art.a_photo3 = v;
				else if(fields[i].equals(AuctionPost.a_date)) art.a_date = v;
				else if(fields[i].equals(AuctionPost.aDes)) art.a_des = v;
				else if(fields[i].equals(AuctionPost.aStartDate)) art.a_start_date= v;
				else if(fields[i].equals(AuctionPost.aDuration)) art.a_duration = v;
				else if(fields[i].equals(AuctionPost.aStartBid)) art.a_start_bid = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPost.aViewCount)) art.a_view_count = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPost.Active)) art.active = Integer.parseInt(v.trim());	
			}
		}
		return art;
	}
	public static AuctionModel parseauctionuser(String[] fields, String[] values) {
		AuctionModel art = null;
		if(values != null) {
			art = new AuctionModel();
			for(int i=0; i<fields.length; i++) {
				String v = values[i];
			    if(fields[i].equals(AuctionUser.aUserId)) art.a_user_id = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionUser.aEmail)) art.a_email = v;
				else if(fields[i].equals(AuctionUser.aFirstName)) art.a_first_name = v;
				else if(fields[i].equals(AuctionUser.aLastName))art.a_last_name = v;
				else if(fields[i].equals(AuctionUser.aPhoneNo)) art.a_phone_no = v;
				else if(fields[i].equals(AuctionUser.aPassword)) art.a_password = v;
				
			}
		}
		return art;
	}
	public static AuctionModel parseauctionpaid(String[] fields, String[] values) {
		AuctionModel art = null;
		if(values != null) {
			art = new AuctionModel();
			for(int i=0; i<fields.length; i++) {
				String v = values[i];
			     if(fields[i].equals(AuctionPaid.aPaidId)) art.a_paid_id = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPaid.aAmount)) art.a_amount = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPaid.aUserId1)) art.a_user_id1 = Integer.parseInt(v.trim());
				else if(fields[i].equals(AuctionPaid.aPostId1)) art.a_post_id1 = Integer.parseInt(v.trim());
			}
		}
		return art;
	}



	public int getA_post_id() {
		return a_post_id;
	}
	public void setA_post_id(int a_post_id) {
		this.a_post_id = a_post_id;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_photo1() {
		return a_photo1;
	}
	public void setA_photo1(String a_photo1) {
		this.a_photo1 = a_photo1;
	}
	public String getA_photo2() {
		return a_photo2;
	}
	public void setA_photo2(String a_photo2) {
		this.a_photo2 = a_photo2;
	}
	public String getA_photo3() {
		return a_photo3;
	}
	public void setA_photo3(String a_photo3) {
		this.a_photo3 = a_photo3;
	}

	public String getA_date() {
		return a_date;
	}

	public void setA_date(String a_date) {
		this.a_date = a_date;
	}

	public String getA_des() {
		return a_des;
	}
	public void setA_des(String a_des) {
		this.a_des = a_des;
	}
	public String getA_start_date() {
		return a_start_date;
	}
	public void setA_start_date(String a_start_date) {
		this.a_start_date = a_start_date;
	}
	public String getA_duration() {
		return a_duration;
	}
	public void setA_duration(String a_duration) {
		this.a_duration = a_duration;
	}
	public int getA_start_bid() {
		return a_start_bid;
	}
	public void setA_start_bid(int a_start_bid) {
		this.a_start_bid = a_start_bid;
	}
	public int getA_view_count() {
		return a_view_count;
	}
	public void setA_view_count(int a_view_count) {
		this.a_view_count = a_view_count;
	}
	public int getA_paid_id() {
		return a_paid_id;
	}
	public void setA_paid_id(int a_paid_id) {
		this.a_paid_id = a_paid_id;
	}
	public int getA_amount() {
		return a_amount;
	}
	public void setA_amount(int a_amount) {
		this.a_amount = a_amount;
	}
	public int getA_user_id() {
		return a_user_id;
	}
	public void setA_user_id(int a_user_id) {
		this.a_user_id = a_user_id;
	}
	public int getA_post_id1() {
		return a_post_id1;
	}
	public void setA_post_id1(int a_post_id1) {
		this.a_post_id1 = a_post_id1;
	}
	public int getA_user_id1() {
		return a_user_id1;
	}
	public void setA_user_id1(int a_user_id1) {
		this.a_user_id1 = a_user_id1;
	}
	public String getA_email() {
		return a_email;
	}
	public void setA_email(String a_email) {
		this.a_email = a_email;
	}
	public String getA_first_name() {
		return a_first_name;
	}
	public void setA_first_name(String a_first_name) {
		this.a_first_name = a_first_name;
	}
	public String getA_last_name() {
		return a_last_name;
	}
	public void setA_last_name(String a_last_name) {
		this.a_last_name = a_last_name;
	}
	public String getA_phone_no() {
		return a_phone_no;
	}
	public void setA_phone_no(String a_phone_no) {
		this.a_phone_no = a_phone_no;
	}
	public String getA_password() {
		return a_password;
	}
	public void setA_password(String a_password) {
		this.a_password = a_password;
	}

}
