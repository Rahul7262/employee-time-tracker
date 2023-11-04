package com.practice.admin.service;

import java.util.List;

import com.practice.admin.entity.Employee;

public interface EmployeeService {

	List<Employee> getEmployeetList();

	void saveEmployee(Employee employee);

	void deleteEmployee(int eid);

	Employee getEmployee(int eid);

	void updateEmployee(Employee nemployee);

}
