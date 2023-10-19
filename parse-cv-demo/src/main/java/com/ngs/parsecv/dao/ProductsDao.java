package com.ngs.parsecv.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ngs.parsecv.dto.ProductDto;
import com.ngs.parsecv.entity.MapperProductDto;

@Repository
public class ProductsDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	String sql = "";
	
	private StringBuilder SqlString() {
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT p.id, ");
		sb.append("p.id_category, ");
		sb.append("p.sizes, ");
		sb.append("p.name, ");
		sb.append("p.price, ");
		sb.append("p.sale, ");
		sb.append("p.title, ");
		sb.append("p.highlight, ");
		sb.append("p.new_product, ");
		sb.append("p.details, ");
		sb.append("p.date_created, ");
		sb.append("p.date_updated, ");
		sb.append("c.id AS id_color, ");
		sb.append("c.id_product, ");
		sb.append("c.name AS name_color, ");
		sb.append("c.code AS code_color, ");
		sb.append("c.image " );
		sb.append("FROM products p ");
		sb.append("INNER JOIN color c ON p.id = c.id_product ");
		sb.append("WHERE 1=1 ");
//		sb.append("GROUP BY p.id,p.id_category ");
//		sb.append("ORDER BY RAND()");
		return sb;
	}
	
	private String SqlNewProduct(boolean newProduct,boolean highlight) {
		StringBuilder sb = SqlString();
		if(newProduct && !highlight) {
			sb.append("AND p.new_product = true ");
		}
		else if(highlight && !newProduct) {
			sb.append("AND p.highlight = true ");
		}else if(newProduct && highlight) {
			sb.append("AND p.new_product = true ");
			sb.append("AND p.highlight = true ");
		}
		sb.append("GROUP BY p.id,p.id_category ");
		sb.append("ORDER BY RAND()");
		sb.append("LIMIT 9");
		return sb.toString();
		
	}
	
	public String sqlGetProductsByCategoryId(int categoryId) {
		StringBuilder sb = SqlString();
		sb.append("AND p.id_category = " + categoryId + " ");
		return sb.toString();
	}
	
	public String sqlGetProductsById(int productId) {
		StringBuilder sb = SqlString();
		sb.append("AND p.id = " + productId + " ");
		return sb.toString();
	}
	
	public String sqlGetProductsByCategoryId(int categoryId,int start, int end) {
		StringBuilder sb = SqlString();
		sb.append("AND p.id_category = " + categoryId + " ");
		if(start >= 0) {
			sb.append(" LIMIT " + start + ", "+end);
		}
		return sb.toString();
	}
	
	public List<ProductDto> GetProducts(){
		List<ProductDto> lstProductDto = new ArrayList<ProductDto>();
		String sql = SqlNewProduct(false,false); 
		lstProductDto = _jdbcTemplate.query(sql, new MapperProductDto());
		return lstProductDto;
	}
	
	
	public List<ProductDto> GetProductsByCategoryId(int categoryId,int start, int end){
		List<ProductDto> lstProductDto = new ArrayList<ProductDto>();
		String sql = sqlGetProductsByCategoryId(categoryId,start,end);
		lstProductDto = _jdbcTemplate.query(sql, new MapperProductDto());
		return lstProductDto;
	}
	
	public List<ProductDto> GetProductsById(int productId){
		List<ProductDto> lstProductDto = new ArrayList<ProductDto>();
		String sql = sqlGetProductsById(productId);
		lstProductDto = _jdbcTemplate.query(sql, new MapperProductDto());
		return lstProductDto;
	}
	
	
}
