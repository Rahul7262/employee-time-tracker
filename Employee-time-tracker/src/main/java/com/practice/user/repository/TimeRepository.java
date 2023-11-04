package com.practice.user.repository;


import java.time.LocalDate;
import java.util.List;

import com.practice.admin.entity.Employee;
import com.practice.admin.entity.TimeInfo;

public interface TimeRepository {

	void saveTimeoutInfo(TimeInfo timeInfo);

	TimeInfo getTimeInfoById(int eid);

	void updateTimeInfo(TimeInfo tif, String intime, String totaltime);

	List<TimeInfo> getTimeInfoListByEid(int eid);

	TimeInfo getTimeInfoByTimeid(int timeid);

	void editTimeInfo(TimeInfo ntimeInfo, TimeInfo otimeInfo);

	List<TimeInfo> getListBySpecialDate(LocalDate date);

	List<TimeInfo> getListByBetweenDate(LocalDate fdate, LocalDate sdate);

}
