package com.itvilla.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itvilla.entity.Customer;
import com.itvilla.entity.Employee;
import com.itvilla.entity.Employeebulk;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	public List<Customer> getCustomers() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query  ... sort by last name
		Query<Customer> theQuery = 
				currentSession.createQuery("from Customer order by lastName",
											Customer.class);
		
		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();
				
		// return the results		
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theCustomer);
		
	}

	@Override
	public Customer getCustomer(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Customer theCustomer = currentSession.get(Customer.class, theId);
		
		return theCustomer;
	}

	@Override
	public void deleteCustomer(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Customer where id=:customerId");
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();		
	}

	
	// new methods 
	@Override
	public Integer saveEmployee(Employee theEmployee) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theEmployee);
		return theEmployee.getId();
		
		
	}
	
	@Override
	public void saveEmployeebulk(Employeebulk theEmployee) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theEmployee);
	 
		
		
	}
	
	
	
	@Override
	public Employee getEmployee(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Employee theEmployee = currentSession.get(Employee.class, theId);
		
		return theEmployee;
	}

	
	
	@Override
	public List<Employee> getEmployees() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query  ... sort by last name
		Query<Employee> theQuery = 
				currentSession.createQuery("from Employee order by firstName",
											Employee.class);
		
		// execute query and get result list
		List<Employee> employees = theQuery.getResultList();
				
		// return the results		
		return employees;
	}
	
	
}











