package com.ngs.parsecv.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ngs.parsecv.entity.MapperMenu;
import com.ngs.parsecv.entity.Menu;

@Repository
public class MenuDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	public List<Menu> GetMenu(){
		List<Menu> lstMenu = new ArrayList<Menu>();
		String sql = "SELECT * FROM menu";
		lstMenu = _jdbcTemplate.query(sql, new MapperMenu());
		return lstMenu;
	}
}
