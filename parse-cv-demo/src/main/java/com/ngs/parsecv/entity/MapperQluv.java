package com.ngs.parsecv.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperQluv implements RowMapper<Qluv >	{

	@Override
	public Qluv mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Qluv qluv = new Qluv();
		qluv.setId(rs.getInt("id"));
		qluv.setName(rs.getString("name"));
		qluv.setImage(rs.getString("image"));
		qluv.setAdress(rs.getString("adress"));
		qluv.setDob(rs.getString("dob"));
		qluv.setSex(rs.getString("sex"));
		qluv.setPhone(rs.getString("phone"));
		qluv.setEmail(rs.getString("email"));
		qluv.setSkill(rs.getString("skill"));
		qluv.setYoe(rs.getString("yoe"));
		qluv.setPosition(rs.getString("position"));
		return qluv;
	}

}
