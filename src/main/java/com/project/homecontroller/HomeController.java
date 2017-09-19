package com.project.homecontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	public ProductService productservice;

	public HomeController() {
		System.out.println("creating instance of homecontroller");
	}
	@RequestMapping("/")
	public String home(HttpSession session) {
		session.setAttribute("categories",productservice.getAllCategories());
		return "home";

	}

	@RequestMapping("/home")
	public String homepage(HttpSession session) {
		session.setAttribute("categories",productservice.getAllCategories());
		return "home";

	}

	

	@RequestMapping("/Aboutus")
	public String blog() {
		return "blog";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

}
