<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 게시글상세</title>
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
      <section class="page-card">
        <p class="page-kicker">Community Post</p>
        <h1 class="page-title">성안길 디저트 카페 추천합니다</h1>
        <div class="comment-meta" style="margin-top:14px;">
          <span>작성자 핑크라떼</span>
          <span>등록일 2026-05-03</span>
          <span>조회수 51</span>
          <span>좋아요 9</span>
        </div>
        <p class="page-desc">조용히 수다 떨기 좋고 딸기 디저트가 예쁜 카페들을 모아봤어요. 추후에는 에디터 본문, 첨부파일, 좋아요 Ajax, 댓글 CRUD가 이 화면에 연결됩니다.</p>

        <div class="image-placeholder" style="margin-top:24px;"></div>

        <div class="button-row">
          <a href="#" class="button-soft">좋아요</a>
          <a href="#" class="button-line">수정</a>
          <a href="${ctp}/community/communityList" class="button-line">목록</a>
        </div>
      </section>

      <section class="comment-box" style="margin-top:24px;">
        <h2 class="section-title-sm">댓글</h2>
        <div class="comment-item">
          <div class="comment-meta"><span>카페메모</span><span>2026-05-03</span></div>
          <p class="text-muted">사진 톤이 예쁠 것 같은 곳이네요. 주말엔 많이 붐빌까요?</p>
        </div>
        <div class="comment-item">
          <div class="comment-meta"><span>디저트헌터</span><span>2026-05-04</span></div>
          <p class="text-muted">케이크 좋아하면 꼭 들러볼 만한 곳이에요.</p>
        </div>
        <div class="form-row" style="margin-top:18px;">
          <label>댓글 입력</label>
          <textarea placeholder="댓글을 입력하세요."></textarea>
        </div>
        <div class="button-row">
          <button type="button" class="button-soft">댓글 등록</button>
        </div>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
