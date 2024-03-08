<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment | Grocery Mart</title>

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
    <link rel="stylesheet" href="/assets/css/main.css" />

    <!-- Scripts -->
    <script src="/assets/js/scripts.js"></script>
  </head>
  <body>
    <!-- Header -->
    <header id="header" class="header"></header>
    <script>
      load("#header", "${pageContext.request.contextPath}/templates/header-logined.html");
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
              <a href="${pageContext.request.contextPath}/" class="breadcrumbs__link">
                Trang chủ
                <img src="${pageContext.request.contextPath}/assets/icons/arrow-right.svg" alt="" />
              </a>
            </li>
            <li>
              <a href="${pageContext.request.contextPath}/checkout.html" class="breadcrumbs__link">
                Thanh toán
                <img src="${pageContext.request.contextPath}/assets/icons/arrow-right.svg" alt="" />
              </a>
            </li>
            <li>
              <a href="${pageContext.request.contextPath}/shipping.html" class="breadcrumbs__link">
                Giao hàng
                <img src="${pageContext.request.contextPath}/assets/icons/arrow-right.svg" alt="" />
              </a>
            </li>
            <li>
              <a href="#!" class="breadcrumbs__link breadcrumbs__link--current">Phương thức thanh toán</a>
            </li>
          </ul>
        </div>

        <!-- Checkout content -->
        <div class="checkout-container">
          <div class="row gy-xl-3">
            <div class="col-8 col-xl-8 col-lg-12">
              <div class="cart-info">
                <div class="cart-info__top">
                  <h2 class="cart-info__heading cart-info__heading--lv2">
                    1. Shipping, arrives between Mon, May 16—Tue, May 24
                  </h2>
                  <a class="cart-info__edit-btn" href="${pageContext.request.contextPath}/shipping.html">
                    <img class="icon" src="${pageContext.request.contextPath}/assets/icons/edit.svg" alt="" />
                    Chỉnh sửa
                  </a>
                </div>

                <!-- Payment item 1 -->
                <article class="payment-item">
                  <div class="payment-item__info">
                    <h3 class="payment-item__title">Dat cc</h3>
                    <p class="payment-item__desc">nhà thổ hòa lạc</p>
                  </div>
                </article>

                <!-- Payment item 2 -->
                <article class="payment-item">
                  <div class="payment-item__info">
                    <h3 class="payment-item__title">Chi tiết sản phẩm</h3>
                    <p class="payment-item__desc">2 sản phẩm</p>
                  </div>
                  <a href="${pageContext.request.contextPath}/shipping.html" class="payment-item__detail">Xem chi tiết</a>
                </article>
              </div>

              <div class="cart-info">
                <h2 class="cart-info__heading cart-info__heading--lv2">2. Phương thức vận chuyển</h2>
                <div class="cart-info__separate"></div>
                <h3 class="cart-info__sub-heading">Phương thức vận chuyển </h3>

                <!-- Payment item 3 -->
                <label>
                  <article class="payment-item payment-item--pointer">
                    <img src="${pageContext.request.contextPath}/assets/img/payment/delivery-1.png" alt="" class="payment-item__thumb" />
                    <div class="payment-item__content">
                      <div class="payment-item__info">
                        <h3 class="payment-item__title">Fedex Delivery</h3>
                        <p class="payment-item__desc payment-item__desc--low">Giao hàng: 2-3 ngày làm việc</p>
                      </div>

                      <span class="cart-info__checkbox payment-item__checkbox">
                        <input
                          type="radio"
                          name="delivery-method"
                          checked
                          class="cart-info__checkbox-input payment-item__checkbox-input"
                        />
                        <span class="payment-item__cost">Miễn phí</span>
                      </span>
                    </div>
                  </article>
                </label>

                <!-- Payment item 4 -->
                <label>
                  <article class="payment-item payment-item--pointer">
                    <img src="${pageContext.request.contextPath}/assets/img/payment/delivery-2.png" alt="" class="payment-item__thumb" />
                    <div class="payment-item__content">
                      <div class="payment-item__info">
                        <h3 class="payment-item__title">DHL Delivery</h3>
                        <p class="payment-item__desc payment-item__desc--low">Giao hàng: 2-3 ngày làm việc</p>
                      </div>

                      <span class="cart-info__checkbox payment-item__checkbox">
                        <input
                          type="radio"
                          name="delivery-method"
                          class="cart-info__checkbox-input payment-item__checkbox-input"
                        />
                        <span class="payment-item__cost">$12.00</span>
                      </span>
                    </div>
                  </article>
                </label>
              </div>
            </div>
            <div class="col-4 col-xl-4 col-lg-12">
              <div class="cart-info">
                <div class="cart-info__row">
                  <span>Số lượng <span class="cart-info__sub-label">(sản phẩm)</span></span>
                  <span>3</span>
                </div>
                <div class="cart-info__row">
                  <span>Giá tiền <span class="cart-info__sub-label">(Tạm tính)</span></span>
                  <span>$191.65</span>
                </div>
                <div class="cart-info__row">
                  <span>Shipping</span>
                  <span>$10.00</span>
                </div>
                <div class="cart-info__separate"></div>
                <div class="cart-info__row">
                  <span>Tổng tiền</span>
                  <span>$201.65</span>
                </div>
                <a href="#!" class="cart-info__next-btn btn btn--primary btn--rounded">Trả ${total}</a>
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
      load("#footer", "${pageContext.request.contextPath}/templates/footer.html");
    </script>

  </body>
</html>
