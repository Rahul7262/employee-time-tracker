package com.practice.admin.repository;

import java.util.List;

import com.practice.admin.entity.User;

public interface UserRepository {

	List<User> GetAllUser();

	void saveUserRecord(User user);

	void deleteUser(User user);

	User getUser(String userid);

	User getUserByPhoneNumber(String phone);

	void updateUser(User nuser, User user);

}
