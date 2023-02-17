package com.myweb.home.subject;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.myweb.home.account.AccountDTO;
import com.myweb.home.subject.model.SubjectDTO;
import com.myweb.home.subject.service.SubjectService;
import com.myweb.home.upload.model.FileUploadDTO;
import com.myweb.home.upload.service.FileUploadService;

@Controller
public class SubjectController {

	@Autowired
	SubjectService service = new SubjectService();
	
	@Autowired
	private FileUploadService fileUploadService;
	
	
	@GetMapping(value="/subject")
	public String subject(Model model) {
		//아이템 전부를 불러주게끔 하기...
		List searchData = null; // 데이터값 비게 만듥...
		
		//전체 정보...
		searchData = service.getSearchData();
		
		model.addAttribute("searchData", searchData);
		
		
		
		return "subject/subject";
	}
	
	@GetMapping(value="/subject/add")
	public String add() {
		
		return "subject/add";
	}
	
	@PostMapping(value="/subject/add")
	public String add(HttpServletRequest request
			         , @SessionAttribute("loginData") AccountDTO acdata
			         , MultipartHttpServletRequest mtfRequest
			         , @RequestParam("fileUpload") MultipartFile[] files) throws Exception {
		
		
		String field = request.getParameter("field"); //타이틀
		String title = request.getParameter("title"); //제목
		String content = request.getParameter("content"); //내용
		String price = request.getParameter("price"); //가격
		
		
		System.out.println(field);
		System.out.println(title);
		System.out.println(content);
		System.out.println(price);

		//이 값들을 넣어주기 
		SubjectDTO data = new SubjectDTO();
		data.setSell_idNumber(acdata.getJd_number());
		data.setSell_field(field);
		data.setSell_title(title);
		data.setSell_content(content);
		data.setSell_price(Integer.parseInt(price));
		
		boolean result = service.add(data);
		
		
		//썸네일 이미지 저장하는것
		for(MultipartFile file: files) {
			String location1 = request.getServletContext().getRealPath("/resources/img/board");
			String url = "/static/img/board"; 
			FileUploadDTO fileData = new FileUploadDTO(data.getSell_number(), location1, url);
			
			
			int fileResult = fileUploadService.upload(file, fileData);

		}

		
		
		if(result) {
			return "redirect:/subject";
		}else {
			return "subject/add";
		}
		
	
	}
	
	@GetMapping(value="subject/detail")
	public String detail(HttpServletRequest request,
						@RequestParam("itemid") String id,
						Model model) {
		//dateil페이지 보여질떄는 몇번 게시물ㅇㄴ지 확인해지고 그걸로 쏴줘야 한다...
		//sellnumber로 페이지 보여지는 페이지 만들기!
		
	
		SubjectDTO newData = new SubjectDTO();
		newData = service.getData(Integer.parseInt(id));
		
		model.addAttribute("data", newData);
		
		return "subject/detail";
	}
	
}


