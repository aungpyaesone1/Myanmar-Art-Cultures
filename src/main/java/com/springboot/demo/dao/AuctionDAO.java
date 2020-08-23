package com.springboot.demo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.springboot.demo.db.Artist;
import com.springboot.demo.db.AuctionPaid;
import com.springboot.demo.db.AuctionPost;
import com.springboot.demo.db.AuctionUser;
import com.springboot.demo.db.DBFactory;
import com.springboot.demo.db.Emp;
import com.springboot.demo.db.PostCulture;
import com.springboot.demo.db.User;
import com.springboot.demo.model.ArtistModel;
import com.springboot.demo.model.AuctionModel;
import com.springboot.demo.model.Employee;
import com.springboot.demo.model.PostCultureModel;
import com.springboot.demo.model.UserModel;

public class AuctionDAO {
	private DBFactory dbFactory;
	private final String[] columns1 = new String[] {AuctionPost.aPostId,AuctionPost.aTitle,AuctionPost.aPhoto1,AuctionPost.aPhoto2,
			                                       AuctionPost.aPhoto2,AuctionPost.aPhoto3,AuctionPost.a_date,
			                                       AuctionPost.aDes,AuctionPost.aStartDate,AuctionPost.aDuration,AuctionPost.aStartBid,AuctionPost.aViewCount,AuctionPost.Active};
	private final String[] columns2 = new String[] {AuctionPost.aTitle,AuctionPost.aPhoto1,AuctionPost.aPhoto2,
                                                    AuctionPost.aPhoto3,AuctionPost.a_date,
                                             AuctionPost.aDes,AuctionPost.aStartDate,AuctionPost.aDuration,AuctionPost.aStartBid};
	
	private final String[] columns3 = new String[] {AuctionPaid.aPaidId,AuctionPaid.aAmount,AuctionPaid.aUserId1,AuctionPaid.aPostId1};
	private final String[] columns4 = new String[] {AuctionPaid.aAmount,AuctionPaid.aUserId1,AuctionPaid.aPostId1};
	private final String[] columns9 = new String[] {AuctionPaid.aAmount};
	private final String[] columns5 = new String[] {AuctionUser.aUserId,AuctionUser.aEmail,AuctionUser.aFirstName,AuctionUser.aLastName,AuctionUser.aPhoneNo,AuctionUser.aPassword};
	private final String[] columns6 = new String[] {AuctionUser.aEmail,AuctionUser.aFirstName,AuctionUser.aLastName,AuctionUser.aPhoneNo,AuctionUser.aPassword};
	private final String[] columns8 = new String[] {AuctionPost.aViewCount};
	private final String[] columns10 = new String[] {AuctionPost.Active};
	private final String[] columns7 = new String[] {AuctionPost.aPostId,AuctionPost.aTitle,AuctionPost.aPhoto1,
			AuctionPost.aPhoto2,
            AuctionPost.aPhoto2,AuctionPost.aPhoto3,AuctionPost.a_date,
            AuctionPost.aDes,AuctionPost.aStartDate,AuctionPost.aDuration,AuctionPost.aStartBid,
            AuctionPost.aViewCount,AuctionPaid.aPaidId,AuctionPaid.aAmount,AuctionPaid.aUserId1,
            AuctionPaid.aPostId1,AuctionUser.aUserId,AuctionUser.aEmail,AuctionUser.aFirstName,AuctionUser.aLastName,AuctionUser.aPhoneNo,AuctionUser.aPassword};
	private final String[] columns11 = new String[] {AuctionPaid.aAmount};
	private final String[] columns13 = new String[] {AuctionPost.aTitle, AuctionPost.aDes,AuctionPost.aStartDate,AuctionPost.aDuration,AuctionPost.aStartBid};
	public AuctionDAO() {
		dbFactory = new DBFactory();
	}
	public boolean createAuction(AuctionModel art) {
		Object[] data = new Object[] {art.getA_title(),art.getA_photo1(),art.getA_photo2(),art.getA_photo3(),art.getA_date(),art.getA_des(),art.getA_start_date(),art.getA_duration(),art.getA_start_bid()};
		boolean i=dbFactory.insert(AuctionPost.table, columns2, data);
		System.out.print(i);
		return i;
	}
	public boolean createAuctionPaid(AuctionModel art) {
		Object[] data = new Object[] {art.getA_amount(),art.getA_user_id1(),art.getA_post_id()};
		boolean i=dbFactory.insert(AuctionPaid.table, columns4, data);
		System.out.print(i);
		return i;
	}
	public boolean createAuctionUser(AuctionModel art) {
		Object[] data = new Object[] {art.getA_email(),art.getA_first_name(),art.getA_last_name(),art.getA_phone_no(),art.getA_password()};
		boolean i=dbFactory.insert(AuctionUser.table, columns6, data);
		System.out.print(i);
		return i;
	}
	
