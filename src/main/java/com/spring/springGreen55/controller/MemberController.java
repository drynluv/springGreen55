package com.spring.springGreen55.controller;

import java.io.IOException;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.springGreen55.common.ProjectProvider;
import com.spring.springGreen55.service.MemberService;
import com.spring.springGreen55.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService memberService;

	@Autowired
	ProjectProvider projectProvider;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@GetMapping("/memberJoin")
	public String memberJoinGet() {
		return "member/memberJoin";
	}

	@PostMapping("/memberJoin")
	public String memberJoinPost(MultipartFile fName, MemberVO vo, HttpServletRequest request) throws IOException {
		if(memberService.getMemberIdCheck(vo.getMid()) != null) return "redirect:/message/memberIdCheckNo";
		if(memberService.getMemberNickNameCheck(vo.getNickName()) != null) return "redirect:/message/memberNickNameCheckNo";
		System.out.println("vo : " + vo);
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/member/");
		String oFile = UUID.randomUUID().toString().substring(0, 4) + "_" + fName.getOriginalFilename();
		
		projectProvider.writeFile(fName, realPath + oFile);
		vo.setPhoto(oFile);
		
		// 비밀번호 암호화
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		
		int res = 0;
		res = memberService.setMemberJoin(vo);
		if(res != 0) return "redirect:/message/memberJoinOk";
		else return "redirect:/message/memberJoinNo";
	}

	@ResponseBody
	@PostMapping("/memberIdCheck")
	public String memberIdCheckPost(String mid) {
		MemberVO vo = memberService.getMemberIdCheck(mid);
		if (vo != null) return "1";
		else return "0";
	}

	@ResponseBody
	@PostMapping("/memberNickNameCheck")
	public String memberNickNameCheckPost(String nickName) {
		MemberVO vo = memberService.getMemberNickNameCheck(nickName);
		int res = 0;
		if (vo != null)
			res = 1;
		return res + "";
	}

	//인증 메일 보내기
	@ResponseBody
	@PostMapping("/memberEmailCheck")
	public String memberEmailCheckPost(HttpSession session, String email) throws MessagingException {
		String certificationKey = UUID.randomUUID().toString().substring(0, 8);
		session.setAttribute("sCertificationKey", certificationKey);
		
		String title = "회원가입에 발급된 인증키입니다.";
		String content = "회원 가입 인증키 : " + certificationKey;
		
		projectProvider.mailSend(email, title, content);
		
		return "1";
	}
	
	// 인증 번호 확인 처리
	@ResponseBody
	@PostMapping("/memberCertificationCheck")
	public String memberCertificationCheckPost(HttpSession session, String checkKey) {
		String certificationKey = (String) session.getAttribute("sCertificationKey");
		if(certificationKey != null && certificationKey.equals(checkKey)) {
			session.removeAttribute("sCertificationKey");
			return "1";
		}
		else return "0";
	}
	
	@GetMapping("/memberLogin")
	public String memberLoginGet() {
		return "member/memberLogin";
	}
	
	@PostMapping("/memberLogin")
	public String memberLoginPost(String mid, String pwd, HttpSession session) {
		MemberVO vo = memberService.getMemberIdCheck(mid);
		if(vo == null) return "redirect:/message/memberLoginNo";
		if(vo.getUserDel().equals("WT")) return "redirect:/message/userDelNo";
		if(!passwordEncoder.matches(pwd, vo.getPwd())) return "redirect:/message/memberLoginNo";
	
		// 세션처리
		session.setAttribute("sMid", mid);
		session.setAttribute("sNickName", vo.getNickName());
		session.setAttribute("sLastDate", vo.getLastDate());
		session.setAttribute("sMemberType", vo.getMemberType());
		
		 return "redirect:/message/memberLoginOk?mid="+mid;		
	}
	
	@GetMapping("/memberLogout")
	public String memberLogoutGet(HttpSession session) {
		session.invalidate();
		return "redirect:/message/memberLogoutOk";
	}
	
	@GetMapping("/memberMain")
	public String memberMainGet(HttpSession session) {
		String mid = (String) session.getAttribute("sMid");
		String memberType = (String) session.getAttribute("sMemberType");
		
		if(mid == null) return "redirect:/member/memberLogin";
		
		if("admin".equals(mid)) return "admin/adminMain";
		if("대표".equals(memberType)) return "member/userOwnerMain";
		return "member/userGeneralMain";
	}
	
	@GetMapping("/userOwnerMain")
	public String userOwnerMainGet() {
		return "member/userOwnerMain";
	}
}
