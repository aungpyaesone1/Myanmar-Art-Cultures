package com.springboot.demo.controller;

import java.awt.List;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.validation.Valid;

import com.springboot.demo.db.AuctionUser;
import com.springboot.demo.model.AuctionModel;
import com.springboot.demo.model.UserModel;

public class Check {
	public static ArrayList<String> isValid(UserModel user) {
		ArrayList<String> error = new ArrayList<String>();
		if(!new validate_code_source().isAddressValid(user.getEmail())) {
			error.add("<Strong>Invalid Email</Strong>");
		}
		
		//Password length is greater than 7
		if(user.getPassword().length() <7) {
			error.add("<Strong>Weak Password</strong>");
		}
		//Password-mis match
		else if(user.getPassword().equals(user.getRetype_password())) {
			error.add("<Strong> password-mis match</strong>");
		}
		//Check password at least Upper-character
		else if(!(atLeastCapCharacter(user.getPassword()) && atLeastNumber(user.getPassword()))) {
			error.add("<Strong> Password must contain one upper-case latte and a digit</strong>");
		}
		
		//Check for phone number 
		if(!isDigit(user.getPhone_no())) {
			error.add("<Strong>Invalid Phone No.</strong>");
		}
	

		return error;
	}
	public static ArrayList<String> isValidauction(AuctionModel user) {
		ArrayList<String> error = new ArrayList<String>();
		if(!new validate_code_source().isAddressValid(user.getA_email())) {
			error.add("<Strong>Invalid Email</Strong>");
		}
		
		//Password length is greater than 7
		if(user.getA_password().length() <7) {
			error.add("<Strong>Weak Password</strong>");
		}
		//Password-mis match
		else if(!user.getA_password().equals(user.getA_retype())) {
			error.add("<Strong> password-mis match</strong>");
		}
		//Check password at least Upper-character
		else if(!(atLeastCapCharacter(user.getA_password()) && atLeastNumber(user.getA_password()))) {
			error.add("<Strong> Password must contain one upper-case letter and a digit</strong>");
		}
		
		//Check for phone number 
		if(!(user.getA_phone_no().length()>6 && user.getA_phone_no().length()<12)) {
			error.add("<Strong>Invalid Phone No.</strong>");
		}
	

		return error;
	}
	
	public static ArrayList<String> isValidPassword(UserModel user){
		ArrayList<String> error = new ArrayList<String>();
		//Password length is greater than 7
				if(user.getNew_password().length() <7) {
					error.add("<Strong>Password must contain at least 8 character</strong>");
				}
				//Password-mis match
				else if(!user.getNew_password().equals(user.getRetype_password())) {
					error.add("<Strong> Password-mis match</strong>");
				}
				//Check password at least Upper-character
				else if(!(atLeastCapCharacter(user.getNew_password()) && atLeastNumber(user.getNew_password()))) {
					error.add("<Strong> Password must contain one upper case letter and a digit</strong>");
				}
				
		return error;
	}
	//Check password at least Upper-character
	public static boolean atLeastCapCharacter(String password) {
		for(int i = 0 ; i<password.length();i++) {
			if(password.charAt(i) >= 'A' && password.charAt(i) <= 'Z') {
				return true;
			}
			
		}
		return false;

	}
	//Check password at least Upper-character
		public static boolean atLeastNumber(String password) {
			for(int i = 0 ; i<password.length();i++) {
				if(password.charAt(i) >= '0' && password.charAt(i) <= '9') {
					return true;
				}
				
			}
			return false;

		}
	
	
	//Generate randowm activation code
	public static String randomCode() {
		Random r = new Random();
		return (r.nextInt(999999)+100000)+"";
	}
	
	
	//Check for phone number 
	public static boolean isDigit(String num) {

		  try  
		  {  
		    double d = Double.parseDouble(num);  
		  }  
		  catch(NumberFormatException nfe)  
		  {  
		    return false;  
		  }  
		  return true; 
	}
	//Substring and remove the culture post
	public static String removeHTMLtag(String s) {
		int count = 0;
		String sub = "";
			if(s.length()<100)
			while(s.length()>count && sub.length() <90) {
				if(s.charAt(count) == '<') {
					while(s.charAt(count) != '>')
						count++;
					count++;
				}
				sub += s.charAt(count++);
			}
			else
				sub = s.substring(0, 70);
			return sub;
				
		}
	
	
	
}
