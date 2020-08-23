package com.springboot.demo.dao;

import java.util.ArrayList;
import java.util.List;

import com.springboot.demo.db.Artist;
import com.springboot.demo.db.DBFactory;
import com.springboot.demo.db.Emp;
import com.springboot.demo.db.PostCulture;
import com.springboot.demo.db.User;
import com.springboot.demo.model.ArtistModel;
import com.springboot.demo.model.Employee;
import com.springboot.demo.model.PostCultureModel;
import com.springboot.demo.model.UserAndArtistModel;
import com.springboot.demo.model.UserModel;

public class ArtistDAO {
private DBFactory dbFactory;
	
	
	private final String[] columns1 = new String[] {Artist.Id,Artist.sTitle,Artist.sMaterial,Artist.sDate,
			                                        Artist.sDesc,Artist.sPhoto,Artist.sPrice,Artist.sUserId,
			                                        Artist.sArtId,Artist.sActive,Artist.sStatus};
	private final String[] columns2= new String[] {Artist.sTitle,Artist.sMaterial,Artist.sDate,
                                                   Artist.sDesc,Artist.sPhoto,Artist.sPrice,Artist.sUserId,
                                                   Artist.sArtId,Artist.sActive,Artist.sStatus};
	private final String[] columns3 = new String[] {Artist.sTitle,Artist.sMaterial,Artist.sDate,
                                                    Artist.sDesc,Artist.sPhoto,Artist.sPrice,Artist.sUserId,
                                                     Artist.sArtId,Artist.sActive};
	private final String[]columns6=new String[] {Artist.sActive};
	private final String[] columns4 = new String[] {Artist.Id,Artist.sTitle,Artist.sMaterial,Artist.sDate,
            Artist.sDesc,Artist.sPhoto,Artist.sPrice,Artist.sUserId,
            Artist.sArtId,Artist.sActive,Artist.sStatus,User.Id,User.email,User.password, User.firstName,
			User.lastName, User.gender, User.contactNum, User.address,
			User.isAdmin, User.isArtis, User.activationCode, User.active};
	
	private final String[] columns5= new String[] {Artist.sTitle,Artist.sMaterial,
            Artist.sDesc,Artist.sPrice,Artist.sArtId,Artist.sStatus
            };
	
	public ArtistDAO() {
		dbFactory = new DBFactory();
	}
	public List<ArtistModel> readAll() {
		List<ArtistModel> arts = new ArrayList<ArtistModel>();
		System.out.println("art ko yout lr");
		List<String[]> data = dbFactory.selectObjectListForArt1(Artist.table, columns1, "true");
		for(String[] d : data) {
			arts.add(ArtistModel.parse(columns1, d));
		}
		
		return arts;
	}
	public List<UserAndArtistModel> readAll1() {
		List<UserAndArtistModel> arts = new ArrayList<UserAndArtistModel>();
		List<String[]> data = dbFactory.selectObjectListForArt(Artist.table,User.table, columns4, "true");
		for(String[] d : data) {
			arts.add(UserAndArtistModel.parse1(columns4, d));
		}
		
		return arts;
	}
	public List<UserAndArtistModel> readAll2() {
		List<UserAndArtistModel> arts = new ArrayList<UserAndArtistModel>();
		List<String[]> data = dbFactory.selectObjectListForArt(Artist.table,User.table, columns4, "true");
		for(String[] d : data) {
			arts.add(UserAndArtistModel.parse1(columns4, d));
		}
		
		return arts;
	}
	public ArtistModel readArtist(int Id) {	
		String condition = Artist.Id+"="+Id;
		ArtistModel art=ArtistModel.parse(columns1, dbFactory.selectObject(Artist.table, columns1, condition));
		return art;
	}

	
	public List<UserAndArtistModel> readArtistArt(int artistId) {
		System.out.println(artistId);
		System.out.println("this is the red");
		List<UserAndArtistModel> arts = new ArrayList<UserAndArtistModel>();
		System.out.println("art ko yout lr");
		List<String[]> data = dbFactory.selectObjectListForArtProfile(Artist.table,User.table, columns4, artistId);
		for(String[] d : data) {
			arts.add(UserAndArtistModel.parse1(columns4, d));
		}
		System.out.println(arts.size());
		return arts;
	}
	
	public boolean creatArt(ArtistModel art,String img) {
		Object[] data = new Object[] {art.getS_title(),art.getS_material(),art.getS_date(),art.getS_desc(),
				                       img,art.getS_price(),art.getS_user_id(),art.getS_art_id(),1};
		boolean i=dbFactory.insert(Artist.table, columns3, data);
		System.out.print(i);
		return i;
	}
	public boolean updateArt(ArtistModel post) {
		Object[] data = new Object[]  {post.getS_title(),post.getS_material(),post.getS_desc(),
				post.getS_price(),post.getS_art_id(),post.getS_status()};
		String condition = Artist.Id+"="+post.getS_id();
		boolean res=dbFactory.update(Artist.table, columns5, data, condition);
		System.out.println(res+"update condition");
		return res;
	}
	public boolean updateArtDisable(ArtistModel post) {
		Object[] data = new Object[]  {post.getS_active()};
		String condition = Artist.Id+"="+post.getS_id();
		boolean res=dbFactory.update(Artist.table,columns6 , data, condition);
		System.out.println(res+"update condition");
		return res;
	}
	public boolean deleteArt(int artId) {
		String condition = Artist.Id+"="+artId;
		return dbFactory.delete(Artist.table, condition);
	}
}
