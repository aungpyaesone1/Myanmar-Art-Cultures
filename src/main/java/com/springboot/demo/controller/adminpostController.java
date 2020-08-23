package com.springboot.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.springboot.demo.model.adminpost;

import com.springboot.demo.dao.adminpostDao;
import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
@Controller
//@RequestMapping(path="/")
public class adminpostController {
	@RequestMapping(value= "/post", method=RequestMethod.POST)
	public String viewResult(Model m1, adminpost adpost) {
		adminpostDao dao=new adminpostDao();
		int res=dao.getValidUser(adpost.getPost_title(),adpost.getPost_description());
		System.out.println(res);
	if(res==1) {
		return "admin_page";
	}
	else {
		m1.addAttribute("message","<div style='border:1px solid red'>Incorrect account</div>");
		return "admin_page";
	}
	}

	

}






