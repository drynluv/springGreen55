package com.spring.springGreen55.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.springGreen55.vo.MemberVO;

public interface AdminDAO {

	int getMemTotalCount();

	int getMemGeneralCount();

	int getMemOwnerCount();

	int getMemIssueCount();

	List<MemberVO> getMemList(@Param("memberType") String memberType, @Param("userDel") String userDel);

}
