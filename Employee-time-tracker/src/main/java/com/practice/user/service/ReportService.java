package com.practice.user.service;

import java.util.List;

import com.practice.admin.entity.TimeInfo;

public interface ReportService {

	List<TimeInfo> getTimeInfoListByCurrentDate();

	List<TimeInfo> getTimeInfoListByEnterDate(String selectedDate);

	List<TimeInfo> getTimeInfoListBetweenTwoDate(String date1, String date2);

	
}
