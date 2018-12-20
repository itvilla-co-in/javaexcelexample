package com.itvilla.service;

import java.util.List;

import com.itvilla.entity.Customer;
import com.itvilla.entity.Employee;
import com.itvilla.entity.Employeebulk;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
	
	
	// New services
	
	public Integer saveEmployee(Employee theEmployee);
	
	public void saveEmployeebulk(Employeebulk theEmployee);
	
	public Employee getEmployee(int theId);
	
	public List<Employee> getEmployees();
	
}
