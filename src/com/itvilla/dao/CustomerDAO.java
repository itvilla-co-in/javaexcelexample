package com.itvilla.dao;

import java.util.List;

import com.itvilla.entity.Customer;
import com.itvilla.entity.Employee;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
	
	// new methods
	public void saveEmployee(Employee theEmployee);

	
	
}
