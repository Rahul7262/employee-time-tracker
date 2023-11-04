package com.practice.admin.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.practice.admin.entity.User;
import com.practice.admin.service.UserService;

@Controller
@RequestMapping("admin/user")
public class UserController {
	
	@Autowired private UserService userservice;
	
	
	@RequestMapping("dashboard")
	public String getDashBoard(Model model, HttpSession ses) {
		
		Object adminIdForCheck = ses.getAttribute("admin");
		if(adminIdForCheck==null) {
			return "redirect:/admin/";
		}
		List<User> list = userservice.getUsertList();
		model.addAttribute("ulist", list);
		return "admin/user/dashboard";

	}
	
	@RequestMapping("add-user")
	public String getAddUserView(HttpSession ses) {
		Object adminIdForCheck = ses.getAttribute("admin");
		if(adminIdForCheck==null) {
			return "redirect:/admin/";
		}
		return "admin/user/adduser";
	}
	
	@RequestMapping("save-user")
	public String saveUserRecord( User user, Model model) {
		
		User oneuser = userservice.getUserByPhoneNumber(user.getPhone());
		//System.out.println(oneuser.getName());
		if(oneuser!=null) {
			
			model.addAttribute("savemsg", "User Alreday Register with this "+ user.getPhone());
			return "admin/user/adduser";
		}
		
		userservice.saveUser(user);
		model.addAttribute("savemsg", "User Added SuccesFully");
		return "redirect:dashboard"; 
	}
	
	@RequestMapping("delete-user")
	public String deleteEmployee( String userid, Model model ) {
		userservice.deleteUser(userid);
		model.addAttribute("deletemsg", "User Record deleted SuccesFully");
		return "redirect:dashboard";
	}
	
	@RequestMapping("update-view")
	public String getUpdateView(String phone, Model model) {

		User user = userservice.getUserByPhoneNumber(phone);
		model.addAttribute("umsg", user);
		
		return "admin/user/updateuser";

	}
	
	@RequestMapping("update-user")
	public String updateUserRecord(User nuser, Model model) {
		userservice.updateUser(nuser);
		model.addAttribute("updatemsg", "User Record Updated SuccesFully");
		return "redirect:dashboard"; 
	}
	

}
