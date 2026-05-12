<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 카페등록</title>
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
        <p class="page-kicker">Cafe Input</p>
        <h1 class="page-title">테마카페 등록 폼</h1>
        <p class="page-desc">파일 업로드, 상태 관리, 관리자 승인 흐름까지 고려한 입력 화면 레이아웃입니다.</p>
      </section>

      <section class="page-card">
        <h2 class="section-title-sm">기본 정보</h2>
        <form onsubmit="return false;">
          <div class="form-grid-2">
            <div class="form-row">
              <label>카페명</label>
              <input type="text" placeholder="카페명을 입력하세요">
            </div>
            <div class="form-row">
              <label>지역</label>
              <input type="text" placeholder="예: 성안길">
            </div>
            <div class="form-row">
              <label>대표 테마</label>
              <select><option>감성카페</option><option>디저트</option><option>브런치</option><option>작업형</option></select>
            </div>
            <div class="form-row">
              <label>운영 상태</label>
              <select><option>운영중</option><option>점검중</option><option>승인대기</option></select>
            </div>
            <div class="form-row">
              <label>오픈 시간</label>
              <input type="time">
            </div>
            <div class="form-row">
              <label>마감 시간</label>
              <input type="time">
            </div>
          </div>

          <div class="form-row" style="margin-top:16px;">
            <label>한줄 소개</label>
            <input type="text" placeholder="카페의 핵심 분위기를 한 줄로 적어보세요">
          </div>

          <div class="form-row" style="margin-top:16px;">
            <label>상세 설명</label>
            <textarea placeholder="메뉴, 좌석 분위기, 추천 포인트를 자유롭게 입력합니다."></textarea>
          </div>

          <div class="page-grid-2" style="margin-top:24px;">
            <div class="upload-box">대표 이미지 / 첨부 파일 업로드 영역</div>
            <div class="map-box">주소 검색 및 지도 미리보기 영역</div>
          </div>

          <div class="button-row">
            <button type="submit" class="button-soft">등록하기</button>
            <a href="${ctp}/cafe/cafeList" class="button-line">목록으로</a>
          </div>
        </form>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
