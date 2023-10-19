package com.ngs.parsecv.controller;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.ngs.parsecv.services.HomeServiceImpl;

@Controller
public class BaseController {
    @Autowired
    HomeServiceImpl _homeServices;
    ModelAndView _mvShare = new ModelAndView();
    public Model initModel(Model model) {
    	model.addAttribute("lstSlides",_homeServices.GetDataSlides());
		model.addAttribute("lstCategory",_homeServices.GetDataCategory());
		model.addAttribute("lstMenu",_homeServices.GetDataMenu());
		return model;
    }
    @PostConstruct
    public ModelAndView init() {
    	_mvShare.addObject("lstMenu",_homeServices.GetDataMenu());
    	return _mvShare;
    }
}
