package com.ngs.parsecv.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ngs.parsecv.dto.CartDto;
import com.ngs.parsecv.dto.ProductDto;

@Repository
public class CartDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	@Autowired
	ProductsDao productDao;	
	public HashMap<Long, CartDto> AddCart(String id,HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		ProductDto product = productDao.GetProductsById(Integer.parseInt(id)).get(0);
		if(cart.containsKey(Long.parseLong(id)) && product!= null) {
			itemCart = cart.get(Long.parseLong(id));
			itemCart.setQuantity(itemCart.getQuantity() + 1);
			itemCart.setTotalPrice(itemCart.getProduct().getPrice()*itemCart.getQuantity());
		}else {
			itemCart.setProduct(product);
			itemCart.setQuantity(1);
			itemCart.setTotalPrice(product.getPrice());
		}
		cart.put(Long.parseLong(id), itemCart);
		return cart;
	}
	
	public HashMap<Long,CartDto> EditCart(String id, int quantity,HashMap<Long, CartDto> cart) {
		if(null == cart) {
			return cart;
		}
		CartDto item = cart.get(Long.parseLong(id));
		if(null != item) {
			item.setQuantity(quantity);
			item.setTotalPrice(quantity*(item.getProduct().getPrice()));
		}
		cart.put(Long.parseLong(id), item);
		return cart;
	}
	
	public HashMap<Long, CartDto> DeleteCart(String id,HashMap<Long, CartDto> cart) {
		if(null == cart) {
			return cart;
		}
		cart.remove(Long.parseLong(id));
		return cart;
	}
	
	public int TotalQuanty(HashMap<Long, CartDto> cart) {
		int quanty = 0;
		for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
			quanty +=itemCart.getValue().getQuantity();
		}
		return quanty;
	}
	
	public double TotalPrice(HashMap<Long, CartDto> cart) {
		double price = 0;
		for(Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
			price +=itemCart.getValue().getTotalPrice();
		}
		return price;
	}

	
}
