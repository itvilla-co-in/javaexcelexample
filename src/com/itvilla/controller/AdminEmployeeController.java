package com.itvilla.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.itvilla.entity.Customer;
import com.itvilla.entity.Employee;
import com.itvilla.entity.Employeebulk;
import com.itvilla.service.CustomerService;

@Controller
@RequestMapping("/admin/emp/")
@Scope("session")
public class AdminEmployeeController {

	// need to inject our customer service
	@Autowired
	private CustomerService customerService;
	
	  
	 //private HttpSession httpSession;
	 
	
	@InitBinder
	public void dataBinding(WebDataBinder binder) {
		 
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, "empDob", new CustomDateEditor(dateFormat, true));

		//binder.registerCustomEditor(Date.class, "dob", new CustomDateEditor(dateFormat, true));
	}

	
	
	
	@GetMapping("/empaddform")
	public String showempaddform(Model theModel) {
		
		// create model attribute to bind form data
		Employee theEmployee = new Employee();
		
		theModel.addAttribute("employee", theEmployee);
		System.out.println("Employee add form sent ");
		return "empaddform";
	}
	
	@GetMapping("/empuploadimage")
	public String showempuploadimage(Model theModel) {
		
		// create model attribute to bind form data
		//Employee theEmployee = new Employee();
		
		//theModel.addAttribute("employee", theEmployee);
		MultipartFile file=null;
		theModel.addAttribute("file", file);
		
		System.out.println("is it even coming here in uploadimage url");
		return "empuploadimage";
		        
	}
	
	
	@PostMapping("/saveEmployee")
	public String saveCustomer(HttpServletRequest request, @ModelAttribute("employee") @Valid Employee theEmployee,BindingResult result
			,ModelMap model, HttpSession httpSession) 
	{
		
		if(result.hasErrors()) 
		{
	    	System.out.println("Binding has errors ");
	    	System.out.println("Binding has errors empid " + theEmployee.getEmpId());
	    	System.out.println("Binding has errors firstname" + theEmployee.getFirstName());
	    	System.out.println("Binding has errors lastname" + theEmployee.getLastName());
	    	System.out.println("Binding has errorsdobbbbbb " + theEmployee.getEmpDob());
	    	System.out.println("Binding has errors loc " + theEmployee.getEmpLoc());
	    	System.out.println("Binding has errors loccode " + theEmployee.getEmpLoccode());
	    	System.out.println("Binding has errors " + theEmployee.getEmpBand());
	    	System.out.println("Binding has errors " + theEmployee.getEmpProfileimg());
	    	
	    	return "empaddform";

	    }
		model.addAttribute("theEmployee", theEmployee);
		System.out.println("is it going to come here ??before calling save  the sesion id is " + httpSession.getId());
		// save the customer using our service
		Integer empid = customerService.saveEmployee(theEmployee);
		//request.getSession();
		httpSession.setAttribute("empid", empid);
		System.out.println("is it going to come here ??????????");
		return "empuploadimage";
	}
	
	
