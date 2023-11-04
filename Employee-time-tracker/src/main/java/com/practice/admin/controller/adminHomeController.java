package com.practice.admin.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.admin.entity.Employee;
import com.practice.admin.entity.TimeInfo;
import com.practice.admin.service.EmployeeService;
import com.practice.user.repository.TimeRepository;

@Controller
@RequestMapping("admin")
public class adminHomeController {

	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("/")
	public String HomeView() {

		return "admin/login";
	}

	@RequestMapping("login-admin")
	public String loginAthuntication(String adminid, String password, Model model, HttpSession ses) {

		if (adminid.equals("Rahul") && password.equals("7000")) {

			ses.setAttribute("admin", adminid);
			return "redirect:/admin/home";
		} else {
			model.addAttribute("log", "OOPS..., Invalid ID or Password");
			return "admin/login";
		}

	}

	@RequestMapping("home")
	public String getAdminHomeView(HttpSession ses) {

		Object adminIdForCheck = ses.getAttribute("admin");
		if (adminIdForCheck == null) {
			return "redirect:/admin/";
		}
		return "admin/adminhome";
	}

	@RequestMapping("dashboard")
	public String getDashBoard(Model model, HttpSession ses) {
		List<Employee> list = employeeService.getEmployeetList();
		model.addAttribute("elist", list);
		Object adminIdForCheck = ses.getAttribute("admin");
		if (adminIdForCheck == null) {
			return "redirect:/admin/";
		}
		return "admin/employee/dashboard";

	}

	@RequestMapping("add-employee")
	public String getAddEmployeeView() {
		return "admin/employee/addemployee";
	}

	@RequestMapping("save-record")
	public String saveEmployeeRecord(Employee employee, Model model) {
		employeeService.saveEmployee(employee);
		model.addAttribute("savemsg", "Employee Record Added SuccesFully");
		return "redirect:dashboard";
	}

	@RequestMapping("delete-record")
	public String deleteEmployee(int eid, Model model) {
		employeeService.deleteEmployee(eid);
		model.addAttribute("deletemsg", "Employee Record deleted SuccesFully");
		return "redirect:dashboard";
	}

	@RequestMapping("update-view")
	public String getUpdateView(int eid, Model model) {

		Employee employee = employeeService.getEmployee(eid);
		List<String> list = Arrays.asList("Training", "Marketing", "Accounts", "Inventory", "Sales", "Human Resource");
		model.addAttribute("dlist", list);
		model.addAttribute("emsg", employee);

		return "admin/employee/updateemployee";

	}

	@RequestMapping("update-record")
	public String updateEmployeeRecord(Employee nemployee, Model model) {
		employeeService.updateEmployee(nemployee);
		model.addAttribute("updatemsg", "Employee Record Updated SuccesFully");
		return "redirect:dashboard";
	}

	@RequestMapping("logout")
	public String adminLogout(HttpSession ses) {
		ses.invalidate();
		return "redirect:/";
	}


}
