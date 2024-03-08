<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shipping | Grocery Mart</title>

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
              <a href="#!" class="breadcrumbs__link breadcrumbs__link--current">Giao hàng</a>
            </li>
          </ul>
        </div>

        <!-- Checkout content -->
        <div class="checkout-container">
          <div class="row gy-xl-3">
            <div class="col-8 col-xl-12">
              <div class="cart-info">
                <h1 class="cart-info__heading">1. Thời gian vận chuyển ước tính !${shipping.time}</h1>
                <div class="cart-info__separate"></div>

                <!-- Checkout address -->
                <div class="user-address">
                  <div class="user-address__top">
                    <div>
                      <h2 class="user-address__title">Địa chỉ giao hàng</h2>
                      <p class="user-address__desc">Chúng tôi sẽ giao hàng cho bạn ở where ?</p>
                    </div>
                    <button
                      class="user-address__btn btn btn--primary btn--rounded btn--small js-toggle"
                      toggle-target="#add-new-address"
                    >
                      <img src="${pageContext.request.contextPath}/assets/icons/plus.svg" alt="" />
                      Thêm địa chỉ mới
                    </button>
                  </div>
                  <div class="user-address__list">
                    <!-- Empty message -->
                    <!-- <p class="user-address__message">
                                            Not address yet.
                                            <a class="user-address__link js-toggle" href="#!" toggle-target="#add-new-address">Add a new address</a>
                                        </p> -->

                    <!-- Address card 1 -->
                    <article class="address-card">
                      <div class="address-card__left">
                        <div class="address-card__choose">
                          <label class="cart-info__checkbox">
                            <input type="radio" name="shipping-adress" checked class="cart-info__checkbox-input" />
                          </label>
                        </div>
                        <div class="address-card__info">
                          <h3 class="address-card__title">tien dat</h3>
                          <p class="address-card__desc">hihi.</p>
                          <ul class="address-card__list">
                            <li class="address-card__list-item">Giao hàng</li>
                            <li class="address-card__list-item">Vận chuyển từ kho hàng</li>
                          </ul>
                        </div>
                      </div>
                      <div class="address-card__right">
                        <div class="address-card__ctrl">
                          <button class="cart-info__edit-btn js-toggle" toggle-target="#add-new-address">
                            <img class="icon" src="${pageContext.request.contextPath}/assets/icons/edit.svg" alt="" />
                            Chỉnh sửa
                          </button>
                        </div>
                      </div>
                    </article>

                    <!-- Address card 2 -->
                    <article class="address-card">
                      <div class="address-card__left">
                        <div class="address-card__choose">
                          <label class="cart-info__checkbox">
                            <input type="radio" name="shipping-adress" class="cart-info__checkbox-input" />
                          </label>
                        </div>
                        <div class="address-card__info">
                          <h3 class="address-card__title">bao 123</h3>
                          <p class="address-card__desc">hhii</p>
                          <ul class="address-card__list">
                            <li class="address-card__list-item">Giao hàng</li>
                            <li class="address-card__list-item">Vận chuyển từ kho hàng</li>
                          </ul>
                        </div>
                      </div>
                      <div class="address-card__right">
                        <div class="address-card__ctrl">
                          <button class="cart-info__edit-btn js-toggle" toggle-target="#add-new-address">
                            <img class="icon" src="${pageContext.request.contextPath}/assets/icons/edit.svg" alt="" />
                            Chỉnh sửa
                          </button>
                        </div>
                      </div>
                    </article>
                  </div>
                </div>

                <div class="cart-info__separate"></div>

                <h2 class="cart-info__sub-heading">Chi tiết sản phẩm</h2>
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
                <a href="${pageContext.request.contextPath}/payment.html" class="cart-info__next-btn btn btn--primary btn--rounded">
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
      load("#footer", "${pageContext.request.contextPath}/templates/footer.html");
    </script>

    <!-- Modal: confirm remove shopping cart item -->
    <div id="delete-confirm" class="modal modal--small hide">
      <div class="modal__content">
        <p class="modal__text">Bạn có muốn xóa sản phẩm này khỏi giỏ hàng ?</p>
        <div class="modal__bottom">
          <button class="btn btn--small btn--outline modal__btn js-toggle" toggle-target="#delete-confirm">Hủy</button>
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

    <!-- Modal: address new shipping address -->
    <div id="add-new-address" class="modal hide" style="--content-width: 650px">
      <div class="modal__content">
        <form action="" class="form">
          <h2 class="modal__heading">Thay đổi địa chỉ giao hàng</h2>
          <div class="modal__body">
            <div class="form__row">
              <div class="form__group">
                <label for="name" class="form__label form__label--small">Họ và tên</label>
                <div class="form__text-input form__text-input--small">
                  <input
                    type="text"
                    name="name"
                    id="name"
                    placeholder="Nguyễn Thị Đạt"
                    class="form__input"
                    required
                    minlength="2"
                  />
                  <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                </div>
                <p class="form__error">Vui lòng nhập đầy đủ họ và tên</p>
              </div>
              <div class="form__group">
                <label for="phone" class="form__label form__label--small">Số điện thoại</label>
                <div class="form__text-input form__text-input--small">
                  <input
                    type="tel"
                    name="phone"
                    id="phone"
                    placeholder="000-1111-1111-1111"
                    class="form__input"
                    required
                    minlength="10"
                  />
                  <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                </div>
                <p class="form__error">Vui lòng nhập số điện thoại hợp lệ</p>
              </div>
            </div>
            <div class="form__group">
              <label for="address" class="form__label form__label--small">Địa chỉ</label>
              <div class="form__text-area">
                <textarea
                  name="address"
                  id="address"
                  placeholder="Khu vực và thành phố"
                  class="form__text-area-input"
                  required
                ></textarea>
                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
              </div>
              <p class="form__error">Vui lòng không bỏ trống địa chỉ</p>
            </div>
            <div class="form__group">
              <label for="city" class="form__label form__label--small">Thành phố / Quận / Huyện</label>
              <div class="form__text-input form__text-input--small">
                <input
                  type="text"
                  name=""
                  placeholder="City/District/Town"
                  id="city"
                  readonly
                  class="form__input js-toggle"
                  toggle-target="#city-dialog"
                />
                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />

                <!-- Select dialog -->
                <div id="city-dialog" class="form__select-dialog hide">
                  <h2 class="form__dialog-heading d-none d-sm-block">Thành phố / Quận / Huyện</h2>
                  <button class="form__close-dialog d-none d-sm-block js-toggle" toggle-target="#city-dialog">
                    &times
                  </button>
                  <div class="form__search">
                    <input type="text" placeholder="Search" class="form__search-input" />
                    <img src="${pageContext.request.contextPath}/assets/icons/search.svg" alt="" class="form__search-icon icon" />
                  </div>
                  <ul class="form__options-list">
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option form__option--current">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                    <li class="form__option">Ha Noi</li>
                    <li class="form__option">Ho Chi Minh</li>
                    <li class="form__option">Da Nang</li>
                  </ul>
                </div>
              </div>
              <p class="form__error">Phone must be at least 11 characters</p>
            </div>
            <div class="form__group form__group--inline">
              <label class="form__checkbox">
                <input type="checkbox" name="" id="" class="form__checkbox-input d-none" />
                <span class="form__checkbox-label">Đặt làm địa chỉ giao hàng mặc định</span>
              </label>
            </div>
          </div>
          <div class="modal__bottom">
            <button class="btn btn--small btn--text modal__btn js-toggle" toggle-target="#add-new-address">Hủy</button>
            <button
              class="btn btn--small btn--primary modal__btn btn--no-margin js-toggle"
              toggle-target="#add-new-address"
            >
              Lưu
            </button>
          </div>
        </form>
      </div>
      <div class="modal__overlay"></div>
    </div>
  </body>
</html>
