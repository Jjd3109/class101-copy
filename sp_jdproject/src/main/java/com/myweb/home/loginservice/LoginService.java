package com.myweb.home.loginservice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myweb.home.account.AccountDAO;
import com.myweb.home.account.AccountDTO;

@Service
public class LoginService {

	@Autowired
	private AccountDAO dao;
	
	public boolean sign(AccountDTO data) {
		boolean result = dao.add(data);
			
		return true;
	}

	public boolean idCheck(String email) {
		AccountDTO result = dao.idCheck(email);
		
		if(result == null) {
			//아이디 중복값이없을경우 
			return true;
		}else {
			return false;
		}
	
		
		
	}

	public boolean nicknameCheck(String nickname) {
	AccountDTO result = dao.nicknameCheck(nickname);
		
		if(result == null) {
			//아이디 중복값이없을경우 
			return true;
		}else {
			return false;
		}
	}

	public boolean loginCheck(HttpSession session, AccountDTO data) {
		AccountDTO result = dao.loginCheck(data);
		
		System.out.println(result);
		if(result != null) {
			//아이디 비밀번호 맞을시에 값이 나온다. 
			session.setAttribute("loginData", result);
			return true;
		}else {
			//아이디 비밀번호 값이 있을시에 
			
			return false;
		}
	}

	
}
