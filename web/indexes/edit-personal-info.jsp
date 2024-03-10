<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>edit personal info | the game gate.</title>

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
        <main class="profile">
            <div class="container">

                <!-- Profile content -->
                <div class="profile-container">
                    <div class="row gy-md-3">
                        <div class="col-3 col-xl-4 d-lg-none">
                            <aside class="profile__sidebar">
                                <!-- User -->
                                <div class="profile-user">
                                    <img src="${pageContext.request.contextPath}/assets/assets/unrelated pics/1.png" alt="" class="profile-user__avatar" />
                                    <h1 class="profile-user__name">${ui.firstName} ${ui.lastName}</h1>
                                    <p class="profile-user__desc">@user${ui.userId}</p>
                                </div>
                                <!-- Menu 1 -->
                                <div class="profile-menu">
                                    <h3 class="profile-menu__title">Profile</h3>
                                    <ul class="profile-menu__list">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/indexes/edit-personal-info.jsp" class="profile-menu__link">
                                                <span class="profile-menu__icon">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/profile.svg" alt="" class="icon" />
                                                </span>
                                                Edit personal Profile
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Menu 2 -->
                                <div class="profile-menu">
                                    <h3 class="profile-menu__title">My Products</h3>
                                    <ul class="profile-menu__list">
                                        <li>
                                            <a href="#!" class="profile-menu__link">
                                                <span class="profile-menu__icon">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/download.svg" alt="" class="icon" />
                                                </span>
                                                Manage Product
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#!" class="profile-menu__link">
                                                <span class="profile-menu__icon">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="icon" />
                                                </span>
                                                Favorites
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Menu 3 -->
                                <div class="profile-menu">
                                    <h3 class="profile-menu__title">Customer Support</h3>
                                    <ul class="profile-menu__list">
                                        <li>
                                            <a href="https://eelslap.com/" class="profile-menu__link">
                                                <span class="profile-menu__icon">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/info.svg" alt="" class="icon" />
                                                </span>
                                                Support
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://eelslap.com/" class="profile-menu__link">
                                                <span class="profile-menu__icon">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/danger.svg" alt="" class="icon" />
                                                </span>
                                                Term of Uses
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
                                            <a href="${pageContext.request.contextPath}/profile.html">
                                                <img src="${pageContext.request.contextPath}/assets/icons/arrow-left.svg" alt="" class="icon cart-info__back-arrow" />
                                            </a>
                                            Edit personal information :
                                        </h2>

                                        <form action="${pageContext.request.contextPath}/EditProfileControl" class="form form-card" method="post">
                                            <!-- Form row 1 -->
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="firstName" class="form__label form-card__label"> First Name :</label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="firstName"
                                                            id="full-name"
                                                            placeholder="nig"
                                                            class="form__input"
                                                            required
                                                            autofocus
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">That's not your name nigga</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="lastName" class="form__label form-card__label"> Last Name :</label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="lastName"
                                                            id="full-name"
                                                            placeholder="nig"
                                                            class="form__input"
                                                            required
                                                            autofocus
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">That's not your name nigga</p>
                                                </div>
                                            </div>
                                            <!-- Form row 2 -->
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="telephone"class="form__label form-card__label">Telephone : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="number"
                                                            name="telephone"
                                                            id="telephone"
                                                            placeholder="113"
                                                            class="form__input"
                                                            required
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">That's my phone number ??!!</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="address" class="form__label form-card__label">Address : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="address"
                                                            id="address"
                                                            placeholder="kindergarten"
                                                            class="form__input"
                                                            required
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">Now I know what's your password is !</p>
                                                </div>
                                            </div>
                                            <!-- Form row 3 -->
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="email" class="form__label form-card__label"> Email Address : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="email"
                                                            id="email-adress"
                                                            placeholder="nigga@nigmail.com"
                                                            class="form__input"
                                                            required
                                                            />
                                                        <img src="./assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">That's not your email nigga !</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="password" class="form__label form-card__label">Password : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="password"
                                                            name="password"
                                                            id="password"
                                                            placeholder="password"
                                                            class="form__input"
                                                            minlength ="6"
                                                            required
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">Now I know what's your password is</p>
                                                </div>
                                            </div>
                                            <div class="form-card__bottom">
                                                <a class="btn btn--text" href="${pageContext.request.contextPath}/ProfileControl">Cancel</a>
                                                <input class="btn btn--primary btn--rounded" type="submit" value="Update" name="update">
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
            load("#footer", "${pageContext.request.contextPath}/templates/footer.jsp");
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
