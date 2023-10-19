package com.ngs.parsecv.dto;

public class CartDto {
	private int quantity;
	private double totalPrice;
	private ProductDto product;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductDto getProduct() {
		return product;
	}
	public void setProduct(ProductDto product) {
		this.product = product;
	}
	public CartDto(int quantity, int totalPrice, ProductDto product) {
		super();
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.product = product;
	}
	public CartDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
