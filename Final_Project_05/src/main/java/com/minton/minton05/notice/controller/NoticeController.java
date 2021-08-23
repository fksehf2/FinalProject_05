package com.minton.minton05.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minton.minton05.notice.dto.NoticeDto;
import com.minton.minton05.notice.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired private NoticeService service; //service 주입
	
	//공지사항 목록을 가져오는 메소드
	@RequestMapping("/notice/list")
	public String getList(HttpServletRequest request) {
		//service에서 request 영역에 저장한 데이터  
		service.getList(request);
		return "notice/list"; //같은 위치로 리턴
	}
	
	//공지사항 글 자세히보기
	@RequestMapping("/notice/detail")
	public String detail(HttpServletRequest request) {
		service.getData(request);
		return "notice/detail";
	}
	
	//공지사항 글 새로 작성하기 요청 - auth 작업 필요
	@RequestMapping("/notice/insertform")
	public String insertForm(HttpServletRequest request) {
		return "notice/insertform";
	}
	
	//공지사항 글 새로 작성 후 폼 제출 요청 - auth 작업 필요
	@RequestMapping("/notice/insert")
	public String insert(HttpServletRequest request, NoticeDto dto) {
		service.saveContent(dto);
		return "notice/insert";
	}
	
	
}






