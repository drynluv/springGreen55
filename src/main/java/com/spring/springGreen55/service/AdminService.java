package com.spring.springGreen55.service;

import java.util.List;

import com.spring.springGreen55.vo.MemberVO;

public interface AdminService {

	int getMemTotalCount();

	int getMemGeneralCount();

	int getMemOwnerCount();

	int getMemIssueCount();

	List<MemberVO> getMemList(String memberType, String userDel);

}
