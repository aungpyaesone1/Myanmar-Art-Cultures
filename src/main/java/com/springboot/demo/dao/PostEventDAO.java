package com.springboot.demo.dao;

import java.util.ArrayList;
import java.util.List;

import com.springboot.demo.db.DBFactory;
import com.springboot.demo.db.PostCulture;
import com.springboot.demo.model.PostCultureModel;
import com.springboot.demo.model.PostEventModel;
import com.springboot.demo.db.PostEvent;

public class PostEventDAO {
private DBFactory dbFactory;
	
	
	private final String[] columns1 = new String[] {PostEvent.Id,PostEvent.eStartDate,PostEvent.eTitle,PostEvent.eDes,PostEvent.ePhoto,
			                                        PostEvent.eUserId};
	private final String[] columns2 = new String[] {PostEvent.eStartDate,PostEvent.eTitle,PostEvent.eDes,PostEvent.ePhoto,
                                                     PostEvent.eUserId};
	private final String[] columns3=new String[] {PostEvent.ePhoto};
	private final String[] columns4 = new String[] {PostEvent.eStartDate,PostEvent.eTitle,PostEvent.eDes,
            PostEvent.eUserId};
	public PostEventDAO() {
		dbFactory = new DBFactory();
	}

	public PostEventModel readEvent(int Id) {	
		String condition = PostEvent.Id+"="+Id;
		PostEventModel epost = PostEventModel.parse(columns1, dbFactory.selectObject(PostEvent.table, columns1, condition));
		return epost;
	}
	
	public PostEventModel readEventPhoto(int Id) {	
		String condition = PostEvent.Id+"="+Id;
		PostEventModel epost = PostEventModel.parse(columns3, dbFactory.selectObject(PostEvent.table, columns3, condition));
		return epost;
	}
	
	public List<PostEventModel> readEvents() {
		List<PostEventModel>  events = new ArrayList<PostEventModel>();
		
		List<String[]> data = dbFactory.selectObjectList(PostEvent.table, columns1, "true");
		for(String[] d : data) {
			events.add(PostEventModel.parse(columns1, d));
		}
		
		return events;
	}
	public List<PostEventModel> readEvents2() {
		List<PostEventModel>  events = new ArrayList<PostEventModel>();
		
		List<String[]> data = dbFactory.selectObjectList2(PostEvent.table, columns1, "true");
		for(String[] d : data) {
			events.add(PostEventModel.parse(columns1, d));
		}
		
		return events;
	}
	
	public boolean createEvent(PostEventModel event,String img) {
		Object[] data = new Object[] {event.getE_start_date(),event.getE_title(),event.getE_des()
				,img,event.getE_user_id()};
		boolean i=dbFactory.insert(PostEvent.table, columns2, data);
		
		
		return i;
	}
	
	public boolean updateEvent(PostEventModel post) {
		Object[] data = new Object[]  { post.getE_start_date(),post.getE_title(),post.getE_des(),post.getE_user_id()};
		String condition = PostEvent.Id+"="+post.getEvent_id();
		
		return dbFactory.update(PostEvent.table, columns4, data, condition);
	}
	
	public boolean deleteEvent(int Id) {
		String condition = PostEvent.Id+"="+Id;
		return dbFactory.delete(PostEvent.table, condition);
	}
	
}
