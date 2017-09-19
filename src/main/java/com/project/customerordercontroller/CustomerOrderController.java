package com.project.customerordercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Cart;
import com.project.model.Customer;
import com.project.model.CustomerOrder;
import com.project.model.ShippingAddress;
import com.project.service.CartItemService;
import com.project.service.CustomerOrderService;
@Controller
public class CustomerOrderController {
	@Autowired
	private CustomerOrderService customerOrderService;
	@Autowired
	private CartItemService cartItemService;
	@RequestMapping("/cart/shippingaddressform/{cartId}")
	public String getShippingAddress(@PathVariable int cartId,Model model){
		Cart cart=cartItemService.getCart(cartId);
		Customer customer=cart.getCustomer();
		model.addAttribute("shippingAddress",customer.getShippingAddress());
		model.addAttribute("cartid",cartId);
		return "shippingaddressform";
	}
	@RequestMapping("/cart/order/{cartId}")
public String createOrder(@PathVariable int cartId,@ModelAttribute ShippingAddress shippingAddress,Model model){
		Cart cart=cartItemService.getCart(cartId);
		Customer customer=cart.getCustomer();
		customer.setShippingAddress(shippingAddress);
		cart.setCustomer(customer);
	CustomerOrder customerOrder=customerOrderService.createOrder(cart);
	model.addAttribute("order",customerOrder);
	model.addAttribute("cartid",cartId);
	return "orderdetails";
}
	@RequestMapping("/cart/confirm/{id}")
public String confirm(@ModelAttribute CustomerOrder order,@PathVariable int id){
	cartItemService.deleteAllCartItems(id);
	return "congrats";
}
}