package com.ngs.parsecv.services;

import com.ngs.parsecv.dto.PaginatesDto;

public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalPage,int limit, int currentPage);
	
}
