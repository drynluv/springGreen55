package com.spring.springGreen55.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private int idx;
	private String mid;
	private String pwd;
	private String nickName;
	private String name;
	private String gender;
	private String birthday;
	private String tel;
	private String address;
	private String email;
	private String photo;
	private String userDel;
	private String memberType;
	private int visitCnt;
	private String startDate;
	private String lastDate;
	
	private int reviewCnt;
	private int commentCnt;
	private int communityCnt;
	
	private String cafeName;
	private String status;
}


