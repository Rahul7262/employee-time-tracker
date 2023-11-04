package com.practice.admin.repository;

import java.util.List;

import com.practice.admin.entity.Employee;

public interface EmployeeRepository {

	List<Employee> getAllEmployeeList();

	void saveEmployee(Employee employee);

	Employee getEmployee(int eid);

	void deleteEmpl(Employee employee);

	void updateRecord(Employee nemployee, Employee employee);

	void updateStatus(int eid, String string);

	List<Employee> getAllTimeInEmployeeList(String status);

}
