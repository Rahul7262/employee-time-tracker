package com.practice.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.admin.entity.TimeInfo;
import com.practice.user.service.TimeInOutService;

@Controller
@RequestMapping("admin/timeout")
public class EditTimeOutController {

	@Autowired
	private TimeInOutService timeInOutService;

	@RequestMapping("timeout-view")
	public String getTimeOutView(HttpSession ses) {

		Object adminIdForCheck = ses.getAttribute("admin");
		if (adminIdForCheck == null) {
			return "redirect:/admin/";
		}
		return "admin/edittimeout/search";
	}

	@RequestMapping("edit-time-dashboard")
	public String getEditTimeDashBoard(int eid, Model model) {
		List<TimeInfo> list = timeInOutService.getTimeInfoListByEid(eid);
		model.addAttribute("tilist", list);
		return "admin/edittimeout/dashboard";

	}

	@RequestMapping("edit-outtime-view")
	public String getUpdateTimeOutView(int timeid, Model model) {

		TimeInfo timeInfo = timeInOutService.getTimeInfoByTimeid(timeid);
		System.out.println(timeInfo.getIntime());
		model.addAttribute("tmsg", timeInfo);
		return "admin/edittimeout/edittimeout";

	}

	@RequestMapping("update-out-time")
	public String updateTimeInfoRecord(TimeInfo ntimeInfo, Model model) {

		timeInOutService.updateTimeInfo(ntimeInfo);
		model.addAttribute("updatemsg", "Employee TimeInfo Record Update SuccesFully");
		return "redirect:timeout-view";
	}

}
