package com.springboot.demo.dao;

import java.util.ArrayList;
import java.util.List;
import com.springboot.demo.db.DBFactory;
import com.springboot.demo.db.Emp;
import com.springboot.demo.db.PostCulture;
import com.springboot.demo.db.User;
import com.springboot.demo.model.PostCultureModel;
import com.springboot.demo.model.UserModel;
public class PostCultureDAO {
private DBFactory dbFactory;
	
	
	private final String[] columns1 = new String[] {PostCulture.Id,PostCulture.cPostTitle,PostCulture.cPostDes
			                                        ,PostCulture.cPostPhoto,PostCulture.cUserId};
	private final String[] columns2 = new String[] {PostCulture.cPostTitle,PostCulture.cPostDes
                                                    ,PostCulture.cPostPhoto,PostCulture.cUserId};
	private final String[] columns4 = new String[] {PostCulture.cPostTitle,PostCulture.cPostDes,PostCulture.cUserId};
	private final String[] column3=new String[] {PostCulture.cPostDes,PostCulture.cPostPhoto};
	public PostCultureDAO() {
		dbFactory = new DBFactory();
	}

	public PostCultureModel readCulture(int Id) {	
		String condition = PostCulture.Id+"="+Id;
		PostCultureModel cpost = PostCultureModel.parse(columns1, dbFactory.selectObject(PostCulture.table, columns1, condition));
		return cpost;
	}
	
	public List<PostCultureModel> readPostCultures(String start, String limit) {
		List<PostCultureModel>  events = new ArrayList<PostCultureModel>();
		List<String[]> data = dbFactory.selectObjectListPag(PostCulture.table, columns1, " ORDER BY c_post_id DESC LIMIT "+start+","+limit);
		for(String[] d : data) {
			events.add(PostCultureModel.parse(columns1, d));
		}
		
		return events;
	}
	public List<PostCultureModel> readPostCulturesForAdmin() {
		List<PostCultureModel>  events = new ArrayList<PostCultureModel>();
		List<String[]> data = dbFactory.selectObjectList(PostCulture.table, columns1, "true");
		for(String[] d : data) {
			events.add(PostCultureModel.parse(columns1, d));
		}
		
		return events;
	}
	public List<PostCultureModel> readPostCultures2() {
		List<PostCultureModel>  events = new ArrayList<PostCultureModel>();
		List<String[]> data = dbFactory.selectObjectList2(PostCulture.table, columns1, "true");
		for(String[] d : data) {
			events.add(PostCultureModel.parse(columns1, d));
		}
		System.out.println("yout shi");
		
		return events;
	}
	
	//Count the culture post
	public int countCulture() {
		return dbFactory.Count(PostCulture.table);
	}
	public List<PostCultureModel> readPostCultures3() {
		List<PostCultureModel>  events = new ArrayList<PostCultureModel>();
		List<String[]> data = dbFactory.selectObjectList3(PostCulture.table, columns1, "true");
		for(String[] d : data) {
			events.add(PostCultureModel.parse(columns1, d));
		}
		System.out.println("yout shi");
		
		return events;
	}
	public PostCultureModel readPostPhoto(int id) {
		String condition =PostCulture.Id+"="+id;
		PostCultureModel post=PostCultureModel.parse(column3, dbFactory.selectObject(PostCulture.table, column3,condition));
		return post;
	}
	public PostCultureModel readPosts(int id) {
		String condition =PostCulture.Id+"="+id;
		PostCultureModel posts=PostCultureModel.parse(columns1, dbFactory.selectObject(PostCulture.table, columns1,condition));
		return posts;
	}
	public boolean deletePost(int Id) {
		String condition = PostCulture.Id+"="+Id;
		return dbFactory.delete(PostCulture.table, condition);
	}
	public boolean updatePostCulture(PostCultureModel post) {
		Object[] data = new Object[]  { post.getC_post_title(),post.getC_post_des(),post.getC_user_id()};
		String condition = PostCulture.Id+"="+post.getC_post_id();
		
		return dbFactory.update(PostCulture.table, columns4, data, condition);
	}
	
	public boolean createPostCulture(PostCultureModel cpost,String img) {
		Object[] data = new Object[] {cpost.getC_post_title(),cpost.getC_post_des(),
				                      img,cpost.getC_user_id()};
		boolean i=dbFactory.insert(PostCulture.table, columns2, data);
		System.out.print(i);
		
		return i;
	}
	
}