/*	@GetMapping("/singleFileUpload")
	public String showsingleFileUpload(Model theModel) {
		
		// create model attribute to bind form data
		//Employee theEmployee = new Employee();
		MultipartFile file;
		theModel.addAttribute("file", file);
		System.out.println(" in get of the file get ");
		return "empaddform";
	}*/
	
	 // Handling single file upload request for employee profile 
	   @PostMapping("/singleFileUpload")
	   public String singleFileUpload(HttpServletRequest request, @RequestParam("file") MultipartFile file, Model model,HttpSession httpSession)
	         throws IOException {
		   System.out.println("in single file upload hanldoer");
		   System.out.println("is it going to come here in single file upload ??   the sesion id is " + httpSession.getId());
		   System.out.println("Lets see if session has anything at all " + httpSession.getAttributeNames());
		   Integer tempempid = (Integer) httpSession.getAttribute("empid");
		   System.out.println("I am from the image method lets see if session is working " + tempempid);
		   
		  
		   
	      // Save file on system
	      if (!file.getOriginalFilename().isEmpty()) {
	    	  
	    	  System.out.println(" in uploading file method");
	    	  System.out.println("Name of the file " + file.getOriginalFilename());
	    	  System.out.println("lets see hwat here in content type" + file.getContentType());
	    	  System.out.println("lets gett he size ofthe file " + file.getSize());
	    	  System.out.println("lets get the class" + file.getClass());
	    	  String tempfilename = file.getOriginalFilename();
	         BufferedOutputStream outputStream = new BufferedOutputStream(
	               new FileOutputStream(
	                     new File("D:/nk0072025/TECHM/images", file.getOriginalFilename())));
	         outputStream.write(file.getBytes());
	         outputStream.flush();
	         outputStream.close();
	         
	         // get them employee the update the path of the profile image.
			 Employee theEmployee = customerService.getEmployee(tempempid);
			 theEmployee.setEmpProfileimg(tempfilename);
			 System.out.println("Employee for which image location is updated is " + theEmployee.toString());
			 System.out.println("The image location is " + theEmployee.getEmpProfileimg());
			 Integer tempupdateempid = customerService.saveEmployee(theEmployee);
			 System.out.println("Emp with id " + tempupdateempid + "image location updated" );
			   
			 return "redirect:/admin/emp/emplist";
			 //model.addAttribute("msg", "File uploaded successfully....");
	      } else {
	         //model.addAttribute("msg", "Please select a valid file..");
	    	  return "redirect:/admin/emp/emplist";
	      }
	      
	      //return "redirect:/emplist";
	      //return "empuploadimage";
	   }
	   
	   
	   @GetMapping("/emplist")
		public String listCustomers(Model theModel) {
			
			// get customers from the service
			List<Employee> theEmployees = customerService.getEmployees();
					
			// add the customers to the model
			theModel.addAttribute("employess", theEmployees);
			
			return "list-employees";
		}
	
	   
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId,
									Model theModel) {
		
		// get the customer from our service
		Customer theCustomer = customerService.getCustomer(theId);	
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("customer", theCustomer);
		
		// send over to our form		
		return "customer-form";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		
		// delete the customer
		customerService.deleteCustomer(theId);
		
		return "redirect:/customer/list";
	}
	
	
	/******************** Bulk upload mappings Start  **************************/
	
	@GetMapping("/empbulkuploadpage")
	public String showempbulkuploadpage(Model theModel) {
		
		// create model attribute to bind form data
		//Employee theEmployee = new Employee();
		
		//theModel.addAttribute("employee", theEmployee);
		MultipartFile excelfile=null;
		theModel.addAttribute("excelfile", excelfile);
		
		System.out.println("Testing inside the excel file upload page. ");
		return "empbulkuploadpage";
		        
	}
	
	
	
	   @PostMapping("/empFileUpload")
	   public String empFileUpload(HttpServletRequest request, @RequestParam("excelfile") MultipartFile file, Model model,HttpSession httpSession)
	         throws IOException, ParseException {
		   System.out.println("in emp file upload  hanldoer");
	      // Save file on system
	      if (!file.getOriginalFilename().isEmpty()) {
	    	  System.out.println(" in uploading file method");
	    	  System.out.println("Name of the file " + file.getOriginalFilename());
	    	  System.out.println("lets see hwat here in content type" + file.getContentType());
	    	  System.out.println("lets gett he size ofthe file " + file.getSize());
	    	  System.out.println("lets get the class" + file.getClass());
	    	  String tempfilename = file.getOriginalFilename();

	    	  BufferedOutputStream outputStream = new BufferedOutputStream(
	               new FileOutputStream(
	                     new File("D:/nk0072025/TECHM/images", file.getOriginalFilename())));
	         outputStream.write(file.getBytes());
	         outputStream.flush();
	         outputStream.close();
	    	 
	         /*  Logic to Uplod the data in Table */
	         
	         com.itvilla.entity.ExcelPOIHelper e = new com.itvilla.entity.ExcelPOIHelper();
	 		 String location = "D:/nk0072025/TECHM/images/emp.xlsx";
	         
	 		Map<Integer, List<com.itvilla.entity.MyCell>> excelmap = new HashMap<>();;
	     	try {
	     		
	     	excelmap = e.readExcel(location);
	     	Integer ignoreheader = 0;
	        // using for-each loop for iteration over Map.entrySet() 
	        for (Map.Entry<Integer, List<com.itvilla.entity.MyCell>> entry : excelmap.entrySet())
	        {
	            System.out.println("Key = " + entry.getKey() + 
	                             ", Value = " + entry.getValue()); 
	            List<com.itvilla.entity.MyCell> temp = new ArrayList<>();
	            temp = entry.getValue();
	            System.out.println("***************");
	       
	            Integer i = 1;
	            String empname = null;
	            String empid = null;
	            Employeebulk theEmployee = new Employeebulk();
	            
	            
	            for(com.itvilla.entity.MyCell mc: temp) {
	            	// ingore first looop for header	
	               
	            	
	            	if (ignoreheader > 0)
	            	{
	            	  switch (i) { 
	                  case 1: 
	                	  theEmployee.setEmpId(mc.getContent()); 
	                      i++;
	                      break; 
	                  case 2: 
	                	  theEmployee.setFirstName(mc.getContent()); 
	                      i++;
	                      break; 
	                  case 3: 
	                	  theEmployee.setLastName(mc.getContent()); 
	                      i++;
	                      break;
	                  case 4: 
	                	  Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(mc.getContent());
	                	  theEmployee.setEmpDob(date1); 
	                      i++;
	                      break;
	                  case 5: 
	                	  theEmployee.setEmpProfileimg(mc.getContent()); 
	                      i++;
	                      break;
	                  case 6: 
	                	  theEmployee.setEmpBand(mc.getContent()); 
	                      i++;
	                      break;
	                  case 7: 
	                	  theEmployee.setEmpLoc(mc.getContent()); 
	                      i++;
	                      break;
	                  case 8: 
	                	  theEmployee.setEmpLoccode(mc.getContent()); 
	                      i++;
	                      break;
	                  default: 
	                      System.out.println("invalid col"); 
	                      break; 
	                  } // switch ends
	                
	            	}
	                //System.out.println("   ");
	            }// for ends
	            
	            ignoreheader++;
	            
	            System.out.println("Value of empid is " + empid + "value of empname is " + empname);
	            
	           customerService.saveEmployeebulk(theEmployee);
	        }
	     	
			} catch (IOException e1) {
				System.out.println("Error" + e1.toString()); 
				e1.printStackTrace();
			}
	     	
	         /*  Logic to Uplod the data in Table */
	         
			 return "redirect:/admin/emp/emplist";
			 //model.addAttribute("msg", "File uploaded successfully....");
	      } else {
	         //model.addAttribute("msg", "Please select a valid file..");
	    	  return "redirect:/admin/emp/emplist";
	      }
	      
	      //return "redirect:/emplist";
	      //return "empuploadimage";
	   }
	   
	   /******************** Bulk upload mappings End  **************************/	   
	
	
}










