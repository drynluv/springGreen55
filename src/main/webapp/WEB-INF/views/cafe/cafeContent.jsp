<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 카페상세</title>
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
      <section class="split-hero">
        <article class="page-hero">
          <p class="page-kicker">Featured Cafe</p>
          <h1 class="page-title">로지무드 카페</h1>
          <p class="page-desc">핑크빛 디저트 쇼케이스와 조용한 좌석이 있는 성안길의 감성 카페. 추후 조회수, 좋아요, 리뷰수, 파일 첨부 데이터를 연결할 자리입니다.</p>
          <div class="chip-list" style="margin-top:20px;">
            <span class="chip">성안길</span>
            <span class="chip">감성카페</span>
            <span class="chip">디저트</span>
            <span class="chip">사진스팟</span>
          </div>
          <div class="button-row">
            <a href="#" class="button-soft">좋아요</a>
            <a href="${ctp}/cafe/cafeInput" class="button-line">수정하기</a>
          </div>
        </article>
        <div class="image-placeholder tall"></div>
      </section>

      <section class="page-grid-2">
        <article class="page-card">
          <h2 class="section-title-sm">카페 정보</h2>
          <dl class="key-value">
            <dt>주소</dt><dd>충북 청주시 상당구 예시로 10</dd>
            <dt>운영시간</dt><dd>11:00 - 22:00</dd>
            <dt>대표메뉴</dt><dd>딸기 쇼트케이크, 바닐라라떼</dd>
            <dt>주차</dt><dd>근처 공영주차장 이용</dd>
            <dt>한줄 메모</dt><dd>늦은 오후 채광이 특히 예쁜 공간</dd>
          </dl>
        </article>

        <aside class="page-card">
          <h2 class="section-title-sm">운영 메모</h2>
          <ul class="info-list">
            <li>메인 추천 후보로 유지</li>
            <li>디저트 사진 보강 예정</li>
            <li>지도 API 연동 자리 확보</li>
          </ul>
        </aside>
      </section>

      <section class="page-grid-2" style="margin-top:24px;">
        <article class="page-card">
          <h2 class="section-title-sm">위치 안내</h2>
          <div class="map-box">지도보기 기능은 추후 API 연동 예정입니다.</div>
        </article>

        <article class="page-card">
          <h2 class="section-title-sm">첨부 이미지</h2>
          <div class="upload-box">파일 업로드/썸네일 영역이 들어갈 자리입니다.</div>
        </article>
      </section>

      <section class="comment-box" style="margin-top:24px;">
        <h2 class="section-title-sm">방문 후기</h2>
        <div class="review-item">
          <div class="review-meta"><span>핑크라떼</span><span>2026-05-04</span><span>평점 5.0</span></div>
          <p class="text-muted">케이크가 예쁘고 좌석이 아늑해서 오래 머물기 좋았습니다.</p>
        </div>
        <div class="review-item">
          <div class="review-meta"><span>디저트헌터</span><span>2026-05-01</span><span>평점 4.5</span></div>
          <p class="text-muted">주말엔 조금 붐비지만 사진 찍기 좋은 분위기가 확실해요.</p>
        </div>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
