package com.ngs.parsecv.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.ngs.parsecv.dto.ProductDto;

public class MapperProductDto implements RowMapper<ProductDto >	{

	@Override
	public ProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ProductDto productDto = new ProductDto();
		productDto.setTitle(rs.getString("title"));
		productDto.setSizes(rs.getString("sizes"));
		productDto.setSale(rs.getString("sale"));
		productDto.setPrice(rs.getDouble("price"));
		productDto.setNew_product(rs.getBoolean("new_product"));
		productDto.setName_color(rs.getString("name_color"));
		productDto.setName(rs.getString("name"));
		productDto.setImage(rs.getString("image"));
		productDto.setId_color(rs.getInt("id_color"));
		productDto.setId_category(rs.getInt("id_category"));
		productDto.setId(rs.getInt("id"));
		productDto.setHighlight(rs.getBoolean("highlight"));
		productDto.setDetails(rs.getString("details"));
		productDto.setDate_updated(rs.getDate("date_updated"));
		productDto.setDate_created(rs.getDate("date_created"));
		productDto.setCode_color(rs.getString("code_color"));
		
		return productDto;
	}

}
