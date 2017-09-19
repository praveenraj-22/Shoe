package com.project.cartitemcontroller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.model.Cart;
import com.project.model.CartItem;
import com.project.model.Customer;
import com.project.model.Product;
import com.project.service.CartItemService;
import com.project.service.CustomerService;
import com.project.service.ProductService;

@Controller
public class CartItemController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private CartItemService cartItemService;

	@RequestMapping("/cart/addtocart/{id}")
	public String addCartItem(@PathVariable int id, @RequestParam int units, Model model) {
		Product product = productService.getProductById(id);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer = customerService.getCustomerByUsername(username);
		Cart cart = customer.getCart();
		List<CartItem> cartItems = cart.getCartItems();
		System.out.println(cart.getCartItems().size());
		for (CartItem cartItem : cartItems) {
			System.out.println(cartItem.getProduct().getId());
			System.out.println(id);
			if (cartItem.getProduct().getId() == id) {
				cartItem.setQuantity(units);
				cartItem.setTotalPrice(product.getPrice() * units);
				cartItemService.addCartItem(cartItem);
				return "redirect:/cart/getcart";

			}
		}

		CartItem cartItem = new CartItem();
		cartItem.setQuantity(units);
		cartItem.setTotalPrice(product.getPrice() * units);
		cartItem.setProduct(product);
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);
		return "redirect:/cart/getcart";

	}

	@RequestMapping("/cart/getcart")
	public String getCart(Model model,Principal principal) {
		
		String username = principal.getName();
		Customer customer = customerService.getCustomerByUsername(username);
		Cart cart = customer.getCart();
		model.addAttribute("cart", cart);
		return "cart";
	}

	@RequestMapping("/cart/removecartitem/{cartItemId}")
	public String removeCartItem(@PathVariable int cartItemId) {
		cartItemService.deleteCartItem(cartItemId);
		return "redirect:/cart/getcart";
	}

	@RequestMapping("/cart/clearcart/{cartId}")
	public String removeAllCartItems(@PathVariable("cartId") int cartId) {
		cartItemService.deleteAllCartItems(cartId);
		return "redirect:/cart/getcart";

	}

}
