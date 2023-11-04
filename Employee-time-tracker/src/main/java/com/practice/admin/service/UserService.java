package com.practice.admin.service;

import java.util.List;

import com.practice.admin.entity.Employee;
import com.practice.admin.entity.User;

public interface UserService {

	List<User> getUsertList();

	void saveUser(User user);

	void deleteUser(String userid);

	User getUserByPhoneNumber(String phone);

	String checkLoginDetails(String userid, String password);

	void updateUser(User nuser);

	

}
