package com.galosoft.encuentralo.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.galosoft.encuentralo.entities.Cart;

@Service
public class CartDaoImpl implements CartDao{
	
	private Map<String, Cart> listOfCarts;
	
	public CartDaoImpl() {
		listOfCarts = new HashMap<String, Cart>();
	}

	@Override
	public Cart create(Cart cart) {
		if(listOfCarts.keySet().contains(cart.getCartId())) {
			throw new IllegalArgumentException(String.format("A cart with id(%) exists", cart.getCartId()));
		}
		listOfCarts.put(cart.getCartId(), cart);
		return cart;
	}

	@Override
	public Cart read(String cartId) {
		return listOfCarts.get(cartId);
	}

	@Override
	public void update(String cartId, Cart cart) {
		if(!listOfCarts.keySet().contains(cart.getCartId())) {
			throw new IllegalArgumentException(String.format("A cart with id(%) doesn't exist", cart.getCartId()));
		}
		listOfCarts.put(cartId, cart);
	}

	@Override
	public void delete(String cartId) {
		if(!listOfCarts.keySet().contains(cartId)) {
			throw new IllegalArgumentException(String.format("We can't a cart with id(%) doesn't exist", cartId));
		}
		listOfCarts.remove(cartId);
		
	}
	
}
