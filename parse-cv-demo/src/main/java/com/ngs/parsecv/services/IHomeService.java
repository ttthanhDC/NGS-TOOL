package com.ngs.parsecv.services;

import java.util.List;

import com.ngs.parsecv.dto.ProductDto;
import com.ngs.parsecv.entity.Category;
import com.ngs.parsecv.entity.Menu;
import com.ngs.parsecv.entity.Slides;

public interface IHomeService {
	public List<Slides> GetDataSlides();
	public List<Category> GetDataCategory();
	public List<Menu> GetDataMenu();
	public List<ProductDto> GetDataProductsByCategoryId(int category_id);
	public List<ProductDto> GetDataProducts();
	
}
