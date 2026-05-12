package com.spring.springGreen55.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.springGreen55.service.AdminService;
import com.spring.springGreen55.vo.MemberVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("/memberManage")
	public String memberManageGet(
			@RequestParam(name="memberType", defaultValue = "") String memberType,
			@RequestParam(name="userDel", defaultValue = "") String userDel,
			Model model) {
		
		int memTotalCount = adminService.getMemTotalCount();
		int memGeneralCount = adminService.getMemGeneralCount();
		int memOwnerCount = adminService.getMemOwnerCount();
		int memIssueCount = adminService.getMemIssueCount();
		
		List<MemberVO> vos = adminService.getMemList(memberType, userDel);
		
		model.addAttribute("memTotalCount", memTotalCount);
		model.addAttribute("memGeneralCount", memGeneralCount);
		model.addAttribute("memOwnerCount", memOwnerCount);
		model.addAttribute("memIssueCount", memIssueCount);
		model.addAttribute("vos", vos);
		model.addAttribute("memberType", memberType);
		
		return "admin/memberManage";
	}

	@ResponseBody
	@GetMapping("memberSearch")
	public List<MemberVO> memberSearchGet(
			@RequestParam(name="memberType", defaultValue = "") String memberType,
			@RequestParam(name="userDel", defaultValue = "") String userDel) {
		
		List<MemberVO> vos = adminService.getMemList(memberType, userDel);
		return vos;
	}
}
