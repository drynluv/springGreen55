<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 회원관리</title>
  <jsp:include page="/WEB-INF/views/include/bs5.jsp" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;800&family=Cormorant+Garamond:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${ctp}/resources/css/themeCafe.css">
  <style>
    .member-admin-layout {
      display: grid;
      grid-template-columns: 280px minmax(0, 1fr);
      gap: 24px;
      align-items: start;
    }

    .member-admin-main {
      display: grid;
      gap: 24px;
      min-width: 0;
    }

    .member-hero {
      position: relative;
      overflow: hidden;
      display: grid;
      grid-template-columns: minmax(0, 1fr) 300px;
      gap: 20px;
      align-items: start;
    }

    .member-hero::after {
      content: "";
      position: absolute;
      right: -24px;
      top: -30px;
      width: 220px;
      height: 220px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(136, 164, 111, 0.16) 0%, rgba(136, 164, 111, 0) 72%);
      pointer-events: none;
    }

    .member-hero-copy,
    .member-hero-side {
      position: relative;
      z-index: 1;
    }

    .member-hero-side {
      padding: 20px 22px;
      border-radius: 24px;
      background: linear-gradient(135deg, rgba(236, 243, 231, 0.96), rgba(255, 255, 255, 0.94));
      border: 1px solid rgba(97, 114, 84, 0.12);
    }

    .member-hero-side h3 {
      margin: 0 0 10px;
      color: var(--text-main);
      font-size: 18px;
    }

    .member-hero-side p {
      margin: 0;
      color: var(--text-soft);
      font-size: 14px;
      line-height: 1.8;
    }

    .summary-grid {
      display: grid;
      grid-template-columns: repeat(4, minmax(0, 1fr));
      gap: 16px;
    }

    .summary-card {
      padding: 22px;
      border-radius: 24px;
      background: rgba(255, 253, 248, 0.94);
      border: 1px solid rgba(97, 114, 84, 0.12);
      box-shadow: var(--shadow-card);
    }

    .summary-card strong {
      display: block;
      margin-bottom: 12px;
      color: var(--text-soft);
      font-size: 14px;
    }

    .summary-card span {
      display: block;
      color: var(--text-main);
      font-family: "Cormorant Garamond", serif;
      font-size: 42px;
      line-height: 1;
      font-weight: 700;
    }

    .summary-card p {
      margin: 10px 0 0;
      color: var(--text-soft);
      font-size: 13px;
      line-height: 1.7;
    }

    .filter-card {
      display: grid;
      gap: 18px;
    }

    .filter-head {
      display: flex;
      flex-wrap: wrap;
      align-items: end;
      justify-content: space-between;
      gap: 14px;
    }

    .filter-grid {
      display: grid;
      grid-template-columns: repeat(3, minmax(220px, 1fr));
      gap: 14px;
    }

    .search-line {
      display: grid;
      grid-template-columns: 160px minmax(0, 1fr) 132px;
      gap: 12px;
      align-items: end;
    }

    .filter-chip-row {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
    }

    .filter-chip {
      display: inline-flex;
      align-items: center;
      min-height: 30px;
      padding: 0 12px;
      border-radius: 999px;
      background: rgba(233, 240, 228, 0.9);
      color: var(--primary-deep);
      font-size: 12px;
      font-weight: 700;
    }

    .list-stage {
      display: grid;
      gap: 18px;
    }

    .list-notice {
      padding: 16px 18px;
      border-radius: 20px;
      background: linear-gradient(135deg, rgba(241, 245, 237, 0.98), rgba(255, 255, 255, 0.94));
      border: 1px dashed rgba(97, 114, 84, 0.2);
      color: var(--text-soft);
      font-size: 14px;
      line-height: 1.8;
    }

    .member-list-card,
    .member-extra-card {
      padding: 28px;
      border-radius: 28px;
      background: rgba(255, 253, 248, 0.94);
      border: 1px solid rgba(97, 114, 84, 0.12);
      box-shadow: var(--shadow-card);
      min-width: 0;
      overflow: hidden;
    }

    .block-head {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 18px;
    }

    .block-head p {
      margin: 0;
      color: var(--text-soft);
      font-size: 14px;
      line-height: 1.7;
    }

    .block-head .section-title-sm {
      margin-bottom: 0;
    }

    .member-columns {
      display: grid;
      grid-template-columns: minmax(240px, 2.2fr) minmax(78px, 0.82fr) minmax(78px, 0.82fr) minmax(108px, 1fr) minmax(122px, 1.08fr) 68px;
      gap: 10px;
      padding: 0 10px 10px;
      color: var(--text-soft);
      font-size: 12px;
      font-weight: 800;
      letter-spacing: 0.02em;
      align-items: center;
    }

    .member-row-list {
      display: grid;
      gap: 14px;
    }

    .member-row {
      display: grid;
      grid-template-columns: minmax(240px, 2.2fr) minmax(78px, 0.82fr) minmax(78px, 0.82fr) minmax(108px, 1fr) minmax(122px, 1.08fr) 68px;
      gap: 10px;
      align-items: center;
      padding: 18px 10px 18px 12px;
      border-radius: 22px;
      border: 1px solid rgba(97, 114, 84, 0.10);
      background: rgba(255, 255, 255, 0.84);
      transition: transform 0.18s ease, box-shadow 0.18s ease, border-color 0.18s ease;
      min-width: 0;
    }

    .member-row:hover {
      transform: translateY(-1px);
      border-color: rgba(97, 114, 84, 0.18);
      box-shadow: 0 12px 22px rgba(97, 114, 84, 0.08);
    }

    .member-row.highlight {
      background: linear-gradient(135deg, rgba(238, 244, 232, 0.96), rgba(255, 255, 255, 0.92));
      border-color: rgba(97, 114, 84, 0.18);
    }

    .member-main {
      min-width: 0;
      display: grid;
      gap: 6px;
    }

    .member-main-top {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 8px;
      min-width: 0;
    }

    .member-main-top strong {
      font-size: 16px;
      color: var(--text-main);
      word-break: keep-all;
    }

    .member-id {
      color: var(--text-soft);
      font-size: 12px;
    }

    .member-meta {
      color: var(--text-soft);
      font-size: 13px;
      line-height: 1.7;
      min-width: 0;
      word-break: keep-all;
    }

    .member-cell {
      color: var(--text-soft);
      font-size: 13px;
      line-height: 1.65;
      min-width: 0;
      word-break: keep-all;
    }

    .member-cell strong {
      display: block;
      margin-bottom: 2px;
      color: var(--text-main);
      font-size: 13px;
    }

    .status-pill {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      min-height: 30px;
      padding: 0 12px;
      border-radius: 999px;
      font-size: 12px;
      font-weight: 800;
      white-space: nowrap;
    }

    .status-live {
      background: #e6eee1;
      color: #4d6246;
    }

    .status-wait {
      background: #efe7d8;
      color: #8b7056;
    }

    .status-danger {
      background: #f2dcd7;
      color: #915d55;
    }

    .type-general {
      background: rgba(242, 238, 228, 0.95);
      color: #7a6a54;
    }

    .type-owner {
      background: rgba(233, 240, 228, 0.95);
      color: #567047;
    }

    .type-admin {
      background: rgba(226, 233, 244, 0.94);
      color: #53667f;
    }

    .row-action {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      min-height: 38px;
      min-width: 56px;
      padding: 0 10px;
      border-radius: 14px;
      border: 1px solid rgba(97, 114, 84, 0.16);
      background: rgba(255, 255, 255, 0.94);
      color: var(--text-main);
      font-size: 12px;
      font-weight: 700;
      white-space: nowrap;
    }

    .bottom-grid {
      display: grid;
      grid-template-columns: repeat(2, minmax(0, 1fr));
      gap: 24px;
    }

    .timeline-list {
      display: grid;
      gap: 14px;
    }

    .timeline-item {
      padding-bottom: 14px;
      border-bottom: 1px solid var(--line);
    }

    .timeline-item:last-child {
      padding-bottom: 0;
      border-bottom: 0;
    }

    .timeline-item strong {
      display: block;
      margin-bottom: 5px;
      color: var(--text-main);
      font-size: 15px;
    }

    .timeline-item p {
      margin: 0;
      color: var(--text-soft);
      font-size: 13px;
      line-height: 1.8;
    }

    @media (max-width: 1380px) {
      .summary-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
      }

      .filter-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
      }

      .member-columns,
      .member-row {
        grid-template-columns: minmax(220px, 2fr) minmax(74px, 0.8fr) minmax(74px, 0.8fr) minmax(96px, 0.95fr) minmax(112px, 1fr) 64px;
      }
    }

    @media (max-width: 1240px) {
      .member-columns,
      .member-row {
        grid-template-columns: minmax(200px, 2fr) minmax(70px, 0.78fr) minmax(70px, 0.78fr) minmax(88px, 0.9fr) minmax(100px, 0.95fr) 60px;
      }
    }

    @media (max-width: 1180px) {
      .member-admin-layout,
      .member-hero,
      .bottom-grid {
        grid-template-columns: 1fr;
      }
    }

    @media (max-width: 980px) {
      .search-line {
        grid-template-columns: 1fr;
      }

      .member-columns {
        display: none;
      }

      .member-row {
        grid-template-columns: 1fr;
        gap: 12px;
      }

      .member-cell {
        padding-top: 10px;
        border-top: 1px solid rgba(97, 114, 84, 0.08);
      }

      .summary-grid,
      .filter-grid,
      .bottom-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
  <script>
  	function memberSearch() {
  		let memberType = $("#memberType").val();
  		
  		$.ajax({
  			type : "get",
  			url : "${ctp}/admin/memberSearch",
  			data : {memberType : memberType},
  			success : (vos) => {
  				let str = "";
	  			
	  			for(let i=0; i<vos.length; i++) {
	  				str += '<div class="member-row">';
	  				str += '  <div class="member-main">';
	  				str += '    <div class="member-main-top">';
	  				str += '      <strong>' + vos[i].nickName + '</strong>';
	  				str += '    </div>';
	  				str += '    <div class="member-meta">' + vos[i].mid + '</div>';
	  				str += '  </div>';
	  				
	  				str += '  <div class="member-cell">';
	  				if(vos[i].memberType == '일반') {
	  					str += '<span class="status-pill type-general">일반회원</span>';
	  				}
	  				else if(vos[i].memberType == '대표') {
	  					str += '<span class="status-pill type-owner">대표회원</span>';
	  				}
	  				str += '  </div>';
	  				
	  				str += '  <div class="member-cell">';
	  				if(vos[i].userDel == 'NO') {
	  					str += '<span class="status-pill status-live">정상</span>';
	  				}
	  				else if(vos[i].userDel == 'OK') {
	  					str += '<span class="status-pill status-danger">탈퇴 진행</span>';
	  				}
	  				else if(vos[i].userDel == 'WT') {
	  					str += '<span class="status-pill status-wait">승인 대기</span>';
	  				}
	  				str += '  </div>';
	  				
	  				str += '  <div class="member-cell">';
	  				str += '    <strong>방문 ' + vos[i].visitCnt + '회</strong>';
	  				str += '  </div>';
	  				
	  				str += '  <div class="member-cell">';
	  				str += '    <strong>' + vos[i].lastDate + '</strong>';
	  				str += '  </div>';
	  				
	  				str += '  <div class="member-cell">';
	  				str += '    <button type="button" class="row-action">선택</button>';
	  				str += '  </div>';
	  				
	  				str += '</div>';
	  			}
	  			
	  			$("#memberRowList").html(str);
	  		},
	  		error : function() {
	  			alert("전송오류!");
  			}
  		});
  	}
  </script>
</head>
<body class="home-page-v2 theme-cafe-home">
  <div class="home-shell">
    <jsp:include page="/WEB-INF/views/include/header.jsp" />

    <main class="sub-page-main">
      <div class="inner">
        <div class="member-admin-layout">
          <aside>
            <jsp:include page="/WEB-INF/views/admin/adminSidebar.jsp" />
          </aside>

          <div class="member-admin-main">
            <section class="page-hero member-hero">
              <div class="member-hero-copy">
                <p class="page-kicker">Member Operations</p>
                <h1 class="page-title">회원목록을 중심으로 보는<br>관리자 회원관리 화면</h1>
                <p class="page-desc">상세 패널은 뺐고, 목록 자체에서 상태와 우선 처리 여부를 읽기 쉽게 정리했습니다. 클릭 시 상세 화면이나 모달을 붙이기 좋은 구조로 다시 맞췄습니다.</p>
              </div>

              <aside class="member-hero-side">
                <h3>오늘 확인할 상태</h3>
                <p>목록에서 먼저 찾아봐야 하는 예외 상태만 짧게 보여줍니다.</p>
                <div class="timeline-list" style="margin-top:14px;">
                  <div class="timeline-item">
                    <strong>탈퇴 진행 3명</strong>
                    <p>탈퇴 전에 후기와 댓글 흔적이 남아 있는지 확인 필요</p>
                  </div>
                  <div class="timeline-item">
                    <strong>대표 승인 대기 2명</strong>
                    <p>회원 상태와 등록 카페 상태를 같이 확인해야 함</p>
                  </div>
                  <div class="timeline-item">
                    <strong>휴면 후보 5명</strong>
                    <p>최근 90일 미접속 회원 대상</p>
                  </div>
                </div>
              </aside>
            </section>

            <section class="summary-grid">
              <article class="summary-card">
                <strong>전체 회원</strong>
                <span>${memTotalCount}</span>
                <p>현재 관리 중인 전체 계정 수</p>
              </article>
              <article class="summary-card">
                <strong>일반회원</strong>
                <span>${memGeneralCount}</span>
                <p>카페 탐색과 커뮤니티 활동 중심 사용자</p>
              </article>
              <article class="summary-card">
                <strong>대표회원</strong>
                <span>${memOwnerCount}</span>
                <p>카페 등록 및 승인 흐름 연결 계정</p>
              </article>
              <article class="summary-card">
                <strong>예외 상태</strong>
                <span>${memIssueCount}</span>
                <p>탈퇴 진행, 승인 대기, 휴면 후보 합계</p>
              </article>
            </section>

            <section class="page-card filter-card">
              <div class="filter-head">
                <div>
                  <h2 class="section-title-sm">검색과 분류</h2>
                  <p class="text-muted">회원구분과 상태 중심으로 좁힌 뒤, 필요한 대상을 바로 찾는 용도입니다.</p>
                </div>
              </div>
					
						<form method="get" action="${ctp}/admin/memberManage">
              <div class="filter-grid">
                <div class="form-row">
                  <label>회원구분</label>
                  <select name="memberType" id="memberType">
                    <option value="" ${memberType == '' ? 'selected' : ''}>전체</option>
                    <option value="일반" ${memberType == '일반' ? 'selected' : ''}>일반</option>
                    <option value="대표" ${memberType == '대표' ? 'selected' : ''}>대표</option>
                  </select>
                </div>
                <div class="form-row">
                  <label>활동상태</label>
                  <select>
                    <option>전체</option>
                    <option>정상</option>
                    <option>탈퇴 진행</option>
                    <option>승인 대기</option>
                  </select>
                </div>
                <div class="form-row">
                  <label>정렬기준</label>
                  <select>
                    <option>최근 접속순</option>
                    <option>가입일 최신순</option>
                    <option>리뷰 많은 순</option>
                    <option>방문 수 높은 순</option>
                  </select>
                </div>
<!--                 <div class="form-row">
                  <label>조회기간</label>
                  <select>
                    <option>오늘</option>
                    <option>최근 7일</option>
                    <option>최근 30일</option>
                    <option>최근 90일</option>
                  </select>
                </div> -->
              </div>

              <div class="search-line">
                <div class="form-row">
                  <label>검색조건</label>
                  <select>
                    <option>닉네임</option>
                    <option>아이디</option>
                    <option>이름</option>
                  </select>
                </div>
                <div class="form-row">
                  <label>검색어</label>
                  <input type="text" placeholder="예: ilovecoffee / 김커피 / 분좋카러버">
                </div>
                <div class="form-row">
                  <label>&nbsp;</label>
                  <button type="button" class="button-soft" onclick="memberSearch()">회원 검색</button>
                </div>
              </div>
            </form>
            </section>

            <section class="list-stage">
              <div class="list-notice">
                회원상세는 이 목록에서 특정 회원을 클릭했을 때 띄우는 방식으로 연결하면 됩니다. 지금 화면은 목록 가독성과 상태 파악에 집중한 구조입니다.
              </div>

              <article class="member-list-card">
                <div class="block-head">
                  <div>
                    <h2 class="section-title-sm">회원 목록</h2>
                    <p>한 줄에서 회원 기본 정보, 회원구분, 상태, 활동 요약, 최근 접속을 읽을 수 있게 구성했습니다.</p>
                  </div>
                  <div class="filter-chip-row">
                    <span class="filter-chip">현재 페이지 1 / 5</span>
                  </div>
                </div>

                <div class="member-columns">
                  <span>회원 정보</span>
                  <span>회원구분</span>
                  <span>상태</span>
                  <span>활동 요약</span>
                  <span>최근 접속</span>
                  <span>보기</span>
                </div>

              <div class="member-row-list" id="memberRowList">
							  <c:forEach var="vo" items="${vos}">
							    <div class="member-row">
							      <div class="member-main">
							        <div class="member-main-top">
							          <strong>${vo.nickName}</strong>
							          <%-- <span class="member-id">${vo.mid}</span> --%>
							        </div>
							        <div class="member-meta">
							          ${vo.mid}
							        </div>
							      </div>
						
						      <div class="member-cell">
						        <c:if test="${vo.mid == 'admin'}">
						          <span class="status-pill type-admin">관리자</span>
						        </c:if>
						        <c:if test="${vo.mid != 'admin' && vo.memberType == '일반'}">
						          <span class="status-pill type-general">일반회원</span>
						        </c:if>
						        <c:if test="${vo.mid != 'admin' && vo.memberType == '대표'}">
						          <span class="status-pill type-owner">대표회원</span>
						        </c:if>
						      </div>
						
						      <div class="member-cell">
						        <c:if test="${vo.userDel == 'NO'}">
						          <span class="status-pill status-live">정상</span>
						        </c:if>
						        <c:if test="${vo.userDel == 'OK'}">
						          <span class="status-pill status-danger">탈퇴 진행</span>
						        </c:if>
						        <c:if test="${vo.userDel == 'WT'}">
						          <span class="status-pill status-wait">승인 대기</span>
						        </c:if>
						      </div>
						
						      <div class="member-cell">
						        <strong>방문 ${vo.visitCnt}회</strong>
						      </div>
						
						      <div class="member-cell">
						        <strong>${vo.lastDate}</strong>
						        가입 ${vo.startDate}
						      </div>
						
						      <div class="member-cell">
						        <button type="button" class="row-action">선택</button>
						      </div>
						    </div>
						  </c:forEach>
						</div>
						</article>
						</section>
						
						<section class="bottom-grid">
              <article class="member-extra-card">
                <div class="block-head">
                  <div>
                    <h2 class="section-title-sm">즉시 처리 대상</h2>
                    <p>목록을 보며 바로 체크해야 하는 회원만 따로 정리한 영역입니다.</p>
                  </div>
                </div>
                <div class="timeline-list">
                  <div class="timeline-item">
                    <strong>quiet_window</strong>
                    <p>탈퇴 진행 상태이며 작성 리뷰 2건이 남아 있어 탈퇴 후 노출 정책을 함께 확인해야 합니다.</p>
                  </div>
                  <div class="timeline-item">
                    <strong>cafe_note</strong>
                    <p>대표회원 계정이고 등록 카페 1건이 승인 대기 상태라 회원 상태와 카페 상태를 같이 확인해야 합니다.</p>
                  </div>
                  <div class="timeline-item">
                    <strong>morning_bean</strong>
                    <p>최근 90일 미접속으로 휴면 후보입니다. 알림 정책이 있다면 우선 대상입니다.</p>
                  </div>
                </div>
              </article>

              <article class="member-extra-card">
                <div class="block-head">
                  <div>
                    <h2 class="section-title-sm">업무 메모</h2>
                    <p>회원관리에서 실제로 같이 챙기면 좋은 운영 포인트만 남겼습니다.</p>
                  </div>
                </div>
                <div class="timeline-list">
                  <div class="timeline-item">
                    <strong>대표회원은 카페 승인과 함께 보기</strong>
                    <p>회원구분만 확인하면 놓치는 정보가 많아서 등록 카페 상태까지 한 번에 보는 흐름이 필요합니다.</p>
                  </div>
                  <div class="timeline-item">
                    <strong>탈퇴 진행 회원은 흔적 데이터 확인</strong>
                    <p>리뷰, 댓글, 커뮤니티 게시글이 남아 있으면 삭제 범위나 비노출 정책 기준이 먼저 정리되어야 합니다.</p>
                  </div>
                  <div class="timeline-item">
                    <strong>관리자 판단은 로그로 남기기</strong>
                    <p>정지, 반려, 승인 같은 처리 이력은 추후 관리자로그 화면과 연결되면 운영 추적이 쉬워집니다.</p>
                  </div>
                </div>
              </article>
            </section>
          </div>
        </div>
      </div>
    </main>

    <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
