package com.practice.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.admin.entity.User;
import com.practice.admin.repository.UserRepository;

@Controller
@RequestMapping("user")
public class UserHomeController {

	@Autowired
	private UserRepository userRepository;

	@RequestMapping("/")
	public String LoginView() {

		return "user/log";
	}

	@RequestMapping("login-verification")
	public String getDashBoardView(String userid, String password, Model model, HttpSession sess) {

		User user = userRepository.getUser(userid);

		if (user == null) {

			model.addAttribute("msg", "OOPS..., Invalid Id ");
			return "redirect:/user/";
		}
		// String username = user.getName();

		if (!user.getPassword().equals(password)) {

			model.addAttribute("msg", "OOPS..., Wrong Password ");
			return "redirect:/user/";
		}
		sess.setAttribute("user", userid);
		// sess.setAttribute("username", username);
		return "redirect:/user/home";

	}

	@RequestMapping("home")
	public String HomeView(HttpSession sess) {

		if (sess.getAttribute("user") == null) {
			return "redirect:/";
		}
		return "/user/userhome";
	}

	@RequestMapping("logoutuser")
	public String adminLogout(HttpSession ses) {
		ses.invalidate();
		return "redirect:/";
	}

}
