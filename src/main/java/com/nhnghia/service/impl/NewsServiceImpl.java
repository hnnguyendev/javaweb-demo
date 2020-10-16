package com.nhnghia.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.nhnghia.converter.NewsConverter;
import com.nhnghia.dto.NewsDTO;
import com.nhnghia.entity.CategoryEntity;
import com.nhnghia.entity.NewsEntity;
import com.nhnghia.repository.ICategoryRepository;
import com.nhnghia.repository.INewsRepository;
import com.nhnghia.service.INewsService;

@Service
public class NewsServiceImpl implements INewsService {

	@Autowired
	private INewsRepository newsRepository;

	@Autowired
	private ICategoryRepository categoryRepository;

	@Autowired
	private NewsConverter newsConverter;

	@Override
	public NewsDTO save(NewsDTO newsDTO) {
		NewsEntity newsEntity = new NewsEntity();
		if (newsDTO.getId() != null) {
			NewsEntity oldNewsEntity = newsRepository.findOne(newsDTO.getId());
			newsEntity = newsConverter.convertToNewsEntity(oldNewsEntity, newsDTO);
		} else {
			newsEntity = newsConverter.convertToNewsEntity(newsDTO);
		}
		CategoryEntity categoryEntity = categoryRepository.findOneByCode(newsDTO.getCategoryCode());
		newsEntity.setCategoryEntity(categoryEntity);
		newsEntity = newsRepository.save(newsEntity);
		
		return newsConverter.convertToNewsDTO(newsEntity);
	}

	@Override
	public void delete(Long[] ids) {
		for (Long item : ids) {
			newsRepository.delete(item);
		}
		
	}

	@Override
	public List<NewsDTO> fillAll(Pageable pageable) {
		List<NewsDTO> newsDTOList = new ArrayList<>();
		List<NewsEntity> newsEntityList = newsRepository.findAll(pageable).getContent();
		for (NewsEntity item : newsEntityList) {
			NewsDTO newDTO = newsConverter.convertToNewsDTO(item);
			newsDTOList.add(newDTO);
		}
		
		return newsDTOList;
	}

	@Override
	public int totalItems() {
		
		return (int) newsRepository.count();
	}

}
