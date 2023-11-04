package com.practice.admin.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.admin.entity.Employee;
import com.practice.admin.repository.EmployeeRepository;
import com.practice.admin.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	public List<Employee> getEmployeetList() {
		
		return employeeRepository.getAllEmployeeList();
	}

	@Override
	public void saveEmployee(Employee employee) {
		employeeRepository.saveEmployee(employee);
	}

	@Override
	public void deleteEmployee(int eid) {
		Employee employee= employeeRepository.getEmployee(eid);
		employeeRepository.deleteEmpl(employee);
	}


	public Employee getEmployee(int eid) {
		Employee employee= employeeRepository.getEmployee(eid);
		return employee;
	}


	public void updateEmployee(Employee nemployee) {
		Employee employee= employeeRepository.getEmployee(nemployee.getEid());
		employeeRepository.updateRecord(nemployee, employee);
		
	}

}
