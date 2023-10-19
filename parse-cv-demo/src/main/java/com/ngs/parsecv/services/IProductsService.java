package com.ngs.parsecv.services;

import java.util.List;

import com.ngs.parsecv.dto.ProductDto;

public interface IProductsService {
	public List<ProductDto> GetDataProductsByCategoryIdPageinate(int categoryId, int start,int end);
	public List<ProductDto> GetDataProductsById(int productId);
	
}
