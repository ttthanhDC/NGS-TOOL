package com.ngs.parsecv.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.ngs.parsecv.dao.CategoryDao;
import com.ngs.parsecv.dao.HomeDao;
import com.ngs.parsecv.dao.MenuDao;
import com.ngs.parsecv.dao.ProductsDao;
import com.ngs.parsecv.dto.ProductDto;
import com.ngs.parsecv.entity.Category;
import com.ngs.parsecv.entity.Menu;
import com.ngs.parsecv.entity.Slides;
@Service
public class HomeServiceImpl  implements IHomeService	{
   @Autowired
   JdbcTemplate _jdbcTemplate;
   @Autowired
   HomeDao homeDao;
   @Autowired
   CategoryDao categoryDao;
   @Autowired
   MenuDao menuDao;
   @Autowired
   ProductsDao productsDao;
   
	@Override
	public List<Slides> GetDataSlides() {
		// TODO Auto-generated method stub
		return homeDao.GetDataSlides();
	}
	@Override
	public List<Category> GetDataCategory() {
		return categoryDao.GetCategory();
	}
	@Override
	public List<Menu> GetDataMenu() {
		// TODO Auto-generated method stub
		return menuDao.GetMenu();
	}
	@Override
	public List<ProductDto> GetDataProductsByCategoryId(int category_id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<ProductDto> GetDataProducts() {
		// TODO Auto-generated method stub
		List<ProductDto> lstProducts = productsDao.GetProducts();
		return lstProducts;
	}

}
