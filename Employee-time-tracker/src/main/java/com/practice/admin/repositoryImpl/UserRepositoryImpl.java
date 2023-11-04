package com.practice.admin.repositoryImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.admin.entity.User;
import com.practice.admin.repository.UserRepository;

@Repository
public class UserRepositoryImpl implements UserRepository {

	private Session session;
	private Transaction transaction;

	public UserRepositoryImpl(SessionFactory factory) {
		session = factory.openSession();
		transaction = session.getTransaction();
	}

	public List<User> GetAllUser() {

		Query<User> query = session.createQuery("From User", User.class);
		return query.list();
	}

	public void saveUserRecord(User user) {

		transaction.begin();
		session.save(user);
		transaction.commit();
	}

	public void deleteUser(User user) {
		transaction.begin();
		session.delete(user);
		transaction.commit();
	}

	public User getUser(String userid) {
		User user = session.get(User.class, userid);
		return user;
	}

	public User getUserByPhoneNumber(String phone) {
		Query<User> query = session.createQuery("From User where phone=: arg", User.class);
		query.setParameter("arg", phone);
		// User user = query.uniqueResult();
		return query.uniqueResult();
	}

	public void updateUser(User nuser, User user) {
		//System.out.println("hAn a gye yha abhi hm ");

		transaction.begin();
		user.setPassword(nuser.getPassword());
		user.setPhone(nuser.getPhone());
		user.setName(nuser.getName());
		/* user.setUserid(nuser.getUserid()); */
		transaction.commit();

	}

}
