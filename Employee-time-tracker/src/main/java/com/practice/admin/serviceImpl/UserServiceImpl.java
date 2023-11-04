package com.practice.admin.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.admin.entity.Employee;
import com.practice.admin.entity.User;
import com.practice.admin.repository.UserRepository;
import com.practice.admin.service.UserService;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	public List<User> getUsertList() {
		return userRepository.GetAllUser();
	}

	public void saveUser(User user) {

		userRepository.saveUserRecord(user);
	}


	public void deleteUser(String userid) {
		User user= userRepository.getUser(userid);
		userRepository.deleteUser(user);
		
	}

	@Override
	public User getUserByPhoneNumber(String phone) {
		
		return userRepository.getUserByPhoneNumber(phone);
	}

	@Override
	public String checkLoginDetails(String userid, String password) {
		
		User user = userRepository.getUser(userid);
	//	 System.out.println(cust.getEmail()+ cust.getPassword());
		if(user != null) {
			if (user.getPassword().equals(password)) {
				
				return "rightpassword";
			}else {
				
				return "wrongpassword";	
			}
		}
		return "wrongid";
	}

	@Override
	public void updateUser(User nuser) {
		System.out.println(nuser.getPhone());
		User user= userRepository.getUser(nuser.getUserid());
		System.out.println(user.getPhone());
		userRepository.updateUser(nuser,user);
		
	}

}
