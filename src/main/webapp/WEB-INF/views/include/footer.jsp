<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
  .home-footer {
    padding: 22px 80px 28px;
    background: linear-gradient(180deg, #f6f2eb 0%, #f3eee5 100%);
  }

  .footer-ribbon {
    position: relative;
    overflow: hidden;
    min-height: 116px;
    border-radius: 28px;
    border: 1px solid rgba(88, 109, 67, 0.78);
    background:
      linear-gradient(90deg, rgba(89, 116, 68, 0.97) 0%, rgba(95, 122, 72, 0.97) 66%, rgba(105, 130, 82, 0.95) 100%),
      url("https://images.unsplash.com/photo-1517701604599-bb29b565090c?auto=format&fit=crop&w=1200&q=80") right center/cover no-repeat;
    box-shadow: 0 18px 38px rgba(76, 96, 59, 0.2);
  }

  .footer-ribbon::after {
    content: "";
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    width: 320px;
    background:
      linear-gradient(90deg, rgba(107, 135, 83, 0) 0%, rgba(107, 135, 83, 0.34) 20%, rgba(107, 135, 83, 0.08) 100%),
      url("https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=900&q=80") right center/cover no-repeat;
    opacity: 0.95;
  }

  .footer-features {
    position: relative;
    z-index: 1;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 18px;
    min-height: 116px;
    padding: 22px 30px;
    padding-right: 278px;
    color: #fff;
  }

  .footer-feature {
    display: flex;
    align-items: center;
    gap: 16px;
  }

  .footer-icon {
    width: 50px;
    height: 50px;
    flex: 0 0 auto;
    border-radius: 50%;
    border: 1px solid rgba(241, 237, 225, 0.36);
    background: rgba(255, 255, 255, 0.12);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-size: 24px;
  }

  .footer-copy strong {
    display: block;
    font-size: 16px;
    font-weight: 800;
    letter-spacing: -0.03em;
  }

  .footer-copy span {
    display: block;
    margin-top: 7px;
    font-size: 14px;
    color: rgba(255, 255, 255, 0.86);
  }
</style>

<footer class="home-footer">
  <div class="footer-ribbon">
    <div class="footer-features">
      <div class="footer-feature">
        <span class="footer-icon"><i class="bi bi-trophy"></i></span>
        <span class="footer-copy">
          <strong>실시간 인기 카페</strong>
          <span>지금 가장 많이 검색된 카페</span>
        </span>
      </div>

      <div class="footer-feature">
        <span class="footer-icon"><i class="bi bi-card-checklist"></i></span>
        <span class="footer-copy">
          <strong>실제 방문 리뷰</strong>
          <span>솔직한 리뷰로 선택을 도와드려요</span>
        </span>
      </div>

      <div class="footer-feature">
        <span class="footer-icon"><i class="bi bi-sliders"></i></span>
        <span class="footer-copy">
          <strong>상세한 필터 검색</strong>
          <span>원하는 조건으로 정확하게 검색</span>
        </span>
      </div>

      <div class="footer-feature">
        <span class="footer-icon"><i class="bi bi-geo-alt"></i></span>
        <span class="footer-copy">
          <strong>지도 기반 검색</strong>
          <span>내 주변 카페를 지도에서 확인</span>
        </span>
      </div>
    </div>
  </div>
</footer>
