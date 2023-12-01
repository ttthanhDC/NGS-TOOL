package com.ngs.parsecv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ngs.parsecv.services.QluvImpl;


@Controller
public class QLUVController extends BaseController {
	
	@Autowired
	QluvImpl _qluvImpl;
    @Autowired
    /**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/qluv"}, method = RequestMethod.GET)
	public ModelAndView home() {
		_mvShare.addObject("activeQluv","active");
		_mvShare.addObject("qluvData",_qluvImpl.getQluv());
		_mvShare.setViewName("home/qluv");
		return _mvShare;
	}
    
}
