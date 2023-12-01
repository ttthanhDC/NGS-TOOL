package com.ngs.parsecv.services;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ngs.parsecv.dao.QluvDao;
import com.ngs.parsecv.entity.Qluv;
@Service
public class QluvImpl  implements IQluvService	{
	

	@Autowired
	QluvDao qluvDao;
	
	@Override
	public List<Qluv> getQluv(){
		return qluvDao.getQluv();
	}

}
