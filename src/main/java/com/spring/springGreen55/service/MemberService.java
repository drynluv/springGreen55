package com.spring.springGreen55.service;

import com.spring.springGreen55.vo.MemberVO;

public interface MemberService {

	MemberVO getMemberIdCheck(String mid);

	MemberVO getMemberNickNameCheck(String nickName);

	int setMemberJoin(MemberVO vo);

}
