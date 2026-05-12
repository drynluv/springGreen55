<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
  .hero-stage {
    position: relative;
    min-height: 380px;
    padding: 52px 92px 0;
    background:
      linear-gradient(90deg, rgba(251, 248, 241, 0.98) 0%, rgba(247, 244, 235, 0.82) 22%, rgba(247, 243, 234, 0.18) 45%, rgba(247, 243, 234, 0.02) 100%),
      url("https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=1800&q=80") center center/cover no-repeat;
  }

  .hero-stage::before {
    content: "";
    position: absolute;
    left: 0;
    top: 26px;
    bottom: 0;
    width: 150px;
    opacity: 0.4;
    background:
      radial-gradient(circle at 38px 36px, rgba(122, 156, 98, 0.18), transparent 40px),
      radial-gradient(circle at 96px 126px, rgba(122, 156, 98, 0.18), transparent 46px),
      radial-gradient(circle at 42px 250px, rgba(122, 156, 98, 0.16), transparent 54px);
    pointer-events: none;
  }

  .hero-grid {
    position: relative;
    z-index: 1;
    display: grid;
    grid-template-columns: 320px 1fr;
    gap: 24px;
    align-items: start;
  }

  .hero-copy {
    padding-top: 12px;
  }

  .hero-copy h1 {
    margin: 0;
    font-size: 63px;
    line-height: 1.13;
    font-weight: 800;
    letter-spacing: -0.055em;
    color: #2f4d28;
  }

  .hero-copy p {
    margin: 24px 0 0;
    font-size: 16px;
    line-height: 1.78;
    color: #5e6559;
    letter-spacing: -0.02em;
  }

  .hero-script {
    margin-top: 34px;
    font-family: "Allura", cursive;
    font-size: 52px;
    line-height: 1;
    color: #6b8b59;
  }

  .search-wrap {
    display: flex;
    justify-content: center;
    padding-top: 160px;
  }

  .search-card {
    width: 664px;
    padding: 18px 20px 20px;
    border-radius: 28px;
    background: rgba(255, 253, 248, 0.97);
    border: 1px solid rgba(232, 223, 208, 0.96);
    box-shadow: 0 22px 48px rgba(98, 95, 72, 0.16);
  }

  .search-tabs {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 0;
    border-radius: 18px;
    overflow: hidden;
    border: 1px solid rgba(229, 220, 206, 0.96);
    background: #fffdf9;
  }

  .search-tab {
    position: relative;
    height: 64px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    font-size: 16px;
    font-weight: 700;
    color: #333732;
    background: #fffdf9;
  }

  .search-tab + .search-tab::before {
    content: "";
    position: absolute;
    left: 0;
    top: 16px;
    bottom: 16px;
    width: 1px;
    background: rgba(230, 220, 207, 0.98);
  }

  .search-tab.active {
    margin: 8px;
    height: 48px;
    border-radius: 14px;
    background: linear-gradient(180deg, #708d5a, #587446);
    color: #fff;
    box-shadow: 0 12px 20px rgba(88, 114, 69, 0.22);
  }

  .search-tab.active::before {
    display: none;
  }

  .search-tab i {
    font-size: 17px;
  }

  .search-form {
    display: grid;
    grid-template-columns: 1fr 132px;
    margin-top: 16px;
    height: 50px;
    border-radius: 18px;
    overflow: hidden;
    border: 1px solid rgba(224, 216, 202, 0.96);
    background: #fff;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.9);
  }

  .search-form input {
    border: 0;
    padding: 0 20px;
    background: transparent;
    font-size: 15px;
    color: #2f342d;
    outline: 0;
  }

  .search-form input::placeholder {
    color: #9a9d96;
  }

  .search-form button {
    border: 0;
    background: linear-gradient(180deg, #6f8b58, #567245);
    color: #fff;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    font-size: 16px;
    font-weight: 700;
    cursor: pointer;
  }

  .search-chips {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 16px;
  }

  .search-chip {
    min-height: 30px;
    padding: 0 14px;
    border-radius: 999px;
    border: 1px solid rgba(230, 221, 207, 0.98);
    background: rgba(255, 253, 250, 0.96);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-size: 13px;
    color: #6f746b;
  }

  .home-content {
    padding: 36px 80px 0;
    background:
      radial-gradient(circle at 20% 4%, rgba(232, 239, 224, 0.6), transparent 18%),
      linear-gradient(180deg, #f7f4ed 0%, #f6f1ea 100%);
  }

  .content-grid {
    display: grid;
    grid-template-columns: 280px 1fr 300px;
    gap: 18px;
    align-items: start;
  }

  .owner-card {
    overflow: hidden;
    min-height: 372px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    background: linear-gradient(180deg, rgba(92, 118, 71, 0.96), rgba(78, 101, 61, 0.95));
    color: #fff;
  }

  .owner-top {
    padding: 30px 24px 0;
  }

  .owner-top h3 {
    margin: 0 0 18px;
    font-size: 18px;
    font-weight: 800;
    letter-spacing: -0.03em;
  }

  .owner-top p {
    margin: 0;
    font-size: 15px;
    line-height: 1.8;
    color: rgba(255, 255, 255, 0.85);
  }

  .owner-top a {
    margin-top: 22px;
    min-width: 140px;
    height: 46px;
    padding: 0 18px;
    border-radius: 999px;
    border: 1px solid rgba(231, 238, 223, 0.35);
    background: rgba(255, 255, 255, 0.08);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    font-size: 15px;
    font-weight: 700;
  }

  .owner-bottom {
    position: relative;
    min-height: 194px;
    background:
      linear-gradient(180deg, rgba(21, 31, 18, 0.02), rgba(15, 22, 12, 0.28)),
      url("https://images.unsplash.com/photo-1521017432531-fbd92d768814?auto=format&fit=crop&w=900&q=80") center/cover no-repeat;
  }

  .owner-bottom::after {
    content: "";
    position: absolute;
    right: 16px;
    top: -28px;
    width: 110px;
    height: 110px;
    border-radius: 50%;
    border: 1px solid rgba(245, 242, 231, 0.48);
    box-shadow: 0 0 0 10px rgba(255, 255, 255, 0.06);
    background: rgba(70, 97, 52, 0.48);
    backdrop-filter: blur(4px);
  }

  .owner-seal {
    position: absolute;
    right: 16px;
    top: -28px;
    width: 110px;
    height: 110px;
    border-radius: 50%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 4px;
    text-align: center;
    color: rgba(255, 255, 255, 0.92);
    font-size: 12px;
    font-weight: 700;
    letter-spacing: 0.02em;
    z-index: 1;
  }

  .owner-seal i {
    font-size: 22px;
  }

  .center-stack,
  .right-stack {
    display: grid;
    gap: 18px;
  }

  .theme-board,
  .featured-board,
  .notice-board,
  .shortcut-board {
    padding: 22px;
  }

  .theme-icons {
    display: grid;
    grid-template-columns: repeat(8, 1fr);
    gap: 12px;
  }

  .theme-item {
    min-height: 84px;
    border-radius: 16px;
    border: 1px solid rgba(231, 222, 209, 0.98);
    background: linear-gradient(180deg, #fffefb 0%, #fbf8f1 100%);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 10px;
    color: #3d413a;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.95);
  }

  .theme-item i {
    font-size: 28px;
    color: #2f3c28;
  }

  .theme-item span {
    font-size: 14px;
    font-weight: 600;
  }

  .featured-wrap {
    position: relative;
  }

  .featured-list {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 14px;
  }

  .featured-card {
    overflow: hidden;
    border-radius: 18px;
    border: 1px solid rgba(231, 222, 209, 0.98);
    background: #fffdf9;
    box-shadow: 0 10px 22px rgba(94, 92, 70, 0.1);
  }

  .featured-thumb {
    position: relative;
    height: 150px;
    background-size: cover;
    background-position: center;
  }

  .featured-like {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 28px;
    height: 28px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.94);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.12);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    color: #759060;
  }

  .featured-body {
    padding: 14px 14px 16px;
  }

  .featured-body strong {
    display: block;
    font-size: 18px;
    font-weight: 800;
    letter-spacing: -0.03em;
  }

  .featured-body span {
    display: block;
    margin-top: 8px;
    font-size: 13px;
    color: #83887d;
  }

  .featured-arrow {
    position: absolute;
    top: 50%;
    width: 30px;
    height: 30px;
    margin-top: -15px;
    border-radius: 50%;
    border: 1px solid rgba(224, 215, 201, 0.96);
    background: rgba(255, 255, 255, 0.96);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    color: #697061;
    box-shadow: 0 12px 18px rgba(96, 94, 74, 0.08);
  }

  .featured-arrow.prev {
    left: -40px;
  }

  .featured-arrow.next {
    right: -40px;
  }

  .featured-dots {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-top: 14px;
  }

  .featured-dots span {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: #ddd6ca;
  }

  .featured-dots span.active {
    background: #5f7c4d;
  }

  .notice-board {
    position: relative;
    min-height: 184px;
    overflow: hidden;
  }

  .notice-board::after {
    content: "";
    position: absolute;
    right: -4px;
    bottom: -6px;
    width: 112px;
    height: 80px;
    opacity: 0.26;
    background:
      radial-gradient(circle at 22px 46px, #8db07d 0, #8db07d 6px, transparent 7px),
      radial-gradient(circle at 58px 34px, #8db07d 0, #8db07d 5px, transparent 6px),
      linear-gradient(44deg, transparent 35%, #8db07d 36%, #8db07d 39%, transparent 40%),
      linear-gradient(-28deg, transparent 37%, #8db07d 38%, #8db07d 41%, transparent 42%);
  }

  .notice-list {
    margin: 0;
    padding: 0;
    list-style: none;
    display: grid;
    gap: 12px;
  }

  .notice-list li {
    display: grid;
    grid-template-columns: 1fr auto;
    gap: 12px;
    align-items: center;
    font-size: 14px;
    color: #4a4f46;
  }

  .notice-list span {
    color: #979c93;
  }

  .shortcut-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 12px;
  }

  .shortcut-item {
    min-height: 64px;
    border-radius: 16px;
    border: 1px solid rgba(231, 222, 209, 0.98);
    background: linear-gradient(180deg, #fffefb 0%, #fbf8f2 100%);
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    font-size: 15px;
    font-weight: 600;
    color: #43473f;
  }

  .shortcut-item i {
    font-size: 18px;
    color: #5b7449;
  }
</style>

<main>
  <section class="hero-stage">
    <div class="hero-grid">
      <div class="hero-copy">
        <h1>당신의 일상에<br>스며드는 카페</h1>
        <p>
          청주 곳곳의 감성 공간과<br>
          특별한 맛을 발견해보세요.
        </p>
        <div class="hero-script">Enjoy your cafe life</div>
      </div>

      <div class="search-wrap">
        <div class="search-card">
          <div class="search-tabs">
            <a href="${ctp}/cafe/cafeList" class="search-tab active"><i class="bi bi-geo-alt-fill"></i>동네별</a>
            <a href="${ctp}/cafe/cafeList" class="search-tab"><i class="bi bi-house-heart"></i>테마별</a>
            <a href="${ctp}/cafe/cafeList" class="search-tab"><i class="bi bi-cup-hot"></i>메뉴별</a>
            <a href="${ctp}/cafe/cafeList" class="search-tab"><i class="bi bi-brightness-high"></i>분위기별</a>
          </div>

          <form class="search-form" action="${ctp}/cafe/cafeList" method="get">
            <input type="text" name="searchString" placeholder="어디에서, 어떤 카페를 찾고 계신가요?">
            <button type="submit"><i class="bi bi-search"></i>검색하기</button>
          </form>

          <div class="search-chips">
            <span class="search-chip">인기 검색어</span>
            <span class="search-chip">#성안길</span>
            <span class="search-chip">#테라스</span>
            <span class="search-chip">#디저트맛집</span>
            <span class="search-chip">#반려동물동반</span>
            <span class="search-chip">#스터디카페</span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="home-content">
    <div class="content-grid">
      <article class="panel-card owner-card">
        <div class="owner-top">
          <h3>카페를 운영하시나요?</h3>
          <p>
            청주카페에 내 카페를 등록하고<br>
            더 많은 고객을 만나보세요.
          </p>
          <a href="${ctp}/cafe/cafeInput">카페 등록하기 <i class="bi bi-arrow-right"></i></a>
        </div>
        <div class="owner-bottom">
          <div class="owner-seal">
            <i class="bi bi-cup-hot"></i>
            <span>OWNER<br>REGISTRATION</span>
          </div>
        </div>
      </article>

      <div class="center-stack">
        <article class="panel-card theme-board">
          <div class="section-head">
            <h3>테마로 찾아보기</h3>
            <a href="${ctp}/cafe/cafeList">전체보기 <i class="bi bi-arrow-right"></i></a>
          </div>
          <div class="theme-icons">
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-cake2"></i><span>디저트</span></a>
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-cup-straw"></i><span>브런치</span></a>
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-shop"></i><span>루프탑</span></a>
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-bank"></i><span>한옥카페</span></a>
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-hearts"></i><span>반려동물</span></a>
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-journal-bookmark"></i><span>스터디</span></a>
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-emoji-smile"></i><span>아이와 함께</span></a>
            <a href="${ctp}/cafe/cafeList" class="theme-item"><i class="bi bi-image"></i><span>뷰맛집</span></a>
          </div>
        </article>

        <article class="panel-card featured-board">
          <div class="section-head">
            <h3>지금 주목할 만한 카페</h3>
            <a href="${ctp}/cafe/cafeList">더보기 <i class="bi bi-arrow-right"></i></a>
          </div>

          <div class="featured-wrap">
            <a href="${ctp}/cafe/cafeList" class="featured-arrow prev"><i class="bi bi-chevron-left"></i></a>
            <div class="featured-list">
              <a href="${ctp}/cafe/cafeContent" class="featured-card">
                <div class="featured-thumb" style="background-image:url('https://images.unsplash.com/photo-1525610553991-2bede1a236e2?auto=format&fit=crop&w=900&q=80');">
                  <span class="featured-like"><i class="bi bi-heart"></i></span>
                </div>
                <div class="featured-body">
                  <strong>포레스트 428</strong>
                  <span>상당구 · 브런치</span>
                </div>
              </a>

              <a href="${ctp}/cafe/cafeContent" class="featured-card">
                <div class="featured-thumb" style="background-image:url('https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=900&q=80');">
                  <span class="featured-like"><i class="bi bi-heart"></i></span>
                </div>
                <div class="featured-body">
                  <strong>카페 온더힐</strong>
                  <span>청원구 · 디저트</span>
                </div>
              </a>

              <a href="${ctp}/cafe/cafeContent" class="featured-card">
                <div class="featured-thumb" style="background-image:url('https://images.unsplash.com/photo-1463797221720-6b07e6426c24?auto=format&fit=crop&w=900&q=80');">
                  <span class="featured-like"><i class="bi bi-heart"></i></span>
                </div>
                <div class="featured-body">
                  <strong>모먼트 청주</strong>
                  <span>흥덕구 · 베이커리</span>
                </div>
              </a>

              <a href="${ctp}/cafe/cafeContent" class="featured-card">
                <div class="featured-thumb" style="background-image:url('https://images.unsplash.com/photo-1442512595331-e89e73853f31?auto=format&fit=crop&w=900&q=80');">
                  <span class="featured-like"><i class="bi bi-heart"></i></span>
                </div>
                <div class="featured-body">
                  <strong>리버사이드 커피</strong>
                  <span>서원구 · 루프탑</span>
                </div>
              </a>
            </div>
            <a href="${ctp}/cafe/cafeList" class="featured-arrow next"><i class="bi bi-chevron-right"></i></a>
          </div>

          <div class="featured-dots">
            <span class="active"></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
          </div>
        </article>
      </div>

      <div class="right-stack">
        <article class="panel-card notice-board">
          <div class="section-head">
            <h3>공지사항</h3>
            <a href="${ctp}/community/communityList">더보기 <i class="bi bi-arrow-right"></i></a>
          </div>
          <ul class="notice-list">
            <li><a href="${ctp}/community/communityContent">청주카페 리뷰 이벤트 안내</a><span>05.01</span></li>
            <li><a href="${ctp}/community/communityContent">카페 등록 시 혜택 안내</a><span>04.28</span></li>
            <li><a href="${ctp}/community/communityContent">가정의 달 추천 카페 모음</a><span>04.24</span></li>
            <li><a href="${ctp}/community/communityContent">사이트 이용 가이드</a><span>04.20</span></li>
          </ul>
        </article>

        <article class="panel-card shortcut-board">
          <div class="section-head">
            <h3>바로가기</h3>
          </div>
          <div class="shortcut-grid">
            <a href="${ctp}/community/communityList" class="shortcut-item"><i class="bi bi-chat-left-text"></i>카페 리뷰</a>
            <a href="${ctp}/community/communityList" class="shortcut-item"><i class="bi bi-gift"></i>이벤트</a>
            <a href="${ctp}/cafe/cafeInput" class="shortcut-item"><i class="bi bi-cup-hot"></i>카페 등록</a>
            <a href="${ctp}/cafe/cafeMap" class="shortcut-item"><i class="bi bi-geo-alt"></i>지도 보기</a>
          </div>
        </article>
      </div>
    </div>
  </section>
</main>
