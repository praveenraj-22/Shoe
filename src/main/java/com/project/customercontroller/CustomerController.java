package com.project.customercontroller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Customer;
import com.project.model.User;
import com.project.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	
	public CustomerService customerservice;
	
	@RequestMapping("/all/registrationform")
	public String getRegisterationForm(Model model)
	{
		model.addAttribute("customer", new Customer());
		return "registrationform";
		
	}
	
	@RequestMapping("/all/savecustomer")
	public String registercustomer(@Valid @ModelAttribute Customer customer,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			return "registrationform";
			
		}
		User user=customerservice.validateUsername(customer.getUser().getUsername());
		if(user!=null) //dupicate username
		{
			model.addAttribute("duplicateUsername","username already exist" );
		return "registrationform";
		
		}
		Customer duplicateCustomer=customerservice.validateEmail(customer.getEmail());
		if(duplicateCustomer!=null)
		{
			model.addAttribute("duplicateEmail","Email already exist" );
			return "registrationform";
		}
		customerservice.registerCustomer(customer);
		return "home";
		
	}
}
