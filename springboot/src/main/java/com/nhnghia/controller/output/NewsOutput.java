package com.nhnghia.controller.output;

import java.util.ArrayList;
import java.util.List;

import com.nhnghia.dto.NewsDTO;

public class NewsOutput {

	private int page;
	private int totalPages;
	private List<NewsDTO> resultList = new ArrayList<>();

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public List<NewsDTO> getResultList() {
		return resultList;
	}

	public void setResultList(List<NewsDTO> resultList) {
		this.resultList = resultList;
	}

}
