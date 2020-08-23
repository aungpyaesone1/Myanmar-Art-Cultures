package com.springboot.demo.controller;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.jayway.jsonpath.internal.Path;
import com.springboot.demo.dao.ArtistDAO;
import com.springboot.demo.dao.AuctionDAO;
import com.springboot.demo.dao.EmployeeDAO;
import com.springboot.demo.dao.PostCultureDAO;
import com.springboot.demo.dao.UserDAO;
import com.springboot.demo.db.AuctionUser;
import com.springboot.demo.db.PostEvent;
import com.springboot.demo.dao.PostEventDAO;
import com.springboot.demo.function.Mail;
import com.springboot.demo.function.getPath;
import com.springboot.demo.model.ArtistModel;
import com.springboot.demo.model.AuctionModel;
import com.springboot.demo.model.Employee;
import com.springboot.demo.model.PostCultureModel;
import com.springboot.demo.model.UserModel;
import com.springboot.demo.model.WinnerModel;
import com.springboot.demo.model.PostEventModel;
import com.springboot.demo.model.UserAndArtistModel;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/jsp")
@ComponentScan(basePackages= {"com.springboot.demo.controller"})
@SessionAttributes({ "user", "artist","auction_user"})

public class ProjectController{
	private UserDAO userDAO = new UserDAO();
	private PostEventDAO eventDAO = new PostEventDAO();
	private PostCultureDAO cultureDAO = new PostCultureDAO();
	private ArtistDAO artistDAO = new ArtistDAO();
	private AuctionDAO auctionDAO=new AuctionDAO();
	PostCultureModel post;
	List<PostCultureModel> lastest;
	List<UserAndArtistModel> artpro;
	List<UserAndArtistModel> artist_art;
	UserModel artist1;
	ArtistModel editArt;
	int counttt;
	int total_page;
	PostCultureModel adminpostedit;
	List<PostCultureModel> cposttt;
	PostEventModel admin_event_edit;
	String goToAdmin;
	AuctionModel auction;
	int playing;
	int  glo_A_post_id;
	int win_condition;
	int topaybid_condition;
	AuctionModel a;

	@ModelAttribute("user")
	public UserModel setUpUserForm() {
		return new UserModel();
	}

	@ModelAttribute("artist")
	public UserModel setUpUserForm1() {
		return new UserModel();
	}
	@ModelAttribute("auctoion_user")
	public AuctionUser setUpUserForm2() {
		return new AuctionUser();
	}
	
