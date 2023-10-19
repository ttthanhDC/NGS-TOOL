package com.ngs.parsecv.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ngs.parsecv.dao.ProductsDao;
import com.ngs.parsecv.dto.ProductDto;
@Service
public class ProductsServiceImpl  implements IProductsService	{
  
   @Autowired
   private ProductsDao productsDao;

@Override
public List<ProductDto> GetDataProductsByCategoryIdPageinate(int categoryId, int start, int end) {
	// TODO Auto-generated method stub
	List<ProductDto> lstproducts = productsDao.GetProductsByCategoryId(categoryId, start, end);
	return lstproducts;
}

@Override
public List<ProductDto> GetDataProductsById(int productId) {
	// TODO Auto-generated method stub
	List<ProductDto> lstproducts = productsDao.GetProductsById(productId);
	return lstproducts;
}
   
   
	

}
