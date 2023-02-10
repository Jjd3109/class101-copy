package com.myweb.home.logincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myweb.home.account.AccountDTO;
import com.myweb.home.loginservice.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService service; 
	
	@GetMapping(value= "/login")
	public String login() {
		
		
		return "login/login";
	}
	
	@PostMapping(value="/login")
	public String login(HttpServletRequest request,
						HttpSession session) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	
		AccountDTO data = new AccountDTO();
		data.setJd_email(email);
		data.setJd_pw(pw);
		
		boolean result = service.loginCheck(session, data);
		
		//result값이 있을시에 참! 
		if(result) {
			//로그인 성공 !!
			return "redirect:/";
		}else {
			session.setAttribute("fail", "fail");
			return "login/login";
		}
		
	}
	
	
	@GetMapping(value="/login/sign")
	public String sign() {
		
		return "login/sign";
	}
	
	
	@PostMapping(value="/login/sign")
	public String sign(HttpServletRequest request) {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		
		AccountDTO data = new AccountDTO();
		
		data.setJd_email(email);
		data.setJd_pw(pw);
		data.setJd_name(name);
		data.setJd_nickname(nickname);
		
		boolean result = service.sign(data);
		
		if(result) {
			return "home";
		}
		else {
			return "login/sign";
		}
		
	}
	
	//이메일 중복체크 
	@PostMapping(value="/login/sign/idCheck")
	@ResponseBody
	public String idCheck(HttpServletRequest request) {
		String email = request.getParameter("email");
		JSONObject json = new JSONObject();
		
		boolean result = service.idCheck(email);
		
		if(result) {
			//중복확인했을때 없는 결과
			json.put("code", "success");
		}else {
			//동일한 아이디 일때
			json.put("code", "false");
		}
		
		return json.toJSONString();
	}
	
	
	//닉네임 중복체크 
	@PostMapping(value="/login/sign/nicknameCheck")
	@ResponseBody
	public String nicknameCheck(HttpServletRequest request) {
		String nickname = request.getParameter("nickname");
		JSONObject json = new JSONObject();
		
		boolean result = service.nicknameCheck(nickname);
		
		if(result) {
			//중복확인했을때 없는 결과
			json.put("code", "success");
		}else {
			//동일한 아이디 일때
			json.put("code", "false");
		}
		
		return json.toJSONString();
	}
	
}
