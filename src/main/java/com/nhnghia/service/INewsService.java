package com.nhnghia.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.nhnghia.dto.NewsDTO;

public interface INewsService {
	
	NewsDTO save(NewsDTO newsDTO);
	
	void delete(Long[] ids);
	
	List<NewsDTO> fillAll(Pageable pageable);
	
	int totalItems();
	
}
