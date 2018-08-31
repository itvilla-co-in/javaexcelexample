package com.itvilla.dao;
import com.itvilla.entity.*;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.query.Query;

import com.itvilla.entity.Customer;


@Repository
public class CustomerDaoImpl implements CustomerDao {
	// get DI of sessionfactory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Customer> getCustomers() {
		//Get current session from the session factory
		//Transactional Annotation will make sure this transaction is started and closed
		Session currentsession = sessionFactory.getCurrentSession();
		// Prepare the query
		Query<Customer> myquery = currentsession.createQuery("from Customer", Customer.class);
		// get the list of customers from db
		List<Customer> customers = myquery.getResultList();
		return customers;
	}

	@Override
	public void saveCustomer(Customer thecust) {
		Session currentsession = sessionFactory.getCurrentSession();
		currentsession.saveOrUpdate(thecust);
		
	}

	@Override
	public Customer getCustomer(int theId) {
		 
		//Get current session from the session factory
				//Transactional Annotation will make sure this transaction is started and closed
				Session currentsession = sessionFactory.getCurrentSession();
				// get the list of customers from db
				Customer customer = currentsession.get(Customer.class, theId);
				return customer;
	}

	@Override
	public void deleteCustomer(int theId) {
		Session currentsession = sessionFactory.getCurrentSession();
		Query theQuery = 
				currentsession.createQuery("delete from Customer where id=:customerId");
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();	
		
	}

	@Override
	public List<Customer> searchCustomers(String theSearchName) {
		Session currentsession = sessionFactory.getCurrentSession();
		 Query theQuery = null;
		 if (theSearchName != null && theSearchName.trim().length() > 0) {
	            // search for firstName or lastName ... case insensitive
	            theQuery =currentsession.createQuery("from Customer where lower(firstName) like :theName or lower(lastName) like :theName", Customer.class);
	            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
	        }
	        else {
	            // theSearchName is empty ... so just get all customers
	            theQuery =currentsession.createQuery("from Customer", Customer.class);            
	        }
		 List<Customer> customers = theQuery.getResultList();
         
	        // return the results        
	        return customers;
	}

}
