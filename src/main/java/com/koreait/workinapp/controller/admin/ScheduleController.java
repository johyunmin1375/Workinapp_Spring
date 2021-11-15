package com.koreait.workinapp.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.koreait.workinapp.model.service.work.WorkService;
import com.koreait.workinapp.paging.PagingManager;

@Controller
public class ScheduleController {
	
	@Autowired
	private PagingManager pagingManager;
	
	@Autowired
	private WorkService workService;

	//근무 목록 페이지 요청
	@GetMapping("/scheduler/list")
	public String getSchedulerList(Model model, HttpServletRequest request) {
		//3단계 : 일시키기
		List workList = workService.selectAllByApproval();
		
		//4단계 : 결과 저장
		model.addAttribute("workList", workList);
		
		return "admin/scheduler/scheduler_list";
	}
}
