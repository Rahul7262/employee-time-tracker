package com.practice.user.serviceImpl;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.admin.entity.TimeInfo;
import com.practice.user.repository.TimeRepository;
import com.practice.user.service.ReportService;


@Service
public class ReportServiceImpl implements  ReportService{

	@Autowired
	private TimeRepository timerepository;

	
	public List<TimeInfo> getTimeInfoListByCurrentDate() {
		
		LocalDate date= LocalDate.now();
		return timerepository.getListBySpecialDate(date);
	}


	public List<TimeInfo> getTimeInfoListByEnterDate(String selectedDate) {
		LocalDate date= LocalDate.parse(selectedDate);
		return timerepository.getListBySpecialDate(date);
	}


	@Override
	public List<TimeInfo> getTimeInfoListBetweenTwoDate(String date1, String date2) {
		LocalDate fdate= LocalDate.parse(date1);
		LocalDate sdate= LocalDate.parse(date2);
		return timerepository.getListByBetweenDate(fdate,sdate);
	}
	
	

}
