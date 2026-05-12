<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 마이페이지</title>
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
        <p class="page-kicker">My Cafe Archive</p>
        <h1 class="page-title">내 취향을 모아보는<br>마이페이지</h1>
        <p class="page-desc">회원 정보, 좋아요한 카페, 최근 리뷰를 한 화면에서 보는 구성입니다.</p>
      </section>

      <section class="profile-grid">
        <article class="profile-card">
          <h2 class="section-title-sm">회원 정보</h2>
          <dl class="key-value">
            <dt>아이디</dt><dd>vintage_love</dd>
            <dt>닉네임</dt><dd>핑크머랭</dd>
            <dt>등급</dt><dd>일반회원</dd>
            <dt>선호 지역</dt><dd>성안길 · 율량동</dd>
            <dt>선호 테마</dt><dd>디저트 / 감성카페 / 브런치</dd>
          </dl>
          <div class="button-row">
            <a href="#" class="button-soft">정보 수정</a>
            <a href="#" class="button-line">비밀번호 변경</a>
          </div>
        </article>

        <aside class="profile-card">
          <h2 class="section-title-sm">활동 요약</h2>
          <div class="dashboard-grid">
            <div class="stat-card"><strong>좋아요</strong><span>18</span></div>
            <div class="stat-card"><strong>리뷰</strong><span>7</span></div>
            <div class="stat-card"><strong>최근 검색</strong><span>4</span></div>
          </div>
        </aside>
      </section>

      <section class="page-grid-2" style="margin-top:24px;">
        <article class="page-card">
          <h2 class="section-title-sm">좋아요한 카페</h2>
          <ul class="plain-list">
            <li>로즈무드 카페 · 성안길 · 디저트</li>
            <li>카페 플라워룸 · 율량동 · 감성카페</li>
            <li>브런치 아틀리에 · 복대동 · 브런치</li>
          </ul>
        </article>

        <article class="page-card">
          <h2 class="section-title-sm">최근 작성 리뷰</h2>
          <div class="review-item">
            <div class="review-meta"><span>카페 플라워룸</span><span>2026-05-04</span></div>
            <p class="text-muted">케이크가 좋았고, 오후 채광이 예쁜 공간이었습니다.</p>
          </div>
          <div class="review-item">
            <div class="review-meta"><span>브런치 아틀리에</span><span>2026-04-29</span></div>
            <p class="text-muted">좌석 간격이 넓어서 작업하기 편안했습니다.</p>
          </div>
        </article>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
