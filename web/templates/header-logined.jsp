<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
    <div class="top-bar">
        <!-- Logo -->
        <h1 class="logo__title top-bar__logo-title">the game gate.</h1>

        <!-- Navbar -->
        <nav id="navbar" class="navbar hide">
            <button class="navbar__close-btn js-toggle" toggle-target="#navbar">
                <img class="icon" src="${pageContext.request.contextPath}/assets/icons/arrow-left.svg" alt="" />
            </button>

            <a href="${pageContext.request.contextPath}/CheckOutControl" class="nav-btn d-none d-md-flex">
                <img src="${pageContext.request.contextPath}/assets/icons/buy.svg" alt="" class="nav-btn__icon icon" />
                <span class="nav-btn__title">Cart</span>
                <span class="nav-btn__qnt">3</span>
            </a>

            <ul class="navbar__list js-dropdown-list">
                <li class="navbar__item">
                    <a href="${pageContext.request.contextPath}/" class="navbar__link gradient-text">Home</a>
                </li>
                <c:if test="${user.admin == 1}">
                    <li class="navbar__item">
                        <a href="${pageContext.request.contextPath}/ItemListControl" class="navbar__link gradient-text">Manage Products</a>
                    </li>
                </c:if>
            </ul>
        </nav>
        <div class="navbar__overlay js-toggle" toggle-target="#navbar"></div>
        <!-- Actions -->
        <c:choose>
            <c:when test="${empty sessionScope.user}">
                <div class="top-act">
                    <a href="${pageContext.request.contextPath}/LoginControl" class="btn btn--text d-md-none">Sign In</a>
                    <a href="${pageContext.request.contextPath}/SignUpControl" class="top-act__sign-up btn btn--primary">Sign Up</a>
                </div>
            </c:when>
            <c:otherwise >
                <div class="top-act">
                    <div class="top-act__group d-md-none">
                        <div class="top-act__btn-wrap">
                            <button class="top-act__btn">
                                <img src="./assets/icons/buy.svg" alt="" class="icon top-act__icon" />
                                <span class="top-act__title">$65.42</span>
                            </button>

                            <!-- Dropdown -->
                            <div class="act-dropdown">
                                <div class="act-dropdown__inner">
                                    <img src="./assets/icons/arrow-up.png" alt="" class="act-dropdown__arrow" />
                                    <div class="act-dropdown__top">
                                        <h2 class="act-dropdown__title">You have 3 items</h2>
                                        <a href="${pageContext.request.contextPath}/indexes/checkout.jsp" class="act-dropdown__view-all">View Cart Items</a>
                                    </div>
                                    <div class="row row-cols-3 gx-2 act-dropdown__list">
                                        <!-- Cart preview item 1 -->
                                        <div class="col">
                                            <article class="cart-preview-item">
                                                <div class="cart-preview-item__img-wrap">
                                                    <img src="" alt="" class="cart-preview-item__thumb" />
                                                </div>
                                                <h3 class="cart-preview-item__title">Dying Light</h3>
                                                <p class="cart-preview-item__price">$329.00</p>
                                            </article>
                                        </div>

                                        <!-- Cart preview item 2 -->
                                        <div class="col">
                                            <article class="cart-preview-item">
                                                <div class="cart-preview-item__img-wrap">
                                                    <img src="" alt="" class="cart-preview-item__thumb" />
                                                </div>
                                                <h3 class="cart-preview-item__title">The Last Of Us</h3>
                                                <p class="cart-preview-item__price">$39.99</p>
                                            </article>
                                        </div>

                                        <!-- Cart preview item 3 -->
                                        <div class="col">
                                            <article class="cart-preview-item">
                                                <div class="cart-preview-item__img-wrap">
                                                    <img src="" alt="" class="cart-preview-item__thumb" />
                                                </div>
                                                <h3 class="cart-preview-item__title">NFL 22</h3>
                                                <p class="cart-preview-item__price">$47.00</p>
                                            </article>
                                        </div>
                                    </div>
                                    <div class="act-dropdown__bottom">
                                        <div class="act-dropdown__row">
                                            <span class="act-dropdown__label">Taxes</span>
                                            <span class="act-dropdown__value">$0</span>
                                        </div>
                                        <div class="act-dropdown__row">
                                            <span class="act-dropdown__label">Shipping</span>
                                            <span class="act-dropdown__value">$10.00</span>
                                        </div>
                                        <div class="act-dropdown__row act-dropdown__row--bold">
                                            <span class="act-dropdown__label">Total</span>
                                            <span class="act-dropdown__value">$425.99</span>
                                        </div>
                                    </div>
                                    <div class="act-dropdown__checkout">
                                        <a href="./checkout.html" class="btn btn--primary btn--rounded act-dropdown__checkout-btn">
                                            Check out
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="top-act__user">
                        <img
                            src="${pageContext.request.contextPath}/assets/assets/unrelated pics/1.png    "
                            alt=""
                            class="top-act__avatar"
                            />

                        <!-- Dropdown -->
                        <div class="act-dropdown top-act__dropdown">
                            <div class="act-dropdown__inner user-menu">
                                <img src="${pageContext.request.contextPath}/assets/icons/arrow-up.png" alt="" class="act-dropdown__arrow top-act__dropdown-arrow" />

                                <div class="user-menu__top">
                                    <img src="${pageContext.request.contextPath}/assets/assets/unrelated pics/1.png" alt="" class="user-menu__avatar" />
                                    <div>
                                        <p class="user-menu__name">${ui.firstName} ${ui.lastName}</p>
                                        <p>@user${user.userId}</p>
                                    </div>
                                </div>

                                <ul class="user-menu__list">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/ProfileControl" class="user-menu__link">Profile</a>
                                    </li>
                                    <li class="user-menu__separate">
                                        <a href="#!" class="user-menu__link" id="switch-theme-btn">
                                            <span>Toggle Dark Mode</span>
                                            <img src="${pageContext.request.contextPath}/assets/icons/sun.svg" alt="" class="icon user-menu__icon" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/indexes/edit-personal-info.jsp" class="user-menu__link">Edit personal info</a>
                                    </li>
                                    <li class="user-menu__separate">
                                        <a href="${pageContext.request.contextPath}/LogOutControl" class="user-menu__link">Sign Out</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:otherwise>
    </c:choose>
</div>
</div>
</div>
