package com.ngs.parsecv.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ngs.parsecv.entity.Category;
import com.ngs.parsecv.entity.MapperCategory;

@Repository
public class CategoryDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	public List<Category> GetCategory(){
		List<Category> lstCategory = new ArrayList<Category>();
		String sql = "SELECT * FROM category";
		lstCategory = _jdbcTemplate.query(sql, new MapperCategory());
		return lstCategory;
	}
}
