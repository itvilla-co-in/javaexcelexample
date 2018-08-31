package com.itvilla.dao;
import java.util.List;

import com.itvilla.entity.*;
public interface CustomerDao {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer thecust);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

	public List<Customer> searchCustomers(String theSearchName);

}
