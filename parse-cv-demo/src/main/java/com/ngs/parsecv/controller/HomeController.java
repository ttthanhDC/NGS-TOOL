package com.ngs.parsecv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ngs.parsecv.dao.HomeDao;

@Controller
public class HomeController extends BaseController {
    @Autowired
	HomeDao homeDao;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = {"/","/home","/trang-chu"}, method = RequestMethod.GET)
	public ModelAndView home() {
		_mvShare.addObject("lstSlides",_homeServices.GetDataSlides());
		_mvShare.addObject("lstCategory",_homeServices.GetDataCategory());
		_mvShare.addObject("lstProducts",_homeServices.GetDataProducts());
		_mvShare.setViewName("home/index");
		return _mvShare;
	}
}
