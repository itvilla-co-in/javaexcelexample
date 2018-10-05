package com.itvilla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BlogHomeController {

	@GetMapping("/bloghome/home")
	public String showMyLoginPage() 
	{
		
		return "bloghome";
		
	}
	
	@GetMapping("/bloguserregister")
	public String showMybloguserregisterPage() 
	{
		
		return "bloguserregister";
		
	}
	
	
}