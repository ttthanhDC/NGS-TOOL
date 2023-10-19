package com.ngs.parsecv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ngs.parsecv.dto.PaginatesDto;
import com.ngs.parsecv.dto.ProductDto;
import com.ngs.parsecv.services.PaginatesServiceImpl;
import com.ngs.parsecv.services.ProductsServiceImpl;

@Controller
public class ProductController extends BaseController {	
	@Autowired
	PaginatesServiceImpl _paginatesServiceImpl;
	@Autowired
	ProductsServiceImpl _productsService;
	@RequestMapping(value = {"/san-pham/{idCategory}","/product/{idCategory}"}, method = RequestMethod.GET)
	public ModelAndView product(@PathVariable String idCategory) {
		List<ProductDto> lstProducts= _productsService.GetDataProductsByCategoryIdPageinate(Integer.parseInt(idCategory), -1, -1);
		PaginatesDto paginateDto =  _paginatesServiceImpl.GetInfoPaginates(lstProducts.size(),9,1);
		_mvShare.setViewName("home/products");
		_mvShare.addObject("paginateInfo",paginateDto);
		_mvShare.addObject("lstProductbyCategoryId",_productsService.GetDataProductsByCategoryIdPageinate(Integer.parseInt(idCategory),0,9));
		return _mvShare;
	}
	
	@RequestMapping(value = {"/san-pham/{idCategory}/{currentPage}","/product/{idCategory}/{currentPage}"}, method = RequestMethod.GET)
	public ModelAndView productByCategoryIdPagination(@PathVariable String idCategory,@PathVariable String currentPage) {
		List<ProductDto> lstProducts= _productsService.GetDataProductsByCategoryIdPageinate(Integer.parseInt(idCategory), -1, -1);
		PaginatesDto paginateDto =  _paginatesServiceImpl.GetInfoPaginates(lstProducts.size(),9,Integer.parseInt(currentPage));
		_mvShare.setViewName("home/products");
		_mvShare.addObject("paginateInfo",paginateDto);
		_mvShare.addObject("lstProductbyCategoryId",_productsService.GetDataProductsByCategoryIdPageinate(Integer.parseInt(idCategory),paginateDto.getStart(),9));
		return _mvShare;
	}
	
	@RequestMapping(value = {"/product-details/{id}"}, method = RequestMethod.GET)
	public ModelAndView detailProduct(@PathVariable String id) {
		_mvShare.setViewName("home/products-detail");
		List<ProductDto> lstProductDto = _productsService.GetDataProductsById(Integer.parseInt(id));
		_mvShare.addObject("lstProductById",lstProductDto);
		if(lstProductDto.size() > 0) {
			_mvShare.addObject("productDto",lstProductDto.get(0));
		}
		return _mvShare;
	}
}
