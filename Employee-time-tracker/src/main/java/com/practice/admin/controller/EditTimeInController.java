package com.practice.admin.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.admin.entity.TimeInfo;
import com.practice.user.service.TimeInOutService;

@Controller
@RequestMapping("admin/timein")
public class EditTimeInController {
	
	@Autowired
	private TimeInOutService timeInOutService;


	@RequestMapping("timein-view")
	public String getTimeOutView(HttpSession ses) {

		Object adminIdForCheck = ses.getAttribute("admin");
		if (adminIdForCheck == null) {
			return "redirect:/admin/";
		}
		return "admin/edittimein/search";
	}
	
	@RequestMapping("edit-time-dashboard")
	public String getEditTimeDashBoard(int eid, Model model) {
		List<TimeInfo> list = timeInOutService.getTimeInfoListByEid(eid);
		model.addAttribute("tilist", list);
		return "admin/edittimein/dashboard";

	}

	@RequestMapping("edit-intime-view")
	public String getUpdateTimeOutView(int timeid, Model model) {

		TimeInfo timeInfo = timeInOutService.getTimeInfoByTimeid(timeid);
		model.addAttribute("tmsg", timeInfo);
		return "admin/edittimein/edittimein";

	}
	
	@RequestMapping("update-in-time")
	public String updateTimeInfoRecord(TimeInfo timeInfo, Model model) {
//		LocalDate date1 = LocalDate.parse(date);
//		timeInfo.setDate(date1);,String date
		System.out.println(timeInfo.getDate());
		//timeInOutService.updateTimeInfo(timeInfo);
		model.addAttribute("updatemsg", "Employee InTime Record Update SuccesFully");
		return "redirect:timein-view";
	}

}