	@RequestMapping("/multifile")
	public ModelAndView multifile() {
		ModelAndView modelAndView = new ModelAndView("multifile");
		return modelAndView;
	}
	 @RequestMapping(value = "/auctionUser", method = RequestMethod.POST)
	    public String createUser(@Valid @ModelAttribute("auctionuser") AuctionModel auctionuser,RedirectAttributes redirectAttributes) throws IOException {
		ArrayList<String> errors = Check.isValidauction(auctionuser);
		if(errors.size() == 0) {
			auctionDAO.createAuctionUser(auctionuser);
			redirectAttributes.addFlashAttribute("editsuccess","You have been registered successfully!");
		}
		else {
			String error = "";
			for (int i = 0; i < errors.size(); i++) {
				error += errors.get(i) + "<br>";
			}
			redirectAttributes.addFlashAttribute("errors", error);
		}
		 return "redirect:/jsp/auction";
	 }
	//admin_auction_edit
		@RequestMapping("auction_edit/{a_post_id}")
		public String editAuction(@PathVariable("a_post_id") Integer a_post_id, RedirectAttributes redirectAttributes) {
			ModelAndView modelAndView = new ModelAndView("admin_aution_edit");
			 a=auctionDAO.readAuction(a_post_id);
			 BufferedReader br1 = null;
				FileReader fr1 = null;

				try {
					getPath p=new getPath();
					String path=p.path();
					String []path1=path.split("\\\\");
					fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_file\\" + a.getA_des());
					br1 = new BufferedReader(fr1);

					String sCurrentLine;
					String sCurrentLInes = "";

					while ((sCurrentLine = br1.readLine()) != null) {
						sCurrentLInes += sCurrentLine;

					}
					a.setA_des(sCurrentLInes);

				} catch (IOException e) {

					e.printStackTrace();

				}

			modelAndView.addObject("auction", a);
			return "redirect:/jsp/edit_auction";
		}
		@RequestMapping(value = "/edit_auction", method = RequestMethod.GET)
		public ModelAndView editAuction() {
			ModelAndView modelAndView = new ModelAndView("admin_aution_edit");
			modelAndView.addObject("auction", a);
			return modelAndView;
		}
		//admin_edit_action
				@RequestMapping(value = "/editAuctionFromAdmin", method = RequestMethod.POST)
				public String editAuctionAction(@Valid @ModelAttribute("auctionn") AuctionModel auctionn,
						@ModelAttribute("user") UserModel user, RedirectAttributes redirectAttributes, BindingResult result)
						throws Exception {
					AuctionModel b=auctionDAO.readAuction(auctionn.getA_post_id());
					getPath p=new getPath();
					String path=p.path();
					String []path1=path.split("\\\\");
					File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_file\\" +auctionn.getA_des());
					System.out.println(file.delete());
					String ext = "txt";
					File dir = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_file");
					String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
					File post_file = new File(dir, name);
					while (post_file.exists()) {
						name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
						post_file = new File(dir, name);
					}
					FileWriter fw = new FileWriter(post_file);
					BufferedWriter bw = new BufferedWriter(fw);
					bw.write("" + auctionn.getA_des());
					System.out.println("File written Successfully");
					auctionn.setA_des(name);
					bw.close();
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
					
					 Date currentDate = new Date();  
					 Calendar cal = Calendar.getInstance();
					 cal.add(Calendar.DATE,Integer.parseInt(auctionn.getA_duration()));
					 currentDate = cal.getTime();
					 String s = formatter.format(currentDate);
				       System.out.println("Current Date: "+s);  
					
				    auctionn.setA_start_date(s);			
				    auctionDAO.updateAuctionPostFromAdmin(auctionn);
					redirectAttributes.addFlashAttribute("editsuccess", "You have successfully edited!");
					return "redirect:/jsp/admin_auction";
				}
				@RequestMapping("deleteAuction/{a_post_id}")
				public String deleteAuction(@PathVariable("a_post_id") Integer a_post_id, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
					ModelAndView modelAndView = new ModelAndView("admin_auction");
					AuctionModel b=auctionDAO.readAuction(a_post_id);
					getPath p=new getPath();
					String path=p.path();
					String []path1=path.split("\\\\");
					File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_images\\" + b.getA_photo1());
					System.out.println(file.delete());
					File file1 = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_images\\" + b.getA_photo2());
					System.out.println(file1.delete());
					File file2= new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_images\\" + b.getA_photo3());
					System.out.println(file2.delete());
					File file3 = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_file\\" + b.getA_des());
					System.out.println("text file " + file3.delete());
					auctionDAO.deleteAuction(a_post_id);
					
					redirectAttributes.addFlashAttribute("editsuccess", "Auction is successfully deleted.");
					return "redirect:/jsp/admin_auction";
				}
	 @RequestMapping("toAuctionList/{a_post_id}")
		public String toAuctionList(@PathVariable("a_post_id") Integer a_post_id, RedirectAttributes redirectAttributes) throws ParseException, SQLException {
		 AuctionModel a=auctionDAO.readAuction(a_post_id);
		 System.out.println("the view count from db"+a.getA_view_count());
		 int count=a.getA_view_count();
		 count-=1;
		 a.setA_view_count(count);
		 System.out.println("view count is"+a.getA_view_count());
		 auctionDAO.updateAuctionPost(a);
		 auction=auctionDAO.readAuction(a_post_id);
		 List<AuctionModel>auctions= auctionDAO.readAuctions();
		 AuctionModel res=auctionDAO.readAuctionFromPaid(a_post_id); 
		 System.out.println("thi si for null   "+res);
		 ModelAndView modelAndView = new ModelAndView("play_auction");
		 if(res==null) {
			 auction=auctionDAO.readAuction(a_post_id);
			 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
			 Date d = new Date();
			 String s = formatter.format(d);
				Date d1 = formatter.parse(s);
				Date d2 = formatter.parse(auction.getA_start_date());
				long timeDiff = d2.getTime()-d1.getTime();
				if(timeDiff<90000 && timeDiff>0) {
					 AuctionModel res1=auctionDAO.readMaxbidfrompaid(a_post_id);
						AuctionModel auction4=auctionDAO.readMaxBidUser(res1.getA_amount(),a_post_id);
						System.out.println("the mail is"+auction4.getA_email());
						 Mail.sendMessage( auction4.getA_email(), "You are the "
						 		+ " of "+auction4.getA_title()+". \nPlease contact us +959693157774. \nThank you");
					auction.setActive(0);
					auctionDAO.updateAuctionPosts(auction);
				}
				
				 
			
			 win_condition=0;
			 redirectAttributes.addFlashAttribute("win_condition",0);
			 redirectAttributes.addFlashAttribute("playing",0);
			 
		 }
		 else {
			 AuctionModel res1=auctionDAO.readMaxbidfrompaid(a_post_id);
			 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),a_post_id);
			 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
			 Date d = new Date();
			 String s = formatter.format(d);
				Date d1 = formatter.parse(s);
				Date d2 = formatter.parse(auction.getA_start_date());
				long timeDiff = d2.getTime()-d1.getTime();
				if(timeDiff<90000 && timeDiff>0) {
						 Mail.sendMessage( auction.getA_email(), "You are the winner of "+auction.getA_title()+". \nPlease contact us +959693157774. \nThank you");
					auction.setActive(0);
				auctionDAO.updateAuctionPosts(auction);
				}
				
			
			 win_condition=1;
			 redirectAttributes.addFlashAttribute("win_condition",1);
			 playing=auctionDAO.readCountFromPaid(a_post_id);
			 
		 }
		 
		 return "redirect:/jsp/auction";
	 }
		 @RequestMapping("toAuction/{a_post_id}")
		public String toAuction(@PathVariable("a_post_id") Integer a_post_id, RedirectAttributes redirectAttributes) throws Exception {
		 glo_A_post_id=a_post_id;
		 AuctionModel a=auctionDAO.readAuction(a_post_id);
		 System.out.println("the view count from db"+a.getA_view_count());
		 int count=a.getA_view_count();
		 count += 1;
		 a.setA_view_count(count);
		 System.out.println("view count is"+a.getA_view_count());
		 auctionDAO.updateAuctionPost(a);
		 
		 AuctionModel res=auctionDAO.readAuctionFromPaid(a_post_id); 
		 System.out.println("thi si for null   "+res);
		 ModelAndView modelAndView = new ModelAndView("play_auction");
		 if(res==null) {
			 auction=auctionDAO.readAuction(a_post_id);
			 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
			 Date d = new Date();
			 String s = formatter.format(d);
				Date d1 = formatter.parse(s);
				Date d2 = formatter.parse(auction.getA_start_date());
				long timeDiff = d2.getTime()-d1.getTime();
				if(timeDiff<90000 && timeDiff>0) {
					 AuctionModel res1=auctionDAO.readMaxbidfrompaid(a_post_id);
						AuctionModel auction4=auctionDAO.readMaxBidUser(res1.getA_amount(),a_post_id);
						System.out.println("the mail is"+auction4.getA_email());
						 Mail.sendMessage( auction4.getA_email(), "You are the winner of "+auction4.getA_title()+". \nPlease contact us +959693157774. \nThank you");
					auction.setActive(0);
					auctionDAO.updateAuctionPosts(auction);
				}
				
				 
			
			 win_condition=0;
			 redirectAttributes.addFlashAttribute("win_condition",0);
			 redirectAttributes.addFlashAttribute("playing",0);
			 
		 }
		 else {
			 AuctionModel res1=auctionDAO.readMaxbidfrompaid(a_post_id);
			 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),a_post_id);
			 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
			 Date d = new Date();
			 String s = formatter.format(d);
				Date d1 = formatter.parse(s);
				Date d2 = formatter.parse(auction.getA_start_date());
				long timeDiff = d2.getTime()-d1.getTime();
				if(timeDiff<90000 && timeDiff>0) {
						 Mail.sendMessage( auction.getA_email(), "You are the winner of "+auction.getA_title()+". \nPlease contact us +959693157774. \nThank you");
					auction.setActive(0);
				auctionDAO.updateAuctionPosts(auction);
				}
				
			
			 win_condition=1;
			 redirectAttributes.addFlashAttribute("win_condition",1);
			 playing=auctionDAO.readCountFromPaid(a_post_id);
			 
		 }
		 topaybid_condition=2;
		 modelAndView.addObject("topaybid_condition", topaybid_condition);
		 modelAndView.addObject("auction", auction);
		 modelAndView.addObject("win_condition", win_condition);
		 modelAndView.addObject("playing",playing);
		
		 return "redirect:/jsp/auction_check";
	 }
		 @RequestMapping("toLogoutAuction/{a_post_id}")
			public String toLogoutAuction(@PathVariable("a_post_id") Integer a_post_id, RedirectAttributes redirectAttributes) throws ParseException, SQLException {
			 glo_A_post_id=a_post_id;
			 AuctionModel a=auctionDAO.readAuction(a_post_id);
			 System.out.println("the view count from db"+a.getA_view_count());
			 int count=a.getA_view_count();
			 count += 1;
			 a.setA_view_count(count);
			 System.out.println("view count is"+a.getA_view_count());
			 auctionDAO.updateAuctionPost(a);
			 
			 AuctionModel res=auctionDAO.readAuctionFromPaid(a_post_id); 
			 System.out.println("thi si for null   "+res);
			 ModelAndView modelAndView = new ModelAndView("play_auction");
			 if(res==null) {
				 auction=auctionDAO.readAuction(a_post_id);
				/* SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
				 Date d = new Date();
				 String s = formatter.format(d);
					Date d1 = formatter.parse(s);
					Date d2 = formatter.parse(auction.getA_start_date());
					long timeDiff = d2.getTime()-d1.getTime();
					if(timeDiff<90000 && timeDiff>0) {
						auction.setActive(0);
						auctionDAO.updateAuctionPosts(auction);
					}*/
					
					 
				
				 win_condition=0;
				 redirectAttributes.addFlashAttribute("win_condition",0);
				 redirectAttributes.addFlashAttribute("playing",0);
				 
			 }
			 else {
				 AuctionModel res1=auctionDAO.readMaxbidfrompaid(a_post_id);
				 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),a_post_id);
				/* SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
				 Date d = new Date();
				 String s = formatter.format(d);
					Date d1 = formatter.parse(s);
					Date d2 = formatter.parse(auction.getA_start_date());
					long timeDiff = d2.getTime()-d1.getTime();
					if(timeDiff<90000 && timeDiff>0) {
						
						auction.setActive(0);
					auctionDAO.updateAuctionPosts(auction);
					}*/
					
				
				 win_condition=1;
				 redirectAttributes.addFlashAttribute("win_condition",1);
				 playing=auctionDAO.readCountFromPaid(a_post_id);
				 
			 }
			 topaybid_condition=2;
			 modelAndView.addObject("topaybid_condition", topaybid_condition);
			 modelAndView.addObject("auction", auction);
			 modelAndView.addObject("win_condition", win_condition);
			 modelAndView.addObject("playing",playing);
			 return "redirect:/jsp/auction_check";
		 }
		 @RequestMapping(value = "/startPayBid", method = RequestMethod.POST)
		    public String startPayBid(@Valid @ModelAttribute("auctionpost") AuctionModel auctionpost,BindingResult result, RedirectAttributes redirectAttributes) throws SQLException  {
			AuctionModel res=auctionDAO.readAuctionFromPaid(auctionpost.getA_post_id()); 
			
			System.out.println("to check the post in paid"+res);
			if(res==null) {
				System.out.println(auctionpost.getA_amount()+"\n"+auctionpost.getA_start_bid());
				if(auctionpost.getA_start_bid()<auctionpost.getA_amount()) {
					if((auctionpost.getA_start_bid()*1.1)>=auctionpost.getA_amount()) {
					auctionDAO.createAuctionPaid(auctionpost);
					
					 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctionpost.getA_post_id());
					 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),auctionpost.getA_post_id());
					 /*int playing=auctionDAO.readCountFromPaid();
					 redirectAttributes.addFlashAttribute("playing",playing);*/
					 win_condition=1;
					 redirectAttributes.addFlashAttribute("win_condition",1);
					}
					else {
						redirectAttributes.addFlashAttribute("paybiderror","Your amount is greater 10% than start bid");
						
						 auction=auctionDAO.readAuction(auctionpost.getA_post_id());
						 win_condition=0;
						 redirectAttributes.addFlashAttribute("win_condition",0);
					}
				}
				else {
					redirectAttributes.addFlashAttribute("paybiderror","Your amount is lower than start bid");
					
					 auction=auctionDAO.readAuction(auctionpost.getA_post_id());
					 win_condition=0;
					 redirectAttributes.addFlashAttribute("win_condition",0);
				}
			}
			else {
				AuctionModel res2=auctionDAO.readMaxbidfrompaid(auctionpost.getA_post_id());
				 auction=auctionDAO.readMaxBidUser(res2.getA_amount(),auctionpost.getA_post_id());
				 if(auction.getA_amount()<auctionpost.getA_amount()) {
					 
					 if((auction.getA_amount()*1.1)>=auctionpost.getA_amount()) {
					 AuctionModel checkUserInPaid=auctionDAO.readAuctionFromPaidForCheckUser(auctionpost.getA_user_id1());
					 System.out.println("check user in paid"+checkUserInPaid);
					    if(checkUserInPaid==null) {
						auctionDAO.createAuctionPaid(auctionpost);
						
						 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctionpost.getA_post_id());
						 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),auctionpost.getA_post_id());
						 /*int playing=auctionDAO.readCountFromPaid();
						 redirectAttributes.addFlashAttribute("playing",playing);*/
						 win_condition=1;
						 redirectAttributes.addFlashAttribute("win_condition",1);
					    }
					    else {
					    	auctionDAO.updateAuctionPaid(auctionpost);
					    	 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctionpost.getA_post_id());
							 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),auctionpost.getA_post_id());
							 /*int playing=auctionDAO.readCountFromPaid();
							 redirectAttributes.addFlashAttribute("playing",playing);*/
							 win_condition=1;
							 redirectAttributes.addFlashAttribute("win_condition",1);
					    }
				     }
					 else {
						 redirectAttributes.addFlashAttribute("paybiderror","Your amount is too much greater than max bid");
						 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctionpost.getA_post_id());
						 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),auctionpost.getA_post_id());
						 /*int playing=auctionDAO.readCountFromPaid();
						 redirectAttributes.addFlashAttribute("playing",playing);*/
						 win_condition=1;
						 redirectAttributes.addFlashAttribute("win_condition",1);
					 }
					}
					else {
						redirectAttributes.addFlashAttribute("paybiderror","Your amount is lower than max bid");
						
						 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctionpost.getA_post_id());
						 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),auctionpost.getA_post_id());
						 /*int playing=auctionDAO.readCountFromPaid();
						 redirectAttributes.addFlashAttribute("playing",playing);*/
						 win_condition=1;
						 redirectAttributes.addFlashAttribute("win_condition",1);
					}
			}
			 
			 ModelAndView modelAndView = new ModelAndView("play_auction");
			 playing=auctionDAO.readCountFromPaid(auctionpost.getA_post_id());
			 modelAndView.addObject("playing",playing);
			 modelAndView.addObject("auction", auction);
			 modelAndView.addObject("win_condition", win_condition);
			 modelAndView.addObject("topaybid_condition",1);
			 redirectAttributes.addFlashAttribute("auction_user_id",auctionpost.getA_user_id1());
			 topaybid_condition=1;
			redirectAttributes.addFlashAttribute("topaybid_condition", topaybid_condition);
			return "redirect:/jsp/auction_check";
		 }
		
		 @RequestMapping(value = "/toPayBid", method = RequestMethod.POST)
		    public String toPayBid(@Valid @ModelAttribute("auctionuser") AuctionModel auctionuser,@ModelAttribute("auctionpost") AuctionModel auctionpost, RedirectAttributes redirectAttributes) throws IOException, SQLException {
		/*	 auction=auctionDAO.readAuction(auctionpost.getA_post_id());
			 ModelAndView modelAndView = new ModelAndView("play_auction");
			 modelAndView.addObject("auction", auction);*/
			 AuctionModel auctionuser1= auctionDAO.readAuctionUser(auctionuser.getA_email(),auctionuser.getA_password());
			if(auctionuser1!=null) { 
				int id=auctionuser1.getA_user_id();
				System.out.println(id);
				System.out.println(auctionuser1.getA_first_name());
				 redirectAttributes.addFlashAttribute("auction_user",auctionuser1.getA_user_id());
				redirectAttributes.addFlashAttribute("auction_user_id",id);
			redirectAttributes.addFlashAttribute("topaybid_condition", 1);
			topaybid_condition=1;
			}
			else {
				topaybid_condition=2;
				redirectAttributes.addFlashAttribute("topaybid_condition",2);
				redirectAttributes.addFlashAttribute("topaybid_acc","Invalid Account.");
			}
			
			
			AuctionModel res=auctionDAO.readAuctionFromPaid(auctionpost.getA_post_id()); 
			 System.out.println("thi si for null   "+res);
			 if(res==null) {
				 auction=auctionDAO.readAuction(auctionpost.getA_post_id());
				 win_condition=0;
				 redirectAttributes.addFlashAttribute("win_condition",0);
			 }
			 else {
				 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctionpost.getA_post_id());
				 auction=auctionDAO.readMaxBidUser(res1.getA_amount(),auctionpost.getA_post_id());
				 /*int playing=auctionDAO.readCountFromPaid();
				 redirectAttributes.addFlashAttribute("playing",playing);*/
				 win_condition=1;
				 redirectAttributes.addFlashAttribute("win_condition",1);
			 }
			
			 ModelAndView modelAndView = new ModelAndView("play_auction");
			 playing=auctionDAO.readCountFromPaid(auctionpost.getA_post_id());
			 modelAndView.addObject("playing",playing);
			 modelAndView.addObject("topaybidcondition",topaybid_condition);
			 modelAndView.addObject("win_condition", win_condition);
			 return "redirect:/jsp/auction_check";
		 }
		/* @RequestMapping(value = "/auction_check", method = RequestMethod.GET)
			public ModelAndView auction_check() {
				ModelAndView modelAndView = new ModelAndView("play_auction");
				
				modelAndView.addObject("auction", auction);
				return modelAndView;
			}*/
	 @RequestMapping(value = "/multi", method = RequestMethod.POST)
	    public String uploadingPost(@RequestParam("uploadingFiles") MultipartFile[] uploadingFiles,@Valid @ModelAttribute("auction") AuctionModel auction, @ModelAttribute("user") UserModel user,
	    		 RedirectAttributes redirectAttributes) throws IOException {
	     int i=0;
	     String images[]=new String[5];
	     getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");

		 for(MultipartFile uploadedFile : uploadingFiles) {
	            File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\multifile\\"+ uploadedFile.getOriginalFilename());
	            uploadedFile.transferTo(file);
	           System.out.println(uploadedFile.getOriginalFilename());
	           images[i]=uploadedFile.getOriginalFilename();
	           i++;
		 }
		 auction.setA_photo1(images[0]);
		 auction.setA_photo2(images[1]);
		 auction.setA_photo3(images[2]);
		 String ext = "txt";
			File dir = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_file");
			String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);

			File post_file = new File(dir, name);
			while (post_file.exists()) {
				name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
				post_file = new File(dir, name);
			}
			FileWriter fw = new FileWriter(post_file);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write("" + auction.getA_des());
			System.out.println("File written Successfully");
			auction.setA_des(name);;
			bw.close();
			/*DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
			LocalDateTime now = LocalDateTime.now();
			System.out.println(dtf.format(now));
			*/
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
			
			 Date currentDate = new Date();  
			 auction.setA_date(formatter.format(currentDate));
			 Calendar cal = Calendar.getInstance();
			 cal.add(Calendar.DATE,Integer.parseInt(auction.getA_duration()));
			 currentDate = cal.getTime();
			 String s = formatter.format(currentDate);
		       System.out.println("Current Date: "+s);  
			
		    auction.setA_start_date(s);
			 auctionDAO.createAuction(auction);
			 redirectAttributes.addFlashAttribute("PostSuccessful", "New Auction is uploaded!");
			return "redirect:/jsp/adminpost";
	    }

	@RequestMapping("/index")
	public ModelAndView displayEmployees(ModelMap model) throws UnsupportedEncodingException {
		List<PostEventModel> events = eventDAO.readEvents();
		List<PostCultureModel> cpst = cultureDAO.readPostCultures2();
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("employees", events);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		File currDir = new File(".");
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		System.out.println(path1[0]);
		System.out.println(path1[1]);
	    
		for (int index = 0; cpst.size() > index; index++) {
			try {
				
				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + cpst.get(index).getC_post_des());
				br1 = new BufferedReader(fr1);
				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;

				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				/*cpst.get(index).setC_post_des(Check.removeHTMLtag(sCurrentLInes));*/
				cpst.get(index).setC_post_des(sCurrentLInes.substring(0, 120));

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		modelAndView.addObject("culture", cpst);
		return modelAndView;
	}
	
	//admin_auction
	@RequestMapping("/admin_auction")
	public ModelAndView allAuctionInAdmin() throws ParseException, UnsupportedEncodingException {
		List<AuctionModel> auctions = auctionDAO.readAuctions();
		System.out.println("size of auctons"+auctions.size());
		ModelAndView modelAndView = new ModelAndView("admin_auction");
		modelAndView.addObject("auctions", auctions);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; auctions.size() > index; index++) {
			
			try {
				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_file\\" + auctions.get(index).getA_des());
				br1 = new BufferedReader(fr1);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;
				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				auctions.get(index).setA_des(sCurrentLInes);
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
				 Date d = new Date();
				 String s = formatter.format(d);
					Date d1 = formatter.parse(s);
					Date d2 = formatter.parse(auctions.get(index).getA_start_date());
					long timeDiff = d2.getTime()-d1.getTime();
					if(timeDiff<100000 && timeDiff>0) {
						 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctions.get(index).getA_post_id());
							AuctionModel auction4=auctionDAO.readMaxBidUser(res1.getA_amount(),auctions.get(index).getA_post_id());
							System.out.println("the mail is "+auction4.getA_email());
							 Mail.sendMessage( auction4.getA_email(), "You are the winner of "+auction4.getA_title()+". \nPlease contact us +959693157774. \nThank you");
						auctions.get(index).setActive(0);
					auctionDAO.updateAuctionPosts(auctions.get(index));
					}
					

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		return modelAndView;
		
	}
	//admin auction winner
	@RequestMapping("/auctionwinner")
	public ModelAndView AdminAuctionWinner() throws ParseException {
		List<AuctionModel> auctions = auctionDAO.readAuctionWinner();
		System.out.println("size of auctons"+auctions.size());
		ModelAndView modelAndView = new ModelAndView("admin_his_aution");
		modelAndView.addObject("auctions", auctions);
		BufferedReader br1 = null;
		ArrayList<WinnerModel> winnerModel = new ArrayList<>();
		FileReader fr1 = null;
		for (int index = 0; auctions.size() > index; index++) {
			
				WinnerModel winnerModel1 = new WinnerModel();
				System.out.println(auctions.get(index).getA_post_id());
				AuctionModel res1 = null;
				try {
						 res1 =auctionDAO.readMaxbidfrompaid(auctions.get(index).getA_post_id());

				}
				catch(Exception e){
					continue;
				}
				if(res1 != null) {
					winnerModel1.setTitle(auctions.get(index).getA_title());
				 winnerModel1.setDate(auctions.get(index).getA_start_date());
				 winnerModel1.setPrice(res1.getA_amount());
				 winnerModel1.setPhoto(auctions.get(index).getA_photo1());
				
					AuctionModel auction4=auctionDAO.readMaxBidUser(res1.getA_amount(),auctions.get(index).getA_post_id());
					winnerModel1.setEmail(auction4.getA_email());
					winnerModel1.setPhone(auction4.getA_phone_no());
					winnerModel1.setName(auction4.getA_first_name()+" "+auction4.getA_last_name());
					winnerModel.add(winnerModel1);
							
				}
				
		}
		modelAndView.addObject("winnerobject",winnerModel);
		return modelAndView;
		
	}
	@RequestMapping("/UserAuctionwinner")
	public ModelAndView UserAuctionWinner() throws ParseException {
		List<AuctionModel> auctions = auctionDAO.readAuctionWinner();
		System.out.println("size of auctons"+auctions.size());
		ModelAndView modelAndView = new ModelAndView("user_his_auction");
		modelAndView.addObject("auctions", auctions);
		BufferedReader br1 = null;
		ArrayList<WinnerModel> winnerModel = new ArrayList<>();
		FileReader fr1 = null;
		for (int index = 0; auctions.size() > index; index++) {
			
				WinnerModel winnerModel1 = new WinnerModel();
				System.out.println(auctions.get(index).getA_post_id());
				AuctionModel res1 = null;
				try {
						 res1 =auctionDAO.readMaxbidfrompaid(auctions.get(index).getA_post_id());

				}
				catch(Exception e){
					continue;
				}
				if(res1 != null) {
					winnerModel1.setTitle(auctions.get(index).getA_title());
				 winnerModel1.setDate(auctions.get(index).getA_start_date());
				 winnerModel1.setPrice(res1.getA_amount());
				 winnerModel1.setPhoto(auctions.get(index).getA_photo1());
				
					AuctionModel auction4=auctionDAO.readMaxBidUser(res1.getA_amount(),auctions.get(index).getA_post_id());
					winnerModel1.setEmail(auction4.getA_email());
					winnerModel1.setPhone(auction4.getA_phone_no());
					winnerModel1.setName(auction4.getA_first_name()+" "+auction4.getA_last_name());
					winnerModel.add(winnerModel1);
							
				}
				
		}
		modelAndView.addObject("winnerobject",winnerModel);
		return modelAndView;
		
	}
	@RequestMapping("/auction")
	public ModelAndView allAuction() throws ParseException, UnsupportedEncodingException {
		List<AuctionModel> auctions = auctionDAO.readAuctions();
		System.out.println("size of auctons"+auctions.size());
		ModelAndView modelAndView = new ModelAndView("auction");
		modelAndView.addObject("auctions", auctions);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; auctions.size() > index; index++) {
			
			try {
				
				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\auction_file\\" + auctions.get(index).getA_des());
				br1 = new BufferedReader(fr1);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;
				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				auctions.get(index).setA_des(sCurrentLInes);
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
				 Date d = new Date();
				 String s = formatter.format(d);
					Date d1 = formatter.parse(s);
					Date d2 = formatter.parse(auctions.get(index).getA_start_date());
					long timeDiff = d2.getTime()-d1.getTime();
					if(timeDiff<100000 && timeDiff>0) {
						 AuctionModel res1=auctionDAO.readMaxbidfrompaid(auctions.get(index).getA_post_id());
							AuctionModel auction4=auctionDAO.readMaxBidUser(res1.getA_amount(),auctions.get(index).getA_post_id());
							System.out.println("the mail is "+auction4.getA_email());
							 Mail.sendMessage( auction4.getA_email(), "You are the winner of "+auction4.getA_title()+". \nPlease contact us +959693157774. \nThank you");
						auctions.get(index).setActive(0);
					auctionDAO.updateAuctionPosts(auctions.get(index));
					}
					

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		return modelAndView;
		
	}

	@RequestMapping("/art")
	public ModelAndView allArt() throws UnsupportedEncodingException {
		List<UserAndArtistModel> cpst = artistDAO.readAll2();
		ModelAndView modelAndView = new ModelAndView("arts");
		modelAndView.addObject("art", cpst);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; cpst.size() > index; index++) {
			try {

				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + cpst.get(index).getS_desc());
				br1 = new BufferedReader(fr1);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;
				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				cpst.get(index).setS_desc(sCurrentLInes);

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		return modelAndView;
	}

	// admin_art
	@RequestMapping("/admin_art")
	public ModelAndView adminArt() throws UnsupportedEncodingException {
		List<UserAndArtistModel> cpst = artistDAO.readAll2();
		ModelAndView modelAndView = new ModelAndView("admin_arts");
		modelAndView.addObject("art", cpst);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; cpst.size() > index; index++) {
			try {

				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + cpst.get(index).getS_desc());
				br1 = new BufferedReader(fr1);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;
				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				cpst.get(index).setS_desc(sCurrentLInes);

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		return modelAndView;
	}

	// editprofile
	@RequestMapping(value = "/editprofile", method = RequestMethod.POST)
	public String editprofile(@Valid @ModelAttribute("artist") UserModel artist, RedirectAttributes redirectAttributes)
			throws IOException {
		userDAO.updateArtistpro(artist);
		redirectAttributes.addFlashAttribute("passwordcorrect", "Your profile has changed");
		return "redirect:/jsp/index";
	}
	@RequestMapping(value = "/editprofilefromadmin", method = RequestMethod.POST)
	public String editprofilefromadmin(@Valid @ModelAttribute("user") UserModel user, RedirectAttributes redirectAttributes)
			throws IOException {
		userDAO.updateArtistpro(user);
		String email=user.getEmail();
		redirectAttributes.addFlashAttribute("email", email);
		return "redirect:/jsp/adminpost";
	}
	// editpassword
	@RequestMapping(value = "/editpassword", method = RequestMethod.POST)
	public String editpassword(@Valid @ModelAttribute("artist") UserModel artist, RedirectAttributes redirectAttributes)
			throws IOException, NoSuchAlgorithmException {
			UserModel existingUser = userDAO.readUser(artist.getUser_id());
			if (!existingUser.getPassword().equals(encode.encoder(artist.getPassword()))) {
				redirectAttributes.addFlashAttribute("passwordStatus", "Incorrect Password");
				return "redirect:/jsp/index";
			} else {
				ArrayList error = Check.isValidPassword(artist);
				if(error.size() == 0) {
					artist.setPassword(encode.encoder(artist.getNew_password()));
					System.out.println(artist.getPassword());
				userDAO.updateArtistpassword(artist);
				redirectAttributes.addFlashAttribute("passwordcorrect", "Your password has changed");
				return "redirect:/jsp/index";
				}
				else {
					String errors = "";
					for (int i = 0; i < error.size(); i++) {
						errors +="<Strong>Error! </Strong>"+ error.get(i) + "<br>";
					}
					redirectAttributes.addFlashAttribute("errors", errors);
				}
			}

		return "redirect:/jsp/index";
	}
	@RequestMapping(value = "/editpasswordfromprofile", method = RequestMethod.POST)
	public String editpasswordfromprofile(@Valid @ModelAttribute("user") UserModel user, RedirectAttributes redirectAttributes)
			throws IOException, NoSuchAlgorithmException {
			UserModel existingUser = userDAO.readUser(user.getUser_id());
			if (!existingUser.getPassword().equals(encode.encoder(user.getPassword()))) {
				redirectAttributes.addFlashAttribute("passwordStatus", "Incorrect Password");
				return "redirect:/jsp/index";
			} else {
				ArrayList error = Check.isValidPassword(user);
				if(error.size() == 0) {
					user.setPassword(encode.encoder(user.getNew_password()));
					System.out.println(user.getPassword());
				userDAO.updateArtistpassword(user);
				redirectAttributes.addFlashAttribute("passwordcorrect", "Your password has changed");
				return "redirect:/jsp/adminpost";
				}
				else {
					String errors = "";
					for (int i = 0; i < error.size(); i++) {
						errors +="<Strong>Error! </Strong>"+ error.get(i) + "<br>";
					}
					redirectAttributes.addFlashAttribute("errors", errors);
				}
			}
			String email=user.getEmail();
			redirectAttributes.addFlashAttribute("email", email);
		return "redirect:/jsp/adminpost";
	}


	@RequestMapping("userprofile/{s_user_id}")
	public String displayprofile(@PathVariable("s_user_id") Integer s_user_id, @SessionAttribute("artist") UserModel artist, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		artist1 = userDAO.readUser(s_user_id);
		artist_art = artistDAO.readArtistArt(s_user_id);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; artist_art.size() > index; index++) {
			try {

				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + artist_art.get(index).getS_desc());
				br1 = new BufferedReader(fr1);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;

				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				artist_art.get(index).setS_desc(sCurrentLInes);

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		System.out.println(artist1.getFirst_name());
		ModelAndView modelAndView = new ModelAndView("user_profile1");
		modelAndView.addObject("fuck", artist_art);
		modelAndView.addObject("artist1", artist1);
		if(artist1.getUser_id()==artist.getUser_id()) {
			return "redirect:/jsp/profile";
		}
		return "redirect:/jsp/artist_profile";

	}

	// culture view_detail and latest post
	@RequestMapping("detail/{c_post_id}")
	public String displayDetail(@PathVariable("c_post_id") Integer c_post_id, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		post = cultureDAO.readPosts(c_post_id);
		lastest = cultureDAO.readPostCultures3();
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; lastest.size() > index; index++) {
			try {
				
				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + lastest.get(index).getC_post_des());
				br1 = new BufferedReader(fr1);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;

				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				lastest.get(index).setC_post_des(Check.removeHTMLtag(sCurrentLInes));

			} catch (IOException e) {

				e.printStackTrace();

			}
		}

		ModelAndView modelAndView = new ModelAndView("culture_detail");
		BufferedReader br = null;
		FileReader fr = null;
		try {

			fr = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + post.getC_post_des());
			br = new BufferedReader(fr);

			String sCurrentLine;
			String sCurrentLInes = "";

			while ((sCurrentLine = br.readLine()) != null) {
				sCurrentLInes += sCurrentLine;

			}
			post.setC_post_des(sCurrentLInes);

		} catch (IOException e) {

			e.printStackTrace();

		}
		modelAndView.addObject("post", post);
		modelAndView.addObject("lastest", lastest);

		return "redirect:/jsp/culture_detail";

	}

	// admin art disable
	@RequestMapping("disableArt/{s_id}")
	public String disableArt(@PathVariable("s_id") Integer s_id, RedirectAttributes redirectAttributes) {
		ArtistModel forDisable = artistDAO.readArtist(s_id);
		forDisable.setS_active(0);
		artistDAO.updateArtDisable(forDisable);
		redirectAttributes.addFlashAttribute("editsuccess","You have successfully banned!");
		return "redirect:/jsp/admin_art";
	}

	@RequestMapping("editArt/{s_id}")
	public String editArt(@PathVariable("s_id") Integer s_id, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		ModelAndView modelAndView = new ModelAndView("art");
		editArt = artistDAO.readArtist(s_id);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		try {

			fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + editArt.getS_desc());
			br1 = new BufferedReader(fr1);

			String sCurrentLine;
			String sCurrentLInes = "";
			int count = 0;

			while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
				sCurrentLInes += sCurrentLine;
				count++;

			}
			editArt.setS_desc(sCurrentLInes);

		} catch (IOException e) {

			e.printStackTrace();

		}

		modelAndView.addObject("editArt", editArt);
		return "redirect:/jsp/edit_art";
	}
	@RequestMapping("editArtprofile/{s_id}")
	public String editArtprofile(@PathVariable("s_id") Integer s_id, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		ModelAndView modelAndView = new ModelAndView("profile_post_edit");
		editArt = artistDAO.readArtist(s_id);
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		try {

			fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + editArt.getS_desc());
			br1 = new BufferedReader(fr1);

			String sCurrentLine;
			String sCurrentLInes = "";
			int count = 0;

			while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
				sCurrentLInes += sCurrentLine;
				count++;

			}
			editArt.setS_desc(sCurrentLInes);

		} catch (IOException e) {

			e.printStackTrace();

		}

		modelAndView.addObject("editArt", editArt);
		return "redirect:/jsp/profile_post_edit";
	}
	
		
	// Post Art Culture
	@RequestMapping(value = "/editAction", method = RequestMethod.POST)
	public String editAction(@Valid @ModelAttribute("artistedit") ArtistModel artistedit,
			RedirectAttributes redirectAttributes) throws IOException {

		ArtistModel editArtAction = artistDAO.readArtist(artistedit.getS_id());
		System.out.println(artistedit.getS_status());
		System.out.println(artistedit.getS_title());
		System.out.println(editArtAction.getS_desc());
		System.out.println(artistedit.getS_art_id());
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + editArtAction.getS_desc());
		System.out.println(file.delete());

		String ext = "txt";
		File dir = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file");
		String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
		File post_file = new File(dir, name);
		while (post_file.exists()) {
			name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
			post_file = new File(dir, name);
		}
		FileWriter fw = new FileWriter(post_file);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write("" + artistedit.getS_desc());
		System.out.println("File written Successfully");
		artistedit.setS_desc(name);
		bw.close();
		artistDAO.updateArt(artistedit);
		/*
		 * ModelAndView modelAndView = new ModelAndView("arts");
		 * List<UserAndArtistModel> cpst=artistDAO.readAll2();
		 * modelAndView.addObject("art",cpst);
		 */
		redirectAttributes.addFlashAttribute("status", "You post is successfully updated.");
		return "redirect:/jsp/art";
	}
	
	@RequestMapping(value = "/editActionFromProfile", method = RequestMethod.POST)
	public String editActionFromProfile(@Valid @ModelAttribute("artistedit") ArtistModel artistedit,
			RedirectAttributes redirectAttributes) throws IOException {

		ArtistModel editArtAction = artistDAO.readArtist(artistedit.getS_id());
		System.out.println(artistedit.getS_status());
		System.out.println(artistedit.getS_title());
		System.out.println(editArtAction.getS_desc());
		System.out.println(artistedit.getS_art_id());
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + editArtAction.getS_desc());
		System.out.println(file.delete());

		String ext = "txt";
		File dir = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file");
		String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
		File post_file = new File(dir, name);
		while (post_file.exists()) {
			name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
			post_file = new File(dir, name);
		}
		FileWriter fw = new FileWriter(post_file);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write("" + artistedit.getS_desc());
		System.out.println("File written Successfully");
		artistedit.setS_desc(name);
		bw.close();
		artistDAO.updateArt(artistedit);
		/*
		 * ModelAndView modelAndView = new ModelAndView("arts");
		 * List<UserAndArtistModel> cpst=artistDAO.readAll2();
		 * modelAndView.addObject("art",cpst);
		 */
		redirectAttributes.addFlashAttribute("status", "Your post is successfully updated.");
		return "redirect:/jsp/profile";
	}

	// deleteArt
	@RequestMapping("deleteArt/{s_id}")
	public String deleteArt(@PathVariable("s_id") Integer s_id, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		ModelAndView modelAndView = new ModelAndView("art");
		ArtistModel deleteArt = artistDAO.readArtist(s_id);
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_images\\" + deleteArt.getS_photo());
		System.out.println(file.delete());
		File file1 = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + deleteArt.getS_desc());
		System.out.println("text file " + file1.delete());
		artistDAO.deleteArt(s_id);
		redirectAttributes.addFlashAttribute("status", "Your post is successfully deleted.");
		return "redirect:/jsp/art";
	}

	// delete art form profile
	@RequestMapping("deleteArtprofile/{s_id}")
	public String deleteArtprofile(@PathVariable("s_id") Integer s_id, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		ModelAndView modelAndView = new ModelAndView("user_profile");
		ArtistModel deleteArt = artistDAO.readArtist(s_id);
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_images\\" + deleteArt.getS_photo());
		System.out.println(file.delete());
		File file1 = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + deleteArt.getS_desc());
		System.out.println("text file " + file1.delete());
		artistDAO.deleteArt(s_id);
		redirectAttributes.addFlashAttribute("status", "Your post is successfully deleted.");
		return "redirect:/jsp/profile";
	}

	// admin delete culture_post
	@RequestMapping("delete/{c_post_id}")
	public String displayEmployee(@PathVariable("c_post_id") Integer c_post_id,
			@SessionAttribute("user") UserModel user, RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		PostCultureModel post = cultureDAO.readPostPhoto(c_post_id);
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_images\\" + post.getC_post_photo());
		System.out.println(file.delete());
		File file1 = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + post.getC_post_des());
		System.out.println("text file " + file1.delete());
		cultureDAO.deletePost(c_post_id);
		redirectAttributes.addFlashAttribute("email", user.getEmail());
		redirectAttributes.addFlashAttribute("deletesuccess","You have successfully deleted!");
		return "redirect:/jsp/admin_culture";
	}

	// admin culture_post_edit
	@RequestMapping("edit/{c_post_id}")
	public String displayEmployeess(@PathVariable("c_post_id") int c_post_id, @SessionAttribute("user") UserModel user,
			RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		adminpostedit = cultureDAO.readPosts(c_post_id);
		ModelAndView modelAndView = new ModelAndView("admin_culture_edit");
		BufferedReader br = null;
		FileReader fr = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		try {

			fr = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + adminpostedit.getC_post_des());
			br = new BufferedReader(fr);

			String sCurrentLine;
			String sCurrentLInes = "";

			while ( (sCurrentLine = br.readLine()) != null) {
				sCurrentLInes += sCurrentLine;

			}
			adminpostedit.setC_post_des(sCurrentLInes);

		} catch (IOException e) {

			e.printStackTrace();

		}
		modelAndView.addObject("email", user.getEmail());
		modelAndView.addObject("post", adminpostedit);
		return "redirect:/jsp/edit_culture";
	}

	// admin culture_post edit Action
	@RequestMapping(value = "/updateAdminCulture", method = RequestMethod.POST)
	public String editPostCulture(@Valid @ModelAttribute("cpost") PostCultureModel cpost,
			@ModelAttribute("user") UserModel user, RedirectAttributes redirectAttributes, BindingResult result)
			throws Exception {
		String email = user.getEmail();
		PostCultureModel mm = cultureDAO.readCulture(cpost.getC_post_id());
		String file_name = mm.getC_post_des();
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File file_delete = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + file_name);
		System.out.println(file_delete.delete());
		String ext = "txt";
		File dir = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file");
		String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
		File post_file = new File(dir, name);
		while (post_file.exists()) {
			name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
			post_file = new File(dir, name);
		}
		FileWriter fw = new FileWriter(post_file);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write("" + cpost.getC_post_des());
		System.out.println("File written Successfully");
		cpost.setC_post_des(name);
		bw.close();
		/* System.out.print(file.getOriginalFilename()); */
		UserModel userId = userDAO.readUserId(user.getEmail().toString());
		cpost.setC_user_id(userId.getUser_id());
		cultureDAO.updatePostCulture(cpost);
		redirectAttributes.addFlashAttribute("email", email);
		redirectAttributes.addFlashAttribute("editsuccess", "You have successfully edited!");
		return "redirect:/jsp/admin_culture";
	}

	@RequestMapping("deleteEvent/{event_id}")
	public String deleteEvent(@PathVariable("event_id") Integer event_id, @SessionAttribute("user") UserModel user,
			RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
		PostEventModel event = eventDAO.readEventPhoto(event_id);
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\event_images\\" + event.getE_photo());
		System.out.println(file.delete());
		eventDAO.deleteEvent(event_id);
		redirectAttributes.addFlashAttribute("email", user.getEmail());
		redirectAttributes.addFlashAttribute("editsuccess", "You have successfully deleted.");
		return "redirect:/jsp/admin_event";
	}

	// edit event
	@RequestMapping("editEvent/{event_id}")
	public String editEvent(@PathVariable("event_id") int event_id, @SessionAttribute("user") UserModel user,
			RedirectAttributes redirectAttributes) {
		admin_event_edit = eventDAO.readEvent(event_id);
		ModelAndView modelAndView = new ModelAndView("admin_event_edit");
		goToAdmin = user.getEmail();
		modelAndView.addObject("email", user.getEmail());
		modelAndView.addObject("event", admin_event_edit);
		return "redirect:/jsp/edit_event";
	}

	// eidt event action
	@RequestMapping(value = "/editEventAction", method = RequestMethod.POST)
	public String editEventAction(@Valid @ModelAttribute("event") PostEventModel event,
			@ModelAttribute("user") UserModel user, RedirectAttributes redirectAttributes, BindingResult result)
			throws Exception {
		String email = user.getEmail();
		System.out.println(user.getEmail());
		UserModel userId = userDAO.readUserId(user.getEmail().toString());
		event.setE_user_id(userId.getUser_id());
		eventDAO.updateEvent(event);
		redirectAttributes.addFlashAttribute("email", email);
		redirectAttributes.addFlashAttribute("editsuccess","You have successfully edited!");
		return "redirect:/jsp/admin_event";
	}

	// user culture_page
	@RequestMapping(value = "/culture_page")
	public ModelAndView culture(ModelMap model) throws UnsupportedEncodingException {
		List<PostCultureModel> cpost = cultureDAO.readPostCultures("0", "9");
		int count = cultureDAO.countCulture();
		int total_page = (int) Math.ceil(count / 9);
		if (count % 9 != 0)
			total_page++;
		ModelAndView modelAndView = new ModelAndView("culture");
		BufferedReader br = null;
		FileReader fr = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; cpost.size() > index; index++) {
			try {
				
				fr = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + cpost.get(index).getC_post_des());
				br = new BufferedReader(fr);

				String sCurrentLine;
				String sCurrentLInes = "";
				int coun = 0;

				while (coun < 1 && (sCurrentLine = br.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					coun++;

				}
				cpost.get(index).setC_post_des(sCurrentLInes.substring(0,100));

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		modelAndView.addObject("employee", cpost);
		modelAndView.addObject("total_record", count);
		modelAndView.addObject("total_page", total_page);
		return modelAndView;
	}
	//Culture Post all
	@RequestMapping("pagnition/{loop.index}")
	public String displayCultures(@PathVariable("loop.index") Integer empId) throws UnsupportedEncodingException {
		counttt = cultureDAO.countCulture();
		total_page = (int) Math.ceil(counttt / 9);
		if (counttt % 9 != 0)
			total_page++;
		String start = ((empId - 1) * 9) + "";
		cposttt = cultureDAO.readPostCultures(start, "9");
		ModelAndView modelAndView = new ModelAndView("culture");
		BufferedReader br = null;
		FileReader fr = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; cposttt.size() > index; index++) {
			try {

				fr = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + cposttt.get(index).getC_post_des());
				br = new BufferedReader(fr);

				String sCurrentLine;
				String sCurrentLInes = "";
				int coun = 0;

				while (coun < 1 && (sCurrentLine = br.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					coun++;

				}
				cposttt.get(index).setC_post_des(Check.removeHTMLtag(sCurrentLInes));

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		modelAndView.addObject("employee", cposttt);
		modelAndView.addObject("total_record", counttt);
		modelAndView.addObject("total_page", total_page);
		return "redirect:/jsp/culture_pagepag";
	}

	// admin event_posts
	@RequestMapping(value = "/admin_event")
	public ModelAndView event(ModelMap model, @SessionAttribute("user") UserModel user) {
		List<PostEventModel> events = eventDAO.readEvents();
		ModelAndView modelAndView = new ModelAndView("admin_event");
		modelAndView.addObject("email", user.getEmail());
		/*
		 * System.out.println(user.getEmail()); System.out.println(user.getPhone_no());
		 */
		modelAndView.addObject("info", user.getPhone_no());
		modelAndView.addObject("events", events);
		return modelAndView;
	}

	// admin culture_posts
	@RequestMapping(value = "/admin_culture")
	public ModelAndView culture_post(ModelMap model, @SessionAttribute("user") UserModel user) throws UnsupportedEncodingException {
		List<PostCultureModel> posts = cultureDAO.readPostCulturesForAdmin();
		BufferedReader br = null;
		FileReader fr = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; posts.size() > index; index++) {
			try {

				fr = new FileReader(
						path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file\\" + posts.get(index).getC_post_des());
				br = new BufferedReader(fr);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;

				while (count < 1 && (sCurrentLine = br.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				posts.get(index).setC_post_des(Check.removeHTMLtag(sCurrentLInes));

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		ModelAndView modelAndView = new ModelAndView("admin_culture");
		modelAndView.addObject("email", user.getEmail());
		modelAndView.addObject("info", user.getPhone_no());
		modelAndView.addObject("posts", posts);
		return modelAndView;
	}

	// user_page
	@RequestMapping(value = "/index_page", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("index", "employee", new Employee());
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView profile(@SessionAttribute("artist") UserModel artist) throws UnsupportedEncodingException {
		artpro = artistDAO.readArtistArt(artist.getUser_id());
		BufferedReader br1 = null;
		FileReader fr1 = null;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		for (int index = 0; artpro.size() > index; index++) {
			try {

				fr1 = new FileReader(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file\\" + artpro.get(index).getS_desc());
				br1 = new BufferedReader(fr1);

				String sCurrentLine;
				String sCurrentLInes = "";
				int count = 0;

				while (count < 1 && (sCurrentLine = br1.readLine()) != null) {
					sCurrentLInes += sCurrentLine;
					count++;

				}
				artpro.get(index).setS_desc(sCurrentLInes);

			} catch (IOException e) {

				e.printStackTrace();

			}
		}
		ModelAndView modelAndView = new ModelAndView("user_profile");
		modelAndView.addObject("fuck", artpro);
		System.out.println("thie size of artpro"+artpro.size());
		return modelAndView;
	}

	@RequestMapping(value = "/profile_post_edit", method = RequestMethod.GET)
	public ModelAndView editArtfromprofile() {
		ModelAndView modelAndView = new ModelAndView("profile_post_edit");
		modelAndView.addObject("edit_condition", "true");
		modelAndView.addObject("editArt", editArt);
		return modelAndView;
	}
	@RequestMapping(value = "/edit_art", method = RequestMethod.GET)
	public ModelAndView editArt() {
		ModelAndView modelAndView = new ModelAndView("arts");
		modelAndView.addObject("edit_condition", "true");
		modelAndView.addObject("editArt", editArt);
		return modelAndView;
	}
	
	@RequestMapping(value = "/auction_check", method = RequestMethod.GET)
	public ModelAndView auction_check(RedirectAttributes redirectAttributes) {
		
		
		ModelAndView modelAndView = new ModelAndView("play_auction");
		modelAndView.addObject("playing",playing);
		modelAndView.addObject("auction", auction);
		modelAndView.addObject("topaybid_condition",topaybid_condition);
		 modelAndView.addObject("win_condition", win_condition);
		return modelAndView;
	}
	

	@RequestMapping(value = "/artist_profile", method = RequestMethod.GET)
	public ModelAndView profile1() {
		ModelAndView modelAndView = new ModelAndView("user_profile1");
		modelAndView.addObject("fuck", artist_art);
		modelAndView.addObject("artist1", artist1);
		return modelAndView;
	}

	@RequestMapping(value = "/culture_pagepag", method = RequestMethod.GET)
	public ModelAndView pag() {
		ModelAndView modelAndView = new ModelAndView("culture");
		modelAndView.addObject("employee", cposttt);
		modelAndView.addObject("total_record", counttt);
		modelAndView.addObject("total_page", total_page);
		return modelAndView;
	}

	@RequestMapping(value = "/culture_detail", method = RequestMethod.GET)
	public ModelAndView detail() {
		ModelAndView modelAndView = new ModelAndView("culture_detail");
		modelAndView.addObject("post", post);
		modelAndView.addObject("lastest", lastest);
		return modelAndView;
	}

	@RequestMapping(value = "/edit_culture", method = RequestMethod.GET)
	public ModelAndView editculture() {
		ModelAndView modelAndView = new ModelAndView("admin_culture_edit");
		modelAndView.addObject("email", goToAdmin);
		modelAndView.addObject("post", adminpostedit);
		return modelAndView;
	}

	@RequestMapping(value = "/edit_event", method = RequestMethod.GET)
	public ModelAndView editevent() {
		ModelAndView modelAndView = new ModelAndView("admin_event_edit");
		modelAndView.addObject("email", goToAdmin);
		modelAndView.addObject("post", admin_event_edit);
		return modelAndView;
	}

	@RequestMapping(value = "/login_page", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView newEmployee() {
		return new ModelAndView("register");
	}

	/* Check Create Account is valid or not */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String addNewEmployee(@Valid @ModelAttribute("user1") UserModel user1, RedirectAttributes redirectAttributes,
			BindingResult result) throws Exception {
		UserModel u_active = userDAO.readUserActive(user1.getEmail());
		if (userDAO.readUserMail(user1.getEmail()) == null) {
			ArrayList<String> errors = Check.isValid(user1);
			if (errors.size() == 0) {
				user1.setPassword(encode.encoder(user1.getPassword()));
				String code1 = Check.randomCode();
				String code = "Your conifirmation code is "+code1+".";
				Mail.sendMessage(user1.getEmail(), code);
				user1.setActivate_code(code1);
				user1.setIs_artist(1);
				userDAO.createUser(user1);
				redirectAttributes.addFlashAttribute("message", user1.getActivate_code());
			} else {
				String error = "";
				for (int i = 0; i < errors.size(); i++) {
					error += "<Strong>Error!</Strong>  "+errors.get(i) + "<br>";
				}
				redirectAttributes.addFlashAttribute("errors", error);
				return "redirect:/jsp/register";
			}
		} else {
			redirectAttributes.addFlashAttribute("existingAcc", "Your email address is already in used.");
			return "redirect:/jsp/register";
		}
		return "redirect:/jsp/toActive";
	}

	@RequestMapping(value = "/toActive", method = RequestMethod.GET)
	public ModelAndView toActive() {
		return new ModelAndView("register_confirm");
	}

	@RequestMapping(value = "/toActivee", method = RequestMethod.POST)
	public String Active(@Valid @ModelAttribute("user1") UserModel user1, RedirectAttributes redirectAttributes,
			BindingResult result) throws Exception {
		System.out.println(user1.getActivate_code());
		UserModel artist = userDAO.readUser(user1.getUser_id(), user1.getActivate_code());
		if (artist != null) {
			user1.setActive(1);
			System.out.println(user1.getActive());
			if (userDAO.updateArtist(artist)) {
				redirectAttributes.addFlashAttribute("register","You have been registered successfully!");
				return "redirect:/jsp/login_page";
			}
		}
		redirectAttributes.addFlashAttribute("incorrectCode", "Your code is incorrect");
		return "redirect:/jsp/toActive";
	}

	// admin_home
	@RequestMapping(value = "/adminpost")
	public ModelAndView adminpst(ModelMap model, @SessionAttribute("user") UserModel user) {
		ModelAndView modelAndView = new ModelAndView("admin_page");
		modelAndView.addObject("email", user.getEmail());
		return modelAndView;

	}

	// artist post
	@RequestMapping(value = "/art_post", method = RequestMethod.POST)
	
	public String artistPost(@Valid @ModelAttribute("art") ArtistModel art, @ModelAttribute("user") UserModel user,
			@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes, BindingResult result)
			throws Exception {
		System.out.println("ball lr");

		int artist_id = user.getUser_id();
		System.out.println(art.getS_art_id());
		System.out.println("error shi nay");
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("status", "Please select a file to upload");
			/* return "redirect:/jsp/art"; */
			return "redirect:/jsp/art";
		}
		/*
		 * List<PostEventModel> events = eventDAO.readEvents(); for(PostEventModel
		 * even:events) { if(even.getE_photo().equals(file.getOriginalFilename())) {
		 * redirectAttributes.addFlashAttribute("message", "Existing File"); return
		 * "redirect:/jsp/art"; return modelAndView; } }
		 */
		byte[] bytes = file.getBytes();
		String fileName = file.getOriginalFilename();
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File newFile = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_images");

		File serverFile = new File(newFile.getAbsolutePath() + File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();

		String ext = "txt";
		File dir = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\art_file");
		String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);

		File post_file = new File(dir, name);
		while (post_file.exists()) {
			name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
			post_file = new File(dir, name);
		}
		FileWriter fw = new FileWriter(post_file);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write("" + art.getS_desc());
		System.out.println("File written Successfully");
		art.setS_desc(name);
		bw.close();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
		LocalDateTime now = LocalDateTime.now();
		System.out.println(dtf.format(now));
		art.setS_date(dtf.format(now).toString());
		artistDAO.creatArt(art, file.getOriginalFilename());
		List<UserAndArtistModel> cpst = artistDAO.readAll2();
		System.out.println(cpst.size());
		ModelAndView modelAndView = new ModelAndView("arts");
		modelAndView.addObject("art", cpst);
		redirectAttributes.addFlashAttribute("status", "Your new post is successfully uploaded.");
		return "redirect:/jsp/art";

	};
	@RequestMapping(value = "/postAuction", method = RequestMethod.POST)
	public String addAuction(@Valid @ModelAttribute("auction") AuctionModel auction, @ModelAttribute("user") UserModel user,
			@RequestParam("uploadingFiles") MultipartFile[] uploadingFiles, RedirectAttributes redirectAttributes, BindingResult result)
			throws Exception {
		String email = user.getEmail();
		String[]images=null;
		int i=0;
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		 for(MultipartFile uploadedFile : uploadingFiles) {
	            File file = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\multifile\\"+ uploadedFile.getOriginalFilename());
	   
	            uploadedFile.transferTo(file);
	            images[i]=uploadedFile.getOriginalFilename();
	            i++;
	        }
		 auction.setA_photo1(images[0]);
		 auction.setA_photo2(images[1]);
		 auction.setA_photo3(images[2]);
		 auctionDAO.createAuction(auction);
		return "redirect:/jsp/adminpost";
	}

	// admin_home
	@RequestMapping(value = "/store", method = RequestMethod.POST)
	public String addPost(@Valid @ModelAttribute("event") PostEventModel event, @ModelAttribute("user") UserModel user,
			@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes, BindingResult result)
			throws Exception {
		String email = user.getEmail();
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			redirectAttributes.addFlashAttribute("email", email);
			return "redirect:/jsp/adminpost";
		}
		List<PostEventModel> events = eventDAO.readEvents();
		for (PostEventModel even : events) {
			if (even.getE_photo().equals(file.getOriginalFilename())) {
				redirectAttributes.addFlashAttribute("message", "Existing File");
				redirectAttributes.addFlashAttribute("email", email);
				return "redirect:/jsp/adminpost";
			}
		}

		/*
		 * System.out.println(event.getE_start_date());
		 * System.out.print(file.getOriginalFilename());
		 * System.out.println(user.getEmail());
		 */

		UserModel userId = userDAO.readUserId(user.getEmail().toString());
		event.setE_user_id(userId.getUser_id());
		byte[] bytes = file.getBytes();
		String fileName = file.getOriginalFilename();
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		File newFile = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\event_images");

		File serverFile = new File(newFile.getAbsolutePath() + File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();
		eventDAO.createEvent(event, file.getOriginalFilename());
		 redirectAttributes.addFlashAttribute("PostSuccessful", "Your new event is successfully uploaded.");
		redirectAttributes.addFlashAttribute("email", email);
		return "redirect:/jsp/adminpost";
	}

	// admin_home
	@RequestMapping(value = "/culture", method = RequestMethod.POST)
	public String addPostCulture(@Valid @ModelAttribute("cpost") PostCultureModel cpost,
			@ModelAttribute("user") UserModel user, @RequestParam("file") MultipartFile file,
			RedirectAttributes redirectAttributes, BindingResult result) throws Exception {
		String email = user.getEmail();
		getPath p=new getPath();
		String path=p.path();
		String []path1=path.split("\\\\");
		/*
		 * System.out.println(cpost.getC_post_title());
		 * System.out.println(cpost.getC_post_des());
		 */

		if (file.isEmpty()) {
			/*
			 * System.out.println(file.isEmpty());
			 * System.out.println(file.getOriginalFilename());
			 */
			redirectAttributes.addFlashAttribute("message", "Choose a file to upload.");
			redirectAttributes.addFlashAttribute("email", email);
			return "redirect:/jsp/adminpost";
		}
		List<PostCultureModel> cposts = cultureDAO.readPostCultures("0", "9");
		for (PostCultureModel cpst : cposts) {
			System.out.println(cpost.getC_post_photo());
			if (cpst.getC_post_photo().equals(file.getOriginalFilename())) {
				redirectAttributes.addFlashAttribute("message", "This file name is already existed.");
				redirectAttributes.addFlashAttribute("email", email);
				return "redirect:/jsp/adminpost";
			}
		}
		String ext = "txt";
		File dir = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_file");
		String name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);

		File post_file = new File(dir, name);
		while (post_file.exists()) {
			name = String.format("%s.%s", RandomStringUtils.randomAlphanumeric(8), ext);
			post_file = new File(dir, name);
		}
		FileWriter fw = new FileWriter(post_file);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write("" + cpost.getC_post_des());
		System.out.println("File written Successfully");
		cpost.setC_post_des(name);
		bw.close();

		/* System.out.print(file.getOriginalFilename()); */
		UserModel userId = userDAO.readUserId(user.getEmail().toString());
		cpost.setC_user_id(userId.getUser_id());
		byte[] bytes = file.getBytes();
		String fileName = file.getOriginalFilename();
		File newFile = new File(path1[0]+"\\"+path1[1]+"\\demo\\src\\main\\webapp\\culture_images");

		File serverFile = new File(newFile.getAbsolutePath() + File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();
		cultureDAO.createPostCulture(cpost, file.getOriginalFilename());
		redirectAttributes.addFlashAttribute("email", email);
		 redirectAttributes.addFlashAttribute("PostSuccessful", "Your new post is successfully uploaded.");
		return "redirect:/jsp/adminpost";
	}

	// login
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(@Valid @ModelAttribute("user") UserModel user, @SessionAttribute("artist") UserModel artist,
			RedirectAttributes redirectAttributes, BindingResult result) throws NoSuchAlgorithmException {
		System.out.println(artist.getUser_id());
		UserModel userLogin = userDAO.readUserLogin(user.getEmail(), encode.encoder(user.getPassword()));
		if (userLogin != null) {
			
			if (userLogin != null) {
				if (userLogin.getActive() == 1) {
					if (userLogin.getIs_admin() == 1) {
						/*
						 * ModelAndView modelAndView = new ModelAndView("admin_page.jsp");
						 * modelAndView.addObject("message", user.getIs_admin()); return modelAndView;
						 */

						user.setUser_id(userLogin.getUser_id());
						user.setFirst_name(userLogin.getFirst_name());
						user.setLast_name(userLogin.getLast_name());
						user.setAddress(userLogin.getAddress());
						user.setPhone_no(userLogin.getPhone_no());
						user.setGender(userLogin.getGender());
						String email = userLogin.getEmail();
						redirectAttributes.addFlashAttribute("successful", "You have been logged in successfully!");
						redirectAttributes.addFlashAttribute("email", email);
						return "redirect:/jsp/adminpost";
					} else {
						artist.setUser_id(userLogin.getUser_id());
						artist.setFirst_name(userLogin.getFirst_name());
						artist.setEmail(userLogin.getEmail());
						artist.setLast_name(userLogin.getLast_name());
						artist.setAddress(userLogin.getAddress());
						artist.setGender(userLogin.getGender());
						artist.setPhone_no(userLogin.getPhone_no());
						artist.setPassword(userLogin.getPassword());
						redirectAttributes.addFlashAttribute("successful","You have been logged in successfully!");
						redirectAttributes.addFlashAttribute("artist_name", userLogin.getFirst_name());
						return "redirect:/jsp/index";
					}
				}
				else {
					redirectAttributes.addFlashAttribute("successful","Your account is not activated!");
					return "redirect:/jsp/toActive";
				}
			}
		}

		else {
			redirectAttributes.addFlashAttribute("error", "<Strong>Error! </Strong> Invalid Account.");
		}
		/*
		 * ModelAndView modelAndView = new ModelAndView("index");
		 * modelAndView.addObject("message", user.getIs_artist()); return modelAndView;
		 */
		return "redirect:/jsp/login_page";

	}

	@RequestMapping(value = "/sessionClear", method = RequestMethod.GET)
	public String Clear(@ModelAttribute UserModel user, HttpServletRequest request, SessionStatus status,
			HttpSession session, Model model,RedirectAttributes redirectAttributes) {
		status.setComplete();
		/* request.removeAttribute("user", WebRequest.SCOPE_SESSION); */
		request.getSession().invalidate();
		user.setIs_artist(0);
		redirectAttributes.addFlashAttribute("successful", "You have been logged out successfully!");
		return "redirect:/jsp/index";
	}
}
