package com.project.productcontroller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.model.Category;
import com.project.model.Product;

import com.project.service.ProductService;

@Controller
public class ProductController {

	@Autowired

	public ProductService productService;
	
	@Autowired
	public HttpSession res;

	public ProductController() {
		System.out.println("product controller is instantiated");

	}

	@RequestMapping("/admin/getaddproduct")
	public String getaddproduct(Model model) {
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
		System.out.println("product is in added page");

		model.addAttribute("product", new Product());
		return "addproduct";

	}

	@RequestMapping("/saveproduct")
	public String saveProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result , Model model) {
		
		
		
		if (result.hasErrors()) {
			List<Category> categories=productService.getAllCategories();
			model.addAttribute("categories",categories);
			System.out.println("HAS ERRORS");
			return "addproduct";
		}
		System.out.println("After validation");
		productService.saveProduct(product);

		MultipartFile image = product.getImage();
	
		Path path = Paths.get
					("C://Users//praveenraj//workspace//Shoe//src//main//webapp//resources//image//" + product.getId() + ".png");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		return "redirect:/all/product/getallproduct";
	}
	
	
	
	@RequestMapping("/all/product/getallproduct")
	public String getAllProducts (Model model)
	{
		List<Product> products=productService.getAllProducts();
		model.addAttribute("product", products);
		return "productlist";
	}
	
	
	
	
	@RequestMapping("/all/product/viewproduct/{id}")
	public String getProductById(@PathVariable int id, Model model) {
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "viewproduct";
	}

	@RequestMapping("/admin/product/deleteproduct/{id}")
	public String deleteProductById(@PathVariable int id) {
		productService.deleteProduct(id);
		return "redirect:/all/product/getallproduct";

	}

	@RequestMapping("/admin/product/geteditform/{id}")
	public String getEditForm(@PathVariable int id, Model model) {
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);

		Product product = productService.getProductById(id);
		model.addAttribute("productObj", product);
		return "editform";
	}

	@RequestMapping("/admin/product/editproduct")
	public String editProduct(@Valid @ModelAttribute(name = "productObj") Product product,BindingResult result,Model model) {
		if (result.hasErrors()) {
			List<Category> categories=productService.getAllCategories();
			model.addAttribute("categories",categories);
			System.out.println("HAS ERRORS");
			return "editform";
		}
		System.out.println("After validation");
		productService.updateProduct(product);

		MultipartFile image = product.getImage();
		
		Path path = Paths.get
					("C://Users//praveenraj//workspace//Shoe//src//main//webapp//resources//image//" + product.getId() + ".png");			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		return "redirect:/all/product/getallproduct";
	}
	
	@RequestMapping("/all/product/searchbycategory")
	public String selectByCategory(@RequestParam String searchCondition,Model model)
	{
		model.addAttribute("product",productService.getAllProducts());
		if(searchCondition.equals("All"))
			model.addAttribute("searchCondition","");
		else
			model.addAttribute("searchCondition",searchCondition);
		return "productlist";
			
	}


}
