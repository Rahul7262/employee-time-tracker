package com.practice.admin.repositoryImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import org.springframework.stereotype.Repository;

import com.practice.admin.entity.Employee;
import com.practice.admin.repository.EmployeeRepository;



@Repository
public class EmployeeRepositoryImpl implements EmployeeRepository {

	private Session session;
	private Transaction transaction;
	
	public EmployeeRepositoryImpl(SessionFactory factory) {
		 session = factory.openSession();
		 transaction = session.getTransaction();
	}


	public List<Employee> getAllEmployeeList() {
		Query<Employee> query= session.createQuery("from Employee", Employee.class);
		return  query.list();
	}

	public void saveEmployee(Employee employee) {
		transaction.begin();
		session.save(employee);
		transaction.commit();
	}

	public Employee getEmployee(int eid) {
		
		transaction.begin();
		Employee emp = session.get(Employee.class, eid);
		transaction.commit();
		return emp;
	}



	public void deleteEmpl(Employee employee) {
		
		transaction.begin();
		session.delete(employee);
		transaction.commit();
	}


	
	public void updateRecord(Employee nemployee, Employee employee) {
		transaction.begin();
		employee.setFirstname(nemployee.getFirstname());
		employee.setLastname(nemployee.getLastname());
		employee.setPhone(nemployee.getPhone());
		employee.setDepartment(nemployee.getDepartment());
		employee.setEmail(nemployee.getEmail());
		employee.setSalary(nemployee.getSalary());
		//employee.setStatus(nemployee.getStatus());
		transaction.commit();
		
		
		
	}



	public void updateStatus(int eid, String string) {
	
	
			 // begin the transaction
		    transaction.begin();
		    // Create the query object
		    Query query = session.createQuery( "UPDATE Employee SET status = : par1 WHERE id = :par2");

		    // Set the parameters for the query
		    query.setParameter("par1", string);
		    query.setParameter("par2", eid);

		    // Execute the update query
		   query.executeUpdate();

		    // Commit the transaction
		    transaction.commit();
		    session.clear();

		
	}

	public List<Employee> getAllTimeInEmployeeList(String status) {
		Query<Employee> query= session.createQuery("from Employee where status= : par1", Employee.class);
		
		query.setParameter("par1", status);
		  List<Employee> employees = query.getResultList();
		return  employees;
	
	}
	
	
	

}
