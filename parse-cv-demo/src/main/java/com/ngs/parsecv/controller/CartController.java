package com.ngs.parsecv.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ngs.parsecv.dto.CartDto;
import com.ngs.parsecv.services.CartServiceImpl;

@Controller
public class CartController extends BaseController {	
	
	@Autowired
	CartServiceImpl _cartService;
	@RequestMapping(value = {"/Addcart/{id}"}, method = RequestMethod.GET)
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable String id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(null == cart) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = _cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuanty", _cartService.TotalQuanty(cart));
		session.setAttribute("TotalPrice", _cartService.TotalPrice(cart));
		return "redirect:"+ request.getHeader("Referer"); // Return previous Page
	}
	
	@RequestMapping(value = {"/view-cart"}, method = RequestMethod.GET)
	public ModelAndView ViewCart(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("home/cart");
		return _mvShare;
		
	}
	
	@RequestMapping(value = "EditCart/{id}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
//		cart = _cartService.EditCart(id, quanty, cart);
//		session.setAttribute("Cart", cart);
//		session.setAttribute("TotalQuantyCart", _cartService.TotalQuanty(cart));
//		session.setAttribute("TotalPriceCart", _cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = {"/DeleteCart/{id}"}, method = RequestMethod.GET)
	public String DeleteCart(HttpServletRequest request, HttpSession session,@PathVariable String id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = _cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuanty", _cartService.TotalQuanty(cart));
		session.setAttribute("TotalPrice", _cartService.TotalPrice(cart));
		return "redirect:"+ request.getHeader("Referer"); // Return previous Page
		
	}
	
}
