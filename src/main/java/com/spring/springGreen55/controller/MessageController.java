package com.spring.springGreen55.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MessageController {

	@RequestMapping(value = "/message/{msgFlag}", method = RequestMethod.GET)
	public String messageGet(Model model, 
			@PathVariable String msgFlag,
			@RequestParam(name = "idx", defaultValue = "0", required = false) int idx,
			@RequestParam(name = "pag", defaultValue = "1", required = false) int pag,
			@RequestParam(name = "pageSize", defaultValue = "10", required = false) int pageSize,
			@RequestParam(name = "mid", defaultValue = "", required = false) String mid,
			@RequestParam(name = "msg", defaultValue = "", required = false) String msg,
			@RequestParam(name = "pwd", defaultValue = "", required = false) String pwd
		) {
	
		if(msgFlag.equals("memberIdCheckNo")) {
			model.addAttribute("message", "아이디가 중복되었습니다.");
			model.addAttribute("url", "member/memberJoin");
		}
		else if(msgFlag.equals("memberNickNameCheckNo")) {
			model.addAttribute("message", "아이디가 중복되었습니다.");
			model.addAttribute("url", "member/memberJoin");
		}
		else if(msgFlag.equals("memberJoinOk")) {
			model.addAttribute("message", "회원가입이 완료되었습니다.");
			model.addAttribute("url", "member/memberLogin");
		}
		else if(msgFlag.equals("memberJoinNo")) {
			model.addAttribute("message", "회원가입에 실패하였습니다.");
			model.addAttribute("url", "member/memberJoin");
		}
		else if(msgFlag.equals("memberLoginNo")) {
			model.addAttribute("message", "로그인에 실패하였습니다.");
			model.addAttribute("url", "member/memberLogin");
		}
		else if(msgFlag.equals("userDelNo")) {
			model.addAttribute("message", "카페 대표 승인 대기중입니다.");
			model.addAttribute("url", "member/memberLogin");
		}
		else if(msgFlag.equals("memberLoginOk")) {
			model.addAttribute("message", mid + "님 로그인 되었습니다.");
			model.addAttribute("url", "");
		}
		else if(msgFlag.equals("memberLogoutOk")) {
			model.addAttribute("message", "로그아웃 되었습니다.");
			model.addAttribute("url", "");
		}
		
		
		return "include/message";
	}
	
}
