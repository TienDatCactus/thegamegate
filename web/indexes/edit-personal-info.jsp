<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>thay đổi thông tin cá nhân | the game gate.</title>

    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/favicon/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/favicon/favicon-16x16.png" />
    <link rel="manifest" href="./assets/favicon/site.webmanifest" />
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
      load("#header", "/templates/header-logined.html");
    </script>

    <!-- MAIN -->
    <main class="profile">
      <div class="container">
        <!-- Search bar -->
        <div class="profile-container">
          <div class="search-bar d-none d-md-flex">
            <input type="text" name="" id="" placeholder="Search for item" class="search-bar__input" />
            <button class="search-bar__submit">
              <img src="./assets/icons/search.svg" alt="" class="search-bar__icon icon" />
            </button>
          </div>
        </div>

        <!-- Profile content -->
        <div class="profile-container">
          <div class="row gy-md-3">
            <div class="col-3 col-xl-4 d-lg-none">
              <aside class="profile__sidebar">
                <!-- User -->
                <div class="profile-user">
                  <img src="./assets/img/avatar/avatar-3.png" alt="" class="profile-user__avatar" />
                  <h1 class="profile-user__name">Đạt tiến</h1>
                  <p class="profile-user__desc">Đăng kí từ : 12/02/2022</p>
                </div>

                <!-- Menu 1 -->
                <div class="profile-menu">
                  <h3 class="profile-menu__title">Quản lí tài khoản</h3>
                  <ul class="profile-menu__list">
                    <li>
                      <a href="./edit-personal-info.html" class="profile-menu__link">
                        <span class="profile-menu__icon">
                          <img src="./assets/icons/profile.svg" alt="" class="icon" />
                        </span>
                        Chỉnh sửa thông tin cá nhân
                      </a>
                    </li>
                   
                  </ul>
                </div>

                <!-- Menu 2 -->
                <div class="profile-menu">
                  <h3 class="profile-menu__title">Các mặt hàng của tôi</h3>
                  <ul class="profile-menu__list">
                    <li>
                      <a href="#!" class="profile-menu__link">
                        <span class="profile-menu__icon">
                          <img src="./assets/icons/download.svg" alt="" class="icon" />
                        </span>
                        Đặt lại sản phẩm
                      </a>
                    </li>
                    <li>
                      <a href="#!" class="profile-menu__link">
                        <span class="profile-menu__icon">
                          <img src="./assets/icons/heart.svg" alt="" class="icon" />
                        </span>
                        Danh sách yêu thích
                      </a>
                    </li>
                  </ul>
                </div>

                <!-- Menu 3 -->
                <div class="profile-menu">
                  <h3 class="profile-menu__title">Chăm sóc khách hàng</h3>
                  <ul class="profile-menu__list">
                    <li>
                      <a href="#!" class="profile-menu__link">
                        <span class="profile-menu__icon">
                          <img src="./assets/icons/info.svg" alt="" class="icon" />
                        </span>
                        Hỗ trợ
                      </a>
                    </li>
                    <li>
                      <a href="#!" class="profile-menu__link">
                        <span class="profile-menu__icon">
                          <img src="./assets/icons/danger.svg" alt="" class="icon" />
                        </span>
                        Điều khoản sử dụng
                      </a>
                    </li>
                  </ul>
                </div>
              </aside>
            </div>
            <div class="col-9 col-xl-8 col-lg-12">
              <div class="cart-info">
                <div class="row gy-3">
                  <div class="col-12">
                    <h2 class="cart-info__heading">
                      <a href="./profile.html">
                        <img src="./assets/icons/arrow-left.svg" alt="" class="icon cart-info__back-arrow" />
                      </a>
                      Thay đổi thông tin cá nhân
                    </h2>

                    <form action="./profile.html" class="form form-card">
                      <!-- Form row 1 -->
                      <div class="form__row">
                        <div class="form__group">
                          <label for="full-name" class="form__label form-card__label"> Họ và tên </label>
                          <div class="form__text-input">
                            <input
                              type="text"
                              name=""
                              id="full-name"
                              placeholder="Nguyễn Thị Đạt"
                              class="form__input"
                              required
                              autofocus
                            />
                            <img src="./assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                          </div>
                          <p class="form__error">Vui lòng nhập đầy đủ họ và tên của bạn</p>
                        </div>
                        <div class="form__group">
                          <label for="email-adress" class="form__label form-card__label"> Địa chỉ Email </label>
                          <div class="form__text-input">
                            <input
                              type="text"
                              name=""
                              id="email-adress"
                              placeholder="abzxyz@hotmail.com"
                              class="form__input"
                              required
                            />
                            <img src="./assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                          </div>
                          <p class="form__error">Vui lòng nhập đúng định dạng email</p>
                        </div>
                      </div>

                      <!-- Form row 2 -->
                      <div class="form__row">
                        <div class="form__group">
                          <label for="phone-number" class="form__label form-card__label"> Số điện thoại liên lạc </label>
                          <div class="form__text-input">
                            <input
                              type="text"
                              name=""
                              id="phone-number"
                              placeholder="000-2222-1111-333"
                              class="form__input"
                              required
                            />
                            <img src="./assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                          </div>
                          <p class="form__error">Vui lòng nhập đúng định dạng số điện thoại</p>
                        </div>
                        <div class="form__group">
                          <label for="passowrd" class="form__label form-card__label"> Mật khẩu ( 6 kí tự )</label>
                          <div class="form__text-input">
                            <input
                              type="password"
                              name=""
                              id="passowrd"
                              placeholder="Mật khẩu"
                              class="form__input"
                              required
                            />
                            <img src="./assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                          </div>
                          <p class="form__error">Vui lòng nhập đúng yêu cầu mật khẩu tối thiểu</p>
                        </div>
                      </div>

                      <div class="form-card__bottom">
                        <a class="btn btn--text" href="./profile.html">Hủy</a>
                        <button class="btn btn--primary btn--rounded">Lưu</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <footer id="footer" class="footer"></footer>
    <script>
      load("#footer", "./templates/footer.html");
    </script>

    <!-- Modal: confirm remove shopping cart item -->
    <div id="delete-confirm" class="modal modal--small hide">
      <div class="modal__content">
        <p class="modal__text">Do you want to remove this item from shopping cart?</p>
        <div class="modal__bottom">
          <button class="btn btn--small btn--outline modal__btn js-toggle" toggle-target="#delete-confirm">
            Cancel
          </button>
          <button
            class="btn btn--small btn--danger btn--primary modal__btn btn--no-margin js-toggle"
            toggle-target="#delete-confirm"
          >
            Delete
          </button>
        </div>
      </div>
      <div class="modal__overlay js-toggle" toggle-target="#delete-confirm"></div>
    </div>
  </body>
</html>
