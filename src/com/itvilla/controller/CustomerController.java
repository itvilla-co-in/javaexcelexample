package com.itvilla.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itvilla.dao.CustomerDao;
import com.itvilla.entity.Customer;
import com.itvilla.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/list")
	public String listCustomer(Model model) {
		List<Customer> tempcustomers = customerService.getCustomers();
		model.addAttribute("custs", tempcustomers);
		System.out.println("is it getting from db " + tempcustomers);
		return "list-customers";
		
	}
	
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Customer customer = new Customer();
		model.addAttribute("cust", customer);
		return "customer-form";
	}
	
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("cust") Customer thecust){
		
		customerService.saveCustomer(thecust);
		return "redirect:/customer/list";
	}
	
	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId,
			Model model) {
		// get the customer from our service
				Customer theCustomer = customerService.getCustomer(theId);	
				
				// set customer as a model attribute to pre-populate the form
				model.addAttribute("cust", theCustomer);
		return "customer-form";
		
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("customerId") int theId,
			Model model) {
		System.out.println("Customer ID is in delete " + theId);
		 
		customerService.deleteCustomer(theId);	
		return "redirect:/customer/list";
		
	}
	
	 @PostMapping("/search")
	    public String searchCustomers(@RequestParam("theSearchName") String theSearchName,
	                                    Model theModel) {
	        // search customers from the service
		 System.out.println("in the search name " + theSearchName);
	        List<Customer> theCustomers = customerService.searchCustomers(theSearchName);
	                
	        // add the customers to the model
	        theModel.addAttribute("custs", theCustomers);
	        System.out.println("in the list lets check if seaching dao is working " + theCustomers);
	        return "list-customers";        
	    }
	 
	
	
}
