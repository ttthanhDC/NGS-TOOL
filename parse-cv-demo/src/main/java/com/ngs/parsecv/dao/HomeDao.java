package com.ngs.parsecv.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ngs.parsecv.entity.MapperSliders;
import com.ngs.parsecv.entity.Slides;

@Repository
public class HomeDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	public List<Slides> GetDataSlides(){
		List<Slides> lstSlides = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		lstSlides = _jdbcTemplate.query(sql, new MapperSliders());
		return lstSlides;
	}
}
