package com.practice.user.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.admin.entity.Employee;
import com.practice.admin.entity.TimeInfo;
import com.practice.admin.repository.EmployeeRepository;
import com.practice.user.service.ReportService;
import com.practice.user.service.TimeInOutService;

@Controller
@RequestMapping("report")
public class ReportController {

	@Autowired
	private EmployeeRepository employeeRepository;
	@Autowired
	private TimeInOutService timeService;
	@Autowired
	private ReportService reportService;

	@RequestMapping("date-option")
	public String getDatewiseHomeView(HttpSession sess,Model model) {

		if (sess.getAttribute("user") == null) {
			return "user/log";
		}
		
		LocalDate date = LocalDate.now();
		model.addAttribute("cdate", date);
		return "user/report/datewise/dateoption";
	}
	
	@RequestMapping("employee-list")
	public String getEmployeeList(HttpSession sess, Model model) {

		if (sess.getAttribute("user") == null) {
			return "user/log";
		}
		
		List<Employee> list = employeeRepository.getAllEmployeeList();
		model.addAttribute("elist", list);
		return "user/report/employeewise/listEmployee";

	}
	
	@RequestMapping("show-report")
	public String getReportView(int eid , HttpSession sess, Model model) {

		if (sess.getAttribute("user") == null) {
			return "user/log";
		}
	
		List<TimeInfo> list = timeService.getTimeInfoListByEid(eid);
		model.addAttribute("tilist", list);
		return "user/report/employeewise/empreport";

	}
	

	@RequestMapping("current-date-report")
	public String getReportView(HttpSession sess, Model model) {

		if (sess.getAttribute("user") == null) {
			return "user/log";
		}
		LocalDate date = LocalDate.now();
		System.out.println(date);
		List<TimeInfo> list = reportService.getTimeInfoListByCurrentDate();

		model.addAttribute("msg", date);
		model.addAttribute("tilist", list);
		return "user/report/datewise/empreport";

	}

	@RequestMapping("enter-date-report")
	public String getReportView(String selectedDate, HttpSession sess, Model model) {

		if (sess.getAttribute("user") == null) {
			return "user/log";
		}

		List<TimeInfo> list = reportService.getTimeInfoListByEnterDate(selectedDate);
		model.addAttribute("msg", selectedDate);
		model.addAttribute("tilist", list);
		return "user/report/datewise/empreport";
	}

	@RequestMapping("enter-between-date-report")
	public String getReportView(String startDate, String endDate, HttpSession sess, Model model) {

		if (sess.getAttribute("user") == null) {
			return "user/log";
		}

		List<TimeInfo> list = reportService.getTimeInfoListBetweenTwoDate(startDate, endDate);
		model.addAttribute("msg", "between " + startDate + " to " + endDate);
		model.addAttribute("tilist", list);
		return "user/report/datewise/empreport";
	}

}
