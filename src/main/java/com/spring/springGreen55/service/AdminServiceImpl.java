package com.spring.springGreen55.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.springGreen55.dao.AdminDAO;
import com.spring.springGreen55.vo.MemberVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public int getMemTotalCount() {
		return adminDAO.getMemTotalCount();
	}

	@Override
	public int getMemGeneralCount() {
		return adminDAO.getMemGeneralCount();
	}

	@Override
	public int getMemOwnerCount() {
		return adminDAO.getMemOwnerCount();
	}

	@Override
	public int getMemIssueCount() {
		return adminDAO.getMemIssueCount();
	}

	@Override
	public List<MemberVO> getMemList(String memberType, String userDel) {
		return adminDAO.getMemList(memberType, userDel);
	}
}
