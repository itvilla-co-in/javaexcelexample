package com.itvilla.service;

import java.util.List;

import com.itvilla.entity.Customer;
import com.itvilla.entity.Employee;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
	
	
	// New services
	
	public Integer saveEmployee(Employee theEmployee);
	
	public Employee getEmployee(int theId);
	
	public List<Employee> getEmployees();
	
}
