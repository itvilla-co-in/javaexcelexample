package com.itvilla.service;

import java.util.List;

import javax.transaction.Transactional;

import com.itvilla.entity.Customer;



public interface CustomerService {
    
	 
	public List<Customer> getCustomers();

	public void saveCustomer(Customer thecust);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

	public List<Customer> searchCustomers(String theSearchName); 
	
}
