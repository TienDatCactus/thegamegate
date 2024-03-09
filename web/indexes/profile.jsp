<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>profile | the game gate.</title>

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
                            <div class="col-3 col-xl-4 col-lg-5 col-md-12">
                                <aside class="profile__sidebar">
                                    <!-- User -->
                                    <div class="profile-user">
                                        <img src="${pageContext.request.contextPath}/assets/assets/unrelated pics/1.png" alt="" class="profile-user__avatar" />
                                        <c:forEach var="${userInfo}" var="ui">
                                            <c:if test="${ui.userId == user.userId}">
                                                <h1 class="profile-user__name">${ui.firstName} ${ui.lastName}</h1>
                                                <p class="profile-user__desc">@user${ui.userId}</p>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                    <!-- Menu 1 -->
                                    <div class="profile-menu">
                                        <h3 class="profile-menu__title">Profile ${user.userId}</h3>
                                        <ul class="profile-menu__list">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/edit-personal-info.jsp" class="profile-menu__link">
                                                    <span class="profile-menu__icon">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/profile.svg" alt="" class="icon" />
                                                    </span>
                                                    Edit personal Profile
                                                </a>
                                            </li>
                                            <p>${oke}</p>
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
                                    <c:if test="${empty sessionScope.user}">
                                        <p>You are not logged in.</p>
                                    </c:if>
                                    <c:if test="${not empty sessionScope.user}">
                                        <p>You are logged in.</p>
                                    </c:if>
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
                            <div class="col-9 col-xl-8 col-lg-7 col-md-12">
                                <div class="cart-info">
                                    <div class="row gy-3">
                                        <!-- My Wallet -->
                                        <div class="col-12">
                                            <h2 class="cart-info__heading">My Wallet</h2>
                                            <p class="cart-info__desc profile__desc">Payment methods</p>

                                            <div class="row gy-md-2 row-cols-3 row-cols-xl-2 row-cols-lg-1">

                                                <!-- Payment card 1 -->
                                                <div class="col">
                                                    <article class="payment-card" style="--bg-color: #1e2e69">
                                                        <img src="${pageContext.request.contextPath}/assets/img/card/plane-bg.svg" alt="" class="payment-card__img" />
                                                        <div class="payment-card__top">
                                                            <img src="${pageContext.request.contextPath}/assets/img/card/plane.svg" alt="" />
                                                            <span class="payment-card__type">NiggaCard</span>
                                                        </div>
                                                        <c:forEach items="${userPayment}" var="up">
                                                            <c:if test="${up.userId == user.userId}">
                                                                <div class="payment-card__number">${up.cardNum}</div>
                                                            </c:if>
                                                        </c:forEach>
                                                        <div class="payment-card__bottom">
                                                            <div>
                                                                <p class="payment-card__label">authorized</p>
                                                                <c:forEach var="${userInfo}" var="ui">
                                                                    <c:if test="${ui.userId == user.userId}">
                                                                        <p class="payment-card__value" >${ui.firstName} ${ui.lastName}</p>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </div>
                                                            <div class="payment-card__expired">
                                                                <p class="payment-card__label">Expired</p>
                                                                <c:forEach items="${userPayment}" var="up">
                                                                    <c:if test="${up.userId == user.userId}">
                                                                        <p class="payment-card__value">${up.expire}</p>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </div>
                                                            <div class="payment-card__circle"></div>
                                                        </div>
                                                    </article>
                                                </div>

                                                <!-- Add new payment card -->
                                                <div class="col">
                                                    <a class="new-card" href="${pageContext.request.contextPath}/add-new-card.jsp">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/plus.svg" alt="" class="new-card__icon icon" />
                                                        <p class="new-card__text">Add new payment method</p>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Account info -->
                                        <div class="col-12">
                                            <h2 class="cart-info__heading">Personal Info</h2>
                                            <p class="cart-info__desc profile__desc">Your absolute "secret" infos.</p>
                                            <div class="row gy-md-2 row-cols-2 row-cols-lg-1">
                                                <!-- Account info 1 -->
                                                <div class="col">
                                                    <div>
                                                        <article class="account-info">
                                                            <div class="account-info__icon">
                                                                <img src="${pageContext.request.contextPath}/assets/icons/message.svg" alt="" class="icon" />
                                                            </div>
                                                            <div>
                                                                <h3 class="account-info__title">Email Address</h3>
                                                                <p class="account-info__desc" >${user.email}</p>
                                                            </div>
                                                        </article>
                                                    </div>
                                                </div>

                                                <!-- Account info 2 -->
                                                <div class="col">
                                                    <div>
                                                        <article class="account-info">
                                                            <div class="account-info__icon">
                                                                <img src="${pageContext.request.contextPath}/assets/icons/calling.svg" alt="" class="icon" />
                                                            </div>
                                                            <div>
                                                                <h3 class="account-info__title">Telephone</h3>
                                                                <c:forEach items="${userInfo}" var="ui">
                                                                    <c:if test="${ui.userId == user.userId}">
                                                                        <p class="account-info__desc">${ui.telephone}</p>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </div>
                                                        </article>
                                                    </div>
                                                </div>

                                                <!-- Account info 3 -->
                                                <div class="col">
                                                    <div>
                                                        <article class="account-info">
                                                            <div class="account-info__icon">
                                                                <img src="${pageContext.request.contextPath}/assets/icons/location.svg" alt="" class="icon" />
                                                            </div>
                                                            <div>
                                                                <h3 class="account-info__title">Address</h3>
                                                                <c:forEach items="${userInfo}" var="ui">
                                                                    <c:if test="${ui.userId == user.userId}">
                                                                        <p class="account-info__desc">${ui.address}</p>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </div>
                                                        </article>
                                                    </div>
                                                </div>
                                            </div>
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
