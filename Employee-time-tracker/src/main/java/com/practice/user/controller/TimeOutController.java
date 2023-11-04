package com.practice.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.admin.entity.Employee;
import com.practice.admin.repository.EmployeeRepository;
import com.practice.admin.entity.TimeInfo;
import com.practice.user.service.TimeInOutService;

@Controller
@RequestMapping("timeout")
public class TimeOutController {

	@Autowired
	private EmployeeRepository employeeRepository;
	@Autowired
	private TimeInOutService timeService;

	@RequestMapping("list")
	public String HomeView(HttpSession sess, Model model) {

		if (sess.getAttribute("user") == null) {
			return "user/log";
		}

		List<Employee> list = employeeRepository.getAllTimeInEmployeeList("in");
		model.addAttribute("elist", list);

		return "user/out/listEmployee";
	}

	@RequestMapping("save-timeout")
	public String updateEmployeeRecord(TimeInfo timeInfo, Model model) {
		timeService.saveTimeoutInformation(timeInfo);
		model.addAttribute("updatemsg", "Employee Record Updated SuccesFully");
		return "redirect:list";
	}

}
