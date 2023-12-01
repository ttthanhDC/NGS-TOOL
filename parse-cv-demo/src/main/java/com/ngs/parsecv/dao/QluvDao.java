package com.ngs.parsecv.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ngs.parsecv.entity.Qluv;
import com.ngs.parsecv.dto.CartDto;
import com.ngs.parsecv.entity.MapperQluv;

@Repository
public class QluvDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	public List<Qluv> getQluv(){
		List<Qluv> lstQluv = new ArrayList<Qluv>();
		String sql = "SELECT * FROM qluv";
		lstQluv = _jdbcTemplate.query(sql, new MapperQluv());
		return lstQluv;
	}
	

}
