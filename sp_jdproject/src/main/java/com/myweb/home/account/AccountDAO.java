package com.myweb.home.account;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDAO {
	@Autowired
	private SqlSession session = null;
	
	public boolean add(AccountDTO data) {
		
		String mapperId = "acMapper.insertData";
		int res = session.insert(mapperId, data);
		
		if(res == 1) {
			return true;
		}else {
			return false;
		}
	
	}

	public AccountDTO idCheck(String email) {
		String mapperId = "acMapper.idCheck";
		AccountDTO result = session.selectOne(mapperId, email);
		return result;
	}

	public AccountDTO nicknameCheck(String nickname) {
		String mapperId = "acMapper.nicknameCheck";
		AccountDTO result = session.selectOne(mapperId, nickname);
		return result;
	}

	public AccountDTO loginCheck(AccountDTO data) {
		String mapperId = "acMapper.loginCheck";
		AccountDTO result = session.selectOne(mapperId, data);
		return result;
	}

}
