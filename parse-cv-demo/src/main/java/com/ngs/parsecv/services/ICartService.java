package com.ngs.parsecv.services;

import java.util.HashMap;

import com.ngs.parsecv.dto.CartDto;

public interface ICartService {
	public HashMap<Long,CartDto> AddCart(String id,HashMap<Long, CartDto> cart);
	public HashMap<Long,CartDto> EditCart(String id, int quantity,HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> DeleteCart(String id,HashMap<Long, CartDto> cart);
	public int TotalQuanty(HashMap<Long, CartDto> cart);
	public double TotalPrice(HashMap<Long, CartDto> cart);
	
}
