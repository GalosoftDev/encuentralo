package com.galosoft.encuentralo.dao;

import com.galosoft.encuentralo.entities.Cart;

public interface CartDao {
	
	Cart create(Cart cart);
	Cart read(String cartId);
	void update(String cartId, Cart cart);
	void delete(String cartId);

}
