<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Checkout | Grocery Mart</title>

    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/assets/favicon/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/favicon/favicon-16x16.png" />
    <link rel="manifest" href="${pageContext.request.contextPath}/assets/favicon/site.webmanifest" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wdth,wght@0,62.5..100,100..900;1,62.5..100,100..900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap"
      rel="stylesheet"
    />

    <!-- Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />

    <!-- Scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/scripts.js"></script>
  </head>
  <body>
    <!-- Header -->
    <header id="header" class="header"></header>
    <script>
      load("#header", "${pageContext.request.contextPath}/templates/header-logined.jsp");
    </script>

    <!-- MAIN -->
    <main class="checkout-page">
      <div class="container">
        <!-- Search bar -->
        <div class="checkout-container">
          <div class="search-bar d-none d-md-flex">
            <input type="text" name="" id="" placeholder="Search for item" class="search-bar__input" />
            <button class="search-bar__submit">
              <img src="${pageContext.request.contextPath}/assets/icons/search.svg" alt="" class="search-bar__icon icon" />
            </button>
          </div>
        </div>

        <!-- Breadcrumbs -->
        <div class="checkout-container">
          <ul class="breadcrumbs checkout-page__breadcrumbs">
            <li>
              <a href="${pageContext.request.contextPath}/index-logined.html" class="breadcrumbs__link">
                Trang chủ
                <img src="${pageContext.request.contextPath}/assets/icons/arrow-right.svg" alt="" />
              </a>
            </li>
            <li>
              <a href="#!" class="breadcrumbs__link breadcrumbs__link--current">Thanh toán</a>
            </li>
          </ul>
        </div>

        <!-- Checkout content -->
        <div class="checkout-container">
          <div class="row gy-xl-3">
            <div class="col-8 col-xl-12">
              <div class="cart-info">
                <div class="cart-info__list">
                  <!-- Cart item 1 -->
                  <article class="cart-item">
                    <a href="${pageContext.request.contextPath}/product-detail.html">
                      <img src="${pageContext.request.contextPath}/assets/img/product/item-1.png" alt="" class="cart-item__thumb" />
                    </a>
                    <div class="cart-item__content">
                      <div class="cart-item__content-left">
                        <h3 class="cart-item__title">
                          <a href="${pageContext.request.contextPath}/product-detail.html"> Coffee Beans - Espresso Arabica and Robusta Beans </a>
                        </h3>
                        <p class="cart-item__price-wrap">$47.00 | <span class="cart-item__status">In Stock</span></p>
                        <div class="cart-item__ctrl cart-item__ctrl--md-block">
                          <select class="cart-item__input">
                            <option value="${game.language}">${game.language}</option>  
                          </select>
                          <div class="cart-item__input">
                            <button class="cart-item__input-btn">
                              <img class="icon" src="${pageContext.request.contextPath}/assets/icons/minus.svg" alt="" />
                            </button>
                            <span>1</span>
                            <button class="cart-item__input-btn">
                              <img class="icon" src="${pageContext.request.contextPath}/assets/icons/plus.svg" alt="" />
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="cart-item__content-right">
                        <p class="cart-item__total-price">$47.00</p>
                        <div class="cart-item__ctrl">
                          <button class="cart-item__ctrl-btn js-toggle" toggle-target="#delete-confirm">
                            <img src="${pageContext.request.contextPath}/assets/icons/trash.svg" alt="" />
                            Xóa
                          </button>
                        </div>
                      </div>
                    </div>
                  </article>
                </div>
                <div class="cart-info__bottom d-md-none">
                  <div class="row">
                    <div class="col-8 col-xxl-7">
                      <div class="cart-info__continue">
                        <a href="${pageContext.request.contextPath}/" class="cart-info__continue-link">
                          <img class="cart-info__continue-icon icon" src="${pageContext.request.contextPath}/assets/icons/arrow-down-2.svg" alt="" />
                          Tiếp tục mua sắm
                        </a>
                      </div>
                    </div>
                    <div class="col-4 col-xxl-5">
                      <div class="cart-info__row">
                        <span>Tổng ( tạm tính ):</span>
                        <span>$191.65</span>
                      </div>
                      <div class="cart-info__row">
                        <span>Phí vận chuyển:</span>
                        <span>${carts.shippingFee}</span>
                      </div>
                      <div class="cart-info__separate"></div>
                      <div class="cart-info__row cart-info__row--bold">
                        <span>Tổng:</span>
                        <span>${procedure}</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-4 col-xl-12">
              <div class="cart-info">
                <div class="cart-info__row">
                  <span>Số lượng <span class="cart-info__sub-label">( sản phẩm )</span></span>
                  <span>3</span>
                </div>
                <div class="cart-info__row">
                  <span>Tổng tiền <span class="cart-info__sub-label">( tạm tính )</span></span>
                  <span>$191.65</span>
                </div>
                <div class="cart-info__row">
                  <span>Phí vận chuyển</span>
                  <span>${carts.shippingfee}</span>
                </div>
                <div class="cart-info__separate"></div>
                <div class="cart-info__row">
                  <span>Tổng</span>
                  <span>${procedure}</span>
                </div>
                <a href="${pageContext.request.contextPath}/shipping.html" class="cart-info__next-btn btn btn--primary btn--rounded">
                  Tiếp tục thanh toán
                </a>
              </div>
              <div class="cart-info">
                <a href="#!">
                  <article class="gift-item">
                    <div class="gift-item__icon-wrap">
                      <img src="${pageContext.request.contextPath}/assets/icons/gift.svg" alt="" class="gift-item__icon" />
                    </div>
                    <div class="gift-item__content">
                      <h3 class="gift-item__title">Send this order as a gift.</h3>
                      <p class="gift-item__desc">Available items will be shipped to your gift recipient.</p>
                    </div>
                  </article>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <footer id="footer" class="footer"></footer>
    <script>
      load("#footer", "${pageContext.request.contextPath}/templates/footer.jsp");
    </script>

    <!-- Modal: confirm remove shopping cart item -->
    <div id="delete-confirm" class="modal modal--small hide">
      <div class="modal__content">
        <p class="modal__text"></p>
        <div class="modal__bottom">
          <button class="btn btn--small btn--outline modal__btn js-toggle" toggle-target="#delete-confirm">
            Hủy
          </button>
          <button
            class="btn btn--small btn--danger btn--primary modal__btn btn--no-margin js-toggle"
            toggle-target="#delete-confirm"
          >
            Xóa
          </button>
        </div>
      </div>
      <div class="modal__overlay js-toggle" toggle-target="#delete-confirm"></div>
    </div>
  </body>
</html>
