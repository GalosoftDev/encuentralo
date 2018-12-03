package com.galosoft.encuentralo.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.galosoft.encuentralo.dao.CartDao;
import com.galosoft.encuentralo.dao.ProductDao;
import com.galosoft.encuentralo.entities.Cart;
import com.galosoft.encuentralo.entities.CartItem;
import com.galosoft.encuentralo.entities.Product;

@RestController
@RequestMapping("/rest/cart")
public class CartController {
	
	@Autowired
	private CartDao cartDao;
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value="/{cartId}", method = RequestMethod.GET)
	public @ResponseBody Cart read(@PathVariable(value="cartId") String cartId) {
		return cartDao.read(cartId);
	}
	
	@RequestMapping(value="/{cartId}", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void update(@PathVariable(value="cartId") String cartId, @RequestBody Cart cart) {
		cartDao.update(cartId, cart);
	}
	
	@RequestMapping(value="/{cartId}", method = RequestMethod.DELETE)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void delete(@PathVariable(value="cartId") String cartId) {
		cartDao.delete(cartId);
	}
	
	@RequestMapping(value="/add/{productId}", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addItem(@PathVariable(value="productId") String productId, HttpServletRequest request) {
		
		System.out.println(productId);
		
		String sessionId = request.getSession(true).getId();
		
		Cart cart = cartDao.read(sessionId);
		
		if(cart == null) {
			cart = cartDao.create(new Cart(sessionId));
		}
		
		Product product = productDao.getOne(Integer.parseInt(productId));
		
		if(product == null) {
			throw new IllegalArgumentException(new Exception());
		}
		
		cart.addCartItem(new CartItem(product));
		
		cartDao.update(sessionId, cart);
	}
	
	@RequestMapping(value="/remove/{productId}", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItem(@PathVariable String productId, HttpServletRequest request) {
        String sessionId = request.getSession(true).getId();
		
		Cart cart = cartDao.read(sessionId);
		
		if(cart == null) {
			cart = cartDao.create(new Cart(sessionId));
		}
		
		Product product = productDao.getOne(Integer.parseInt(productId));
		
		if(product == null) {
			throw new IllegalArgumentException(new Exception());
		}
		
		cart.removeCartItem(new CartItem(product));
		
		cartDao.update(sessionId, cart);
	}
	
	@ExceptionHandler(IllegalArgumentException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
	public void handleClientErrors(Exception e) {}
	
	@ExceptionHandler(Exception.class)
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal server error")
	public void handleServerError(Exception e) {}
	
}






















