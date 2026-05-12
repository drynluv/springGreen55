show tables;

create table member (
  idx       int not null auto_increment,/* 회원 고유번호 */
  mid       varchar(30) not null,				/* 회원 아이디(중복불허) */
  pwd       varchar(100) not null,			/* 회원 비밀번호(SHA256 암호화 처리) */
  nickName  varchar(20) not null,				/* 회원 별명(중복불허/수정가능) */
  name		  varchar(20) not null,				/* 회원 성명 */
  gender    char(2)	not null default '남자',	/* 회원 성별 */
  birthday  datetime default now(),			/* 회원 생일 */
  tel			  varchar(15),								/* 전화번호 : 010-1234-5678 */
  address   varchar(100),								/* 주소(다음 API 활용) */
  email		  varchar(60) not null,		  	/* 이메일(아이디/비밀번호 분실시에 사용)-형식체크필수 */
  photo		  varchar(100) default 'noimage.jpg', /* 회원 사진 */
  userDel   char(2)  default 'NO',			/* 회원 탈퇴신청여부(NO:현재 활동중(대표는 승인완료), OK:탈퇴 진행중, : 대표 WT:미승인) */
  memberType	char(2)	default '일반',			/* 일반, 대표 */
  visitCnt  int default 0,							/* 총 방문횟수 */
  startDate datetime default now(),			/* 최초 가입일 */
  lastDate  datetime default now(),			/* 마지막 접속일 */
  primary key (idx),
  unique(mid)
);

desc member;

drop table;

select * from member;

select count(*) as cnt from member;

select count(*) as female from member where gender = '여자';

select now(); /*현재 날짜와 시간을 출력 */

select curdate(); /* 현재 날짜만 출력 */

select date(lastDate) from member; /* member테이블의 lastDate필드를 날짜만 출력 */ 

select idx, lastDate, curdate(), date(lastDate)=curdate() from member;

update member set todayCnt = if(date(lastDate)=curdate(),todayCnt+1, 1), lastDate=now() where mid = 'admin';

update member set point = point + 10 where mid = 'admin' and todayCnt <= 3;

select m.*,c.name, c.status, c.mid from member m, cafe c where m.mid = c.mid order by m.name;

select m.*,c.cafeName, c.status from member m left Join cafe c on m.mid = c.mid where memberType = '대표' order by m.name;

select m.*,c.cafeName, c.status from member m left Join cafe c on m.mid = c.mid where memberType = '대표' and c.status is NULL order by m.name;

select *,(select count(*) from review where mid=m.mid) as reviewCnt from member m order by idx desc;

select *,(select count(*) from review where mid=m.mid) as reviewCnt from member m where userDel = 'NO' order by idx desc;

select *,(select count(*) from review where mid=m.mid) as reviewCnt from member m where userDel != 'NO' order by idx desc;

select *,(select count(*) from review where mid=m.mid) as reviewCnt from member m where userDel = 'NO' order by reviewCnt desc;