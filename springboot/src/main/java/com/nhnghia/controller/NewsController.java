package com.nhnghia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.nhnghia.controller.output.NewsOutput;
import com.nhnghia.dto.NewsDTO;
import com.nhnghia.service.INewsService;

@RestController
@RequestMapping("/api")
public class NewsController {

	@Autowired
	private INewsService newsService;

	@GetMapping(value = "/news")
	public NewsOutput showNews(@RequestParam("page") int page, @RequestParam("limit") int limit) {
		NewsOutput result = new NewsOutput();
		result.setPage(page);
		Pageable pageable = new PageRequest(page - 1, limit);
		result.setResultList(newsService.fillAll(pageable));
		result.setTotalPages((int) Math.ceil((double) (newsService.totalItems()) / limit));

		return result;
	}

	@PostMapping(value = "/news")
	public NewsDTO createNews(@RequestBody NewsDTO newsDTO) {

		return newsService.save(newsDTO);
	}

	@PutMapping(value = "/news/{id}")
	public NewsDTO updateNews(@RequestBody NewsDTO newsDTO, @PathVariable Long id) {
		newsDTO.setId(id);

		return newsService.save(newsDTO);
	}

	@DeleteMapping(value = "/news")
	public void deleteNews(@RequestBody Long[] ids) {
		newsService.delete(ids);
	}

}
