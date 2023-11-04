package com.practice.user.service;

import java.util.List;

import com.practice.admin.entity.TimeInfo;

public interface TimeInOutService {

	void updateTimeInInformation(int eid);

	void saveTimeoutInformation(TimeInfo timeInfo);

	List<TimeInfo> getTimeInfoListByEid(int eid);

	TimeInfo getTimeInfoByTimeid(int timeid);

	void updateTimeInfo(TimeInfo timeInfo);

}
