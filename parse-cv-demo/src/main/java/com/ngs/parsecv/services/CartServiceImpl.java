package com.ngs.parsecv.services;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ngs.parsecv.dao.CartDao;
import com.ngs.parsecv.dto.CartDto;
@Service
public class CartServiceImpl  implements ICartService	{
  
   @Autowired
   private CartDao cartDao;

	@Override
	public HashMap<Long, CartDto> AddCart(String id, HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		cart = cartDao.AddCart(id, cart);
		return cart;
	}
	
	@Override
	public HashMap<Long, CartDto> EditCart(String id, int quantity, HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		HashMap<Long, CartDto> editCart = cartDao.EditCart(id, quantity,cart);
		return editCart;
	}
	
	@Override
	public HashMap<Long, CartDto> DeleteCart(String id, HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		HashMap<Long, CartDto> deleteCart = cartDao.DeleteCart(id,cart);
		return deleteCart;
	}

	@Override
	public int TotalQuanty(HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalQuanty(cart);
	}

	@Override
	public double TotalPrice(HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalPrice(cart);
	}

}
