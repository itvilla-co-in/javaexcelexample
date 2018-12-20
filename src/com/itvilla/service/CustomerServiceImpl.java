package com.itvilla.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itvilla.dao.CustomerDAO;
import com.itvilla.entity.Customer;
import com.itvilla.entity.Employee;
import com.itvilla.entity.Employeebulk;

@Service
public class CustomerServiceImpl implements CustomerService {

	// need to inject customer dao
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerDAO.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerDAO.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDAO.deleteCustomer(theId);
	}


	
	
	// new methods 
	
	@Override
	@Transactional
	public Integer saveEmployee(Employee theEmployee) {
		Integer empid = customerDAO.saveEmployee(theEmployee);
		return empid;
		
	}

	@Override
	@Transactional
	public void saveEmployeebulk(Employeebulk theEmployee) {

		customerDAO.saveEmployeebulk(theEmployee);
	}
	
	
	@Override
	@Transactional
	public Employee getEmployee(int theId) {
		
		return customerDAO.getEmployee(theId);
	}
	
	@Override
	@Transactional
	public List<Employee> getEmployees() {
		return customerDAO.getEmployees();
	}
	
	
	
}





