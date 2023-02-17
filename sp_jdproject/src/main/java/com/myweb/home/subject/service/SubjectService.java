package com.myweb.home.subject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myweb.home.subject.model.SubjectDAO;
import com.myweb.home.subject.model.SubjectDTO;

@Service
public class SubjectService {

	@Autowired
	private SubjectDAO dao;
	
	public boolean add(SubjectDTO data) {
		boolean result = dao.add(data);
		
		if(result) {
			return true;
		}else {
			return false;
		}
		
	}

	public List getSearchData() {
		List searchData = dao.getSearchData();
		
		return searchData;
	}

	public SubjectDTO getData(int id) {
		SubjectDTO data = dao.getData(id);
		return data;
	}


}
