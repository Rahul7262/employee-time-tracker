package com.practice.user.serviceImpl;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.admin.entity.TimeInfo;
import com.practice.admin.repository.EmployeeRepository;
import com.practice.totaltime.TimeManager;
import com.practice.user.repository.TimeRepository;
import com.practice.user.service.TimeInOutService;

@Service
public class TimeInOutServiceImpl implements TimeInOutService {

	@Autowired
	private TimeRepository timeRepository;
	@Autowired
	private EmployeeRepository employeeRepository;

	public void updateTimeInInformation(int eid) {

	
		TimeInfo tif = timeRepository.getTimeInfoById(eid);
		LocalTime tm = LocalTime.now();
		String time = tm.getHour() + ":" + tm.getMinute() + ":" + tm.getSecond();
		String intime = time;
		String totaltime = TimeManager.getTotalTime(intime, tif.getOuttime());
		timeRepository.updateTimeInfo(tif, intime,totaltime);
		employeeRepository.updateStatus(tif.getEid(), "in");

	}

	public void saveTimeoutInformation(TimeInfo timeInfo) {

		LocalTime tm = LocalTime.now();
		String time = tm.getHour() + ":" + tm.getMinute() + ":" + tm.getSecond();
		timeInfo.setOuttime(time);
		timeInfo.setDate(LocalDate.now());
		timeRepository.saveTimeoutInfo(timeInfo);
		employeeRepository.updateStatus(timeInfo.getEid(), "out");
	}

	public List<TimeInfo> getTimeInfoListByEid(int eid) {

		return timeRepository.getTimeInfoListByEid(eid);
	}

	public TimeInfo getTimeInfoByTimeid(int timeid) {

		return timeRepository.getTimeInfoByTimeid(timeid);
	}

	public void updateTimeInfo(TimeInfo ntimeInfo) {

		TimeInfo otimeInfo = timeRepository.getTimeInfoByTimeid(ntimeInfo.getTimeid());
		
		timeRepository.editTimeInfo(ntimeInfo, otimeInfo);

	}

	


}
