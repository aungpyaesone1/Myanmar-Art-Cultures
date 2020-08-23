package com.springboot.demo.dao;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.springboot.demo.model.PagerModel;
import com.springboot.demo.model.PostCultureModel;

@Repository
public interface ClientRepository extends PagingAndSortingRepository<PostCultureModel,Long> {

}
