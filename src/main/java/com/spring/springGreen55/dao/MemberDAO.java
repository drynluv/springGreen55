package com.spring.springGreen55.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.springGreen55.vo.MemberVO;

public interface MemberDAO {

	MemberVO getMemberIdCheck(@Param("mid") String mid);

	MemberVO getMemberNickNameCheck(@Param("nickName") String nickName);

	int setMemberJoin(@Param("vo") MemberVO vo);


}