	public List<AuctionModel> readAuctions() {
		List<AuctionModel> arts = new ArrayList<AuctionModel>();
		System.out.println("art ko yout lr");
		List<String[]> data = dbFactory.selectObjectList(AuctionPost.table, columns1, "active=1");
		for(String[] d : data) {
			arts.add(AuctionModel.parse(columns1, d));
		}
		
		return arts;
	}
	public List<AuctionModel> readAuctionWinner() {
		List<AuctionModel> arts = new ArrayList<AuctionModel>();
		System.out.println("art ko yout lr");
		List<String[]> data = dbFactory.selectObjectList(AuctionPost.table, columns1, "active=0");
		for(String[] d : data) {
			arts.add(AuctionModel.parse(columns1, d));
		}
		
		return arts;
	}
	public AuctionModel readAuctionUser(String email,String password){
		String condition = AuctionUser.aEmail+"='"+email+"' and "+AuctionUser.aPassword+"='"+password+"'";
		AuctionModel user = AuctionModel.parseauctionuser(columns5, dbFactory.selectObject(AuctionUser.table, columns5, condition));
		return user;
	}
	public AuctionModel readMaxbidfrompaid(AuctionModel auction){
		String condition =AuctionPaid.aPostId1+" = "+auction.getA_post_id();
		System.out.println(auction.getA_post_id());
		AuctionModel user = AuctionModel.parseauctionpaid(columns9, dbFactory.selectObjectMaxBid(AuctionPaid.table, columns9, condition));
		return user;
	}
	public AuctionModel readMaxbidfrompaid(int a_post_id){
		String condition =AuctionPaid.aPostId1+" = "+a_post_id;
		AuctionModel user = AuctionModel.parseauctionpaid(columns9, dbFactory.selectObjectMaxBid(AuctionPaid.table, columns9, condition));
		return user;
	}
	public AuctionModel readAuctionPaid(int auction_user_id){
		String condition = AuctionPaid.aUserId1+"="+auction_user_id;
		AuctionModel user = AuctionModel.parseauctionpaid(columns3, dbFactory.selectObject(AuctionPaid.table, columns3, condition));
		return user;
	}
	public AuctionModel readMaxBidUser(int amount,int post_id){
		String condition = AuctionPaid.aAmount+"="+amount+" and "+AuctionPaid.aPostId1+" = "+post_id;
		AuctionModel user = AuctionModel.parse1(columns7, dbFactory.selectObjectformaxbiduser(AuctionPaid.table,AuctionUser.table,AuctionPost.table, columns7, condition));
		return user;
	}
	
	public AuctionModel readAuction(int a_post_id) {	
		String condition = AuctionPost.aPostId+"="+a_post_id;
		
		AuctionModel emp = AuctionModel.parse(columns1, dbFactory.selectObject(AuctionPost.table, columns1, condition));
		return emp;
	}
	public AuctionModel readAuctionFromPaid(int a_post_id) {	
		String condition = AuctionPaid.aPostId1+"="+a_post_id;
		
		AuctionModel emp = AuctionModel.parse(columns3, dbFactory.selectObject(AuctionPaid.table, columns3, condition));
		return emp;
	}
	public AuctionModel readAuctionFromPaidForCheckUser(int a_user_id1) {	
		String condition = AuctionPaid.aUserId1+"="+a_user_id1;
		AuctionModel emp = AuctionModel.parse(columns3, dbFactory.selectObject(AuctionPaid.table, columns3, condition));
		return emp;
	}
	public AuctionModel readAuctionViewCount(int a_post_id) {	
		String condition = AuctionPost.aPostId+"="+a_post_id;
		
		AuctionModel emp = AuctionModel.parse(columns8, dbFactory.selectObject(AuctionPost.table, columns8, condition));
		return emp;
	}
	public int readCountFromPaid(int id) throws SQLException {
		String condition = AuctionPaid.aPostId1+"="+id;
		int res=dbFactory.selectRowCount(condition);
		return res;
	}
	public boolean updateAuctionPost(AuctionModel post) {
		System.out.println("the size of count = "+post.getA_view_count());
		Object[] data = new Object[]  { post.getA_view_count()};
		String condition = AuctionPost.aPostId+"="+post.getA_post_id();
		
		return dbFactory.update(AuctionPost.table, columns8, data, condition);
	}
	public boolean updateAuctionPostFromAdmin(AuctionModel post) {
		
		Object[] data = new Object[]  { post.getA_title(),post.getA_des(),post.getA_start_date(),post.getA_duration(),post.getA_start_bid()};
		String condition = AuctionPost.aPostId+"="+post.getA_post_id();
		
		return dbFactory.update(AuctionPost.table, columns13, data, condition);
	}
	public boolean updateAuctionPosts(AuctionModel post) {
		System.out.println("the size of active = "+post.getA_view_count());
		Object[] data = new Object[]  { post.getActive()};
		String condition = AuctionPost.aPostId+"="+post.getA_post_id();
		
		return dbFactory.update(AuctionPost.table, columns10, data, condition);
	}
	public boolean updateAuctionPaid(AuctionModel post) {
		Object[] data = new Object[]  { post.getA_amount()};
		String condition = AuctionPaid.aUserId1+"="+post.getA_user_id1();
		
		return dbFactory.update(AuctionPaid.table, columns11, data, condition);
	}
	public boolean deleteEmployee(int empId) {
		String condition = AuctionPost.aPostId+"="+empId;
		dbFactory.delete(AuctionPaid.table, "aPostId1 = "+empId);
		return dbFactory.delete(AuctionPost.table, condition);
	}
	public boolean deleteAuction(int empId) {
		String condition = AuctionPost.aPostId+"="+empId;
		dbFactory.delete(AuctionPaid.table, "aPostId1 = "+empId);
		return dbFactory.delete(AuctionPost.table, condition);
	}
}
