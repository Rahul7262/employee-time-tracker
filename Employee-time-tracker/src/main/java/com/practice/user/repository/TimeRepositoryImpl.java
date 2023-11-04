package com.practice.user.repository;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.practice.admin.entity.Employee;
import com.practice.admin.entity.TimeInfo;
import com.practice.admin.entity.User;

@Repository
public class TimeRepositoryImpl implements TimeRepository {

	private Session session;
	private Transaction transaction;

	public TimeRepositoryImpl(SessionFactory factory) {
		session = factory.openSession();
		transaction = session.getTransaction();
	}

	public void saveTimeoutInfo(TimeInfo timeInfo) {
		transaction.begin();
		session.save(timeInfo);
		transaction.commit();
	}

	// ye apne ko phle samjh me nhi aya tha
	public TimeInfo getTimeInfoById(int eid) {

		Query<TimeInfo> query = session.createQuery("from TimeInfo where eid=:arg1 and intime=:arg2", TimeInfo.class);
		query.setParameter("arg1", eid);
		query.setParameter("arg2", "Not in yet");
		return query.uniqueResult();

	}

	public void updateTimeInfo(TimeInfo tif, String intime, String totaltime) {
		transaction.begin();
		tif.setIntime(intime);
		tif.setTotaltime(totaltime);
		transaction.commit();
	}

	// admin controller me access kr rha hu
	public List<TimeInfo> getTimeInfoListByEid(int eid) {

		transaction.begin();
		List<TimeInfo> list = session.createQuery("From TimeInfo where eid=: arg", TimeInfo.class)
				.setParameter("arg", eid).list();
		transaction.commit();
		return list;
	}

	// ye method se maine edit krwaya hai time ko admin se
	public TimeInfo getTimeInfoByTimeid(int timeid) {

		transaction.begin();
		TimeInfo tInfo = session.get(TimeInfo.class, timeid);
		transaction.commit();
		return tInfo;
	}

	public void editTimeInfo(TimeInfo ntimeInfo, TimeInfo otimeInfo) {
		transaction.begin();
		otimeInfo.setOuttime(ntimeInfo.getOuttime());
		otimeInfo.setIntime(ntimeInfo.getIntime());
		transaction.commit();
	}

	
	public List<TimeInfo> getListBySpecialDate(LocalDate date) {
		transaction.begin();
		List<TimeInfo> list = session.createQuery("From TimeInfo where date=: arg", TimeInfo.class)
				.setParameter("arg", date).list();
		transaction.commit();
		return list;
	}

	public List<TimeInfo> getListByBetweenDate(LocalDate fdate, LocalDate sdate) {
		transaction.begin();
		Query<TimeInfo> query = session.createQuery("From TimeInfo where date between : arg1 and :arg2", TimeInfo.class);
		query.setParameter("arg1", fdate);
		query.setParameter("arg2", sdate);
		transaction.commit();
		return query.list();
	}


}
