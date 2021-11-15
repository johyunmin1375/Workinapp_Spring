package com.koreait.workinapp.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.koreait.workinapp.domain.Work;
import com.koreait.workinapp.model.service.work.WorkService;
import com.koreait.workinapp.paging.PagingManager;

@Controller
public class WorkRequestController {

	@Autowired
	private PagingManager pagingManager;

	@Autowired
	private WorkService workService;

	// 근무 요청 페이지
	@GetMapping("/requests/work/list")
	public String getWorkList(Model model, HttpServletRequest request) {
		// 3단계 : 일시키기
		List workList = workService.selectAll();

		// 4단계 : 결과 저장
		pagingManager.init(workList, request);

		model.addAttribute("workList", workList);
		model.addAttribute("pm", pagingManager);

		return "admin/requests/work_list";
	}

	// 근무 승인 요청
	@PostMapping("/requests/work/approve")
	public String getApprove(Work work) {
		// System.out.println("승인 요청 컨트롤러 호출 성공!");
		workService.update(work);
		return "redirect:/admin/requests/work/list";
	}

	// 근무 승인 거절
	@PostMapping("/requests/work/reject")
	public String getReject(int w_pk) {
		// System.out.println("승인 요청 컨트롤러 호출 성공!");
		workService.delete(w_pk);
		return "redirect:/admin/requests/work/list";
	}
}
