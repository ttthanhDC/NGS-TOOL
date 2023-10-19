package com.ngs.parsecv.dto;

public class PaginatesDto {
	private int totalPage;
	private int currentPage;
	private int limit;
	private int start,end;
	public PaginatesDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public PaginatesDto(int totalPage, int currentPage, int limit, int start, int end) {
		super();
		this.totalPage = totalPage;
		this.currentPage = currentPage;
		this.limit = limit;
		this.start = start;
		this.end = end;
	}
}
