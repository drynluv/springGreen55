<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 카페목록</title>
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
        <p class="page-kicker">Cafe List</p>
        <h1 class="page-title">분위기와 지역으로<br>청주 카페를 고르는 리스트</h1>
        <p class="page-desc">페이징, 검색, 좋아요, 상태값, 등록일 같은 실제 기능이 들어갈 위치를 먼저 뷰로 설계했습니다.</p>
      </section>

      <section class="page-card">
        <h2 class="section-title-sm">검색 필터</h2>
        <form class="filter-grid" onsubmit="return false;">
          <div class="form-row">
            <label>지역</label>
            <select><option>전체</option><option>성안길</option><option>율량동</option><option>복대동</option></select>
          </div>
          <div class="form-row">
            <label>테마</label>
            <select><option>전체</option><option>감성카페</option><option>디저트</option><option>브런치</option></select>
          </div>
          <div class="form-row">
            <label>검색어</label>
            <input type="text" placeholder="카페명 또는 키워드">
          </div>
          <div class="form-row">
            <label>정렬</label>
            <select><option>최신순</option><option>좋아요순</option><option>조회수순</option></select>
          </div>
        </form>
        <div class="button-row">
          <button type="button" class="button-soft">검색</button>
          <a href="${ctp}/cafe/cafeInput" class="button-line">카페 등록</a>
        </div>
      </section>

      <section class="page-card" style="margin-top:24px;">
        <h2 class="section-title-sm">카페 리스트</h2>
        <div class="data-table-wrap">
          <table class="data-table">
            <thead>
              <tr>
                <th>No</th>
                <th>카페명</th>
                <th>지역</th>
                <th>테마</th>
                <th>좋아요</th>
                <th>조회수</th>
                <th>상태</th>
                <th>등록일</th>
              </tr>
            </thead>
            <tbody>
              <tr><td>1</td><td>로지무드 카페</td><td>성안길</td><td>감성카페</td><td>24</td><td>132</td><td><span class="status status-live">운영중</span></td><td>2026-05-04</td></tr>
              <tr><td>2</td><td>카페 파우더룸</td><td>율량동</td><td>디저트</td><td>18</td><td>95</td><td><span class="status status-live">운영중</span></td><td>2026-05-01</td></tr>
              <tr><td>3</td><td>브런치 오브제</td><td>복대동</td><td>브런치</td><td>11</td><td>61</td><td><span class="status status-wait">점검중</span></td><td>2026-04-29</td></tr>
            </tbody>
          </table>
        </div>
        <div class="page-pagination">
          <span>&lt;</span><span class="current">1</span><a href="#">2</a><a href="#">3</a><span>&gt;</span>
        </div>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
