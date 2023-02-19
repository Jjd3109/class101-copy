package com.myweb.home.subject.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubjectDAO {

	@Autowired
	private SqlSession session = null;	
	
	public boolean add(SubjectDTO data) {
		String mapperId = "subMapper.addData";
		int res = session.insert(mapperId, data);
		
		if(res == 1) {
			return true;
		}else {
			return false;
		}
		
	}

	public List<SubjectDTO> getSearchData() {
		String mapperId = "subMapper.searchData";
		List<SubjectDTO> searchData = session.selectList(mapperId);
		
		return searchData;
	}

	public SubjectDTO getData(int id) {
		String mapperId = "subMapper.getData";
		SubjectDTO data = session.selectOne(mapperId, id);
		
		return data;
	}



}
