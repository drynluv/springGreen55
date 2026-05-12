<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 커뮤니티</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;800&family=Cormorant+Garamond:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${ctp}/resources/css/themeCafe.css">
</head>
<body class="home-page-v2 theme-cafe-home">
  <div class="home-shell">
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <main class="sub-page-main">
    <div class="inner">
      <section class="page-hero">
        <p class="page-kicker">Community Board</p>
        <h1 class="page-title">공지와 후기, 추천글이 모이는<br>커뮤니티 보드</h1>
        <p class="page-desc">게시판 CRUD와 댓글, 조회수, 검색 기능이 들어갈 화면 구조를 먼저 배치했습니다.</p>
      </section>

      <section class="page-card">
        <div class="chip-list" style="margin-bottom:20px;">
          <span class="chip">전체</span>
          <span class="chip">공지사항</span>
          <span class="chip">카페후기</span>
          <span class="chip">추천코스</span>
          <span class="chip">자유게시판</span>
        </div>

        <div class="data-table-wrap">
          <table class="data-table">
            <thead>
              <tr>
                <th>No</th>
                <th>분류</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
                <th>좋아요</th>
                <th>등록일</th>
              </tr>
            </thead>
            <tbody>
              <tr><td>14</td><td>공지</td><td>5월 메인 시안 적용 안내</td><td>관리자</td><td>102</td><td>4</td><td>2026-05-04</td></tr>
              <tr><td>13</td><td>후기</td><td>성안길 디저트 카페 추천합니다</td><td>핑크라떼</td><td>51</td><td>9</td><td>2026-05-03</td></tr>
              <tr><td>12</td><td>추천</td><td>비 오는 날 가기 좋은 카페 코스</td><td>카페메모</td><td>37</td><td>6</td><td>2026-05-02</td></tr>
            </tbody>
          </table>
        </div>

        <div class="button-row">
          <a href="${ctp}/community/communityContent" class="button-soft">샘플 글 보기</a>
          <a href="#" class="button-line">글쓰기</a>
        </div>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
