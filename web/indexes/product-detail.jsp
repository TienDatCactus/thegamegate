<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>the game gate.</title>

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
        <main class="product-page">
            <div class="container">

                <!-- Breadcrumbs -->
                <div class="product-container">
                    <ul class="breadcrumbs">
                        <li>
                            <c:forEach items="${cateList}" var="cate">
                                <c:if test="$
                                <a href="#!" class="breadcrumbs__link">
                                    ! category
                                    <img src="${pageContext.request.contextPath}/assets/icons/arrow-right.svg" alt="" />
                                </a>
                            </c:forEach>
                        </li>
                        <li>
                            <a href="#!" class="breadcrumbs__link">
                                ! subcategory
                                <img src="${pageContext.request.contextPath}/assets/icons/arrow-right.svg" alt="" />
                            </a>
                        </li>
                        <li>
                            <a href="#!" class="breadcrumbs__link breadcrumbs__link--current">
                                ! brand name / category
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Product info -->
                <div class="product-container prod-info-content">
                    <div class="row">
                        <div class="col-5 col-xl-6 col-lg-12">
                            <div class="prod-preview">
                                <div class="prod-preview__list">
                                    <div class="prod-preview__item">
                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-1.png" alt="" class="prod-preview__img" />
                                    </div>
                                    <div class="prod-preview__item">
                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-2.png" alt="" class="prod-preview__img" />
                                    </div>
                                    <div class="prod-preview__item">
                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-3.png" alt="" class="prod-preview__img" />
                                    </div>
                                    <div class="prod-preview__item">
                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-4.png" alt="" class="prod-preview__img" />
                                    </div>
                                </div>
                                <div class="prod-preview__thumbs">
                                    <img
                                        src="${pageContext.request.contextPath}/assets/img/product/item-1.png"
                                        alt=""
                                        class="prod-preview__thumb-img prod-preview__thumb-img--current"
                                        />
                                    <img src="${pageContext.request.contextPath}/assets/img/product/item-2.png" alt="" class="prod-preview__thumb-img" />
                                    <img src="${pageContext.request.contextPath}/assets/img/product/item-3.png" alt="" class="prod-preview__thumb-img" />
                                    <img src="${pageContext.request.contextPath}/assets/img/product/item-4.png" alt="" class="prod-preview__thumb-img" />
                                </div>
                            </div>
                        </div>
                        <div class="col-7 col-xl-6 col-lg-12">
                            <form action="" class="form">
                                <section class="prod-info">
                                    <h1 class="prod-info__heading">Coffee Beans - Espresso Arabica and Robusta Beans</h1>
                                    <div class="row">
                                        <div class="col-5 col-xxl-6 col-xl-12">
                                            <div class="prod-prop">
                                                <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="prod-prop__icon" />
                                                <h4 class="prod-prop__title">(3.5) 1100 reviews</h4>
                                            </div>
                                            <label for="" class="form__label">Ngôn ngữ</label>
                                            <div class="filter__form-group">
                                                <div class="form__select-wrap product__lang-wrap">
                                                    <select name="language_select" class="form_select" style="width: 150px">
                                                        <option value="${product.lang}" class="form_select-items">Nhật</option>
                                                        <option value="${product.lang}" class="form_select-items">Anh</option>
                                                        <option value="${product.lang}" class="form_select-items">Hàn</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="filter__form-group">
                                                <div class="form__tags">
                                                    <button class="form__tag prod-info__tag">Anh</button>
                                                    <button class="form__tag prod-info__tag">Nhật</button>
                                                    <button class="form__tag prod-info__tag">Hàn</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-7 col-xxl-6 col-xl-12">
                                            <div class="prod-props">
                                                <div class="prod-prop">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/document.svg" alt="" class="prod-prop__icon icon" />
                                                    <h4 class="prod-prop__title">Bản digital</h4>
                                                </div>
                                                <div class="prod-prop">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/buy.svg" alt="" class="prod-prop__icon icon" />
                                                    <div>
                                                        <h4 class="prod-prop__title">Giao hàng</h4>
                                                        <p class="prod-prop__desc">Từ 10$ cho khoảng 3-5 ngày</p>
                                                    </div>
                                                </div>
                                                <div class="prod-prop">
                                                    <img src="${pageContext.request.contextPath}/assets/icons/bag.svg" alt="" class="prod-prop__icon icon" />
                                                    <div>
                                                        <h4 class="prod-prop__title">Tình trạng</h4>
                                                        <p class="prod-prop__desc">Còn hàng</p>
                                                    </div>
                                                </div>
                                                <div class="prod-info__card">
                                                    <div class="prod-info__row">
                                                        <span class="prod-info__price">$500.00</span>
                                                        <span class="prod-info__tax">10%</span>
                                                    </div>
                                                    <p class="prod-info__total-price">$540.00</p>
                                                    <div class="prod-info__row">
                                                        <button class="btn btn--primary prod-info__add-to-cart">Thêm vào giỏ hàng</button>
                                                        <button class="like-btn prod-info__like-btn">
                                                            <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                                            <img src="${pageContext.request.contextPath}/assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Product content -->
                <div class="product-container">
                    <div class="prod-tab js-tabs">
                        <ul class="prod-tab__list">
                            <li class="prod-tab__item prod-tab__item--current">Mô tả</li>
                            <li class="prod-tab__item">Đánh giá (1100)</li>
                            <li class="prod-tab__item">Tương tự</li>
                        </ul>
                        <div class="prod-tab__contents">
                            <div class="prod-tab__content prod-tab__content--current">
                                <div class="row">
                                    <div class="col-8 col-xl-10 col-lg-12">
                                        <div class="text-content prod-tab__text-content">
                                            <h2>Lorem ipsum dolor sit amet.</h2>
                                            <p>
                                                Lorem ipsum dolor sit amet <a href="#!">consectetur</a> adipisicing elit. Aliquid, cupiditate.
                                                Modi, quidem, ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda
                                                <a href="#!">praesentium</a> et! Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                            <h3>Lorem ipsum dolor sit amet.</h3>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                            <p>
                                                <img src="${pageContext.request.contextPath}/assets/img/product/item-1.png" alt="" />
                                                <em>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</em>
                                            </p>
                                            <blockquote>
                                                <p>
                                                    Lorem ipsum dolor sit amet <em>consectetur</em> <u>adipisicing</u> elit. Aliquid, cupiditate.
                                                    Modi, quidem, ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda
                                                    praesentium et! Illum dolorem est rem voluptas nam! Voluptatem.
                                                </p>
                                            </blockquote>
                                            <h3>Lorem ipsum dolor sit amet.</h3>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>

                                            <hr />

                                            <h2>Lorem ipsum dolor sit amet.</h2>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                            <p>
                                                <img src="${pageContext.request.contextPath}/assets/img/product/item-1.png" alt="" />
                                                <em>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</em>
                                            </p>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>

                                            <hr />

                                            <h2>Lorem ipsum dolor sit amet.</h2>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                            <p>
                                                <img src="${pageContext.request.contextPath}/assets/img/product/item-1.png" alt="" />
                                                <em>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</em>
                                            </p>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, cupiditate. Modi, quidem,
                                                ullam sint dolorum recusandae voluptates dignissimos similique animi assumenda praesentium et!
                                                Illum dolorem est rem voluptas nam! Voluptatem.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="prod-tab__content">
                                <div class="prod-content">
                                    <h2 class="prod-content__heading">Các khách hàng khác nói gì ?</h2>
                                    <div class="row row-cols-3 gx-lg-2 row-cols-md-1 gy-md-3">
                                        <!-- Review card 1 -->
                                        <div class="col">
                                            <div class="review-card">
                                                <div class="review-card__content">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatar/avatar-1.png" alt="" class="review-card__avatar" />
                                                    <div class="review-card__info">
                                                        <h4 class="review-card__title">Vailonluon</h4>
                                                        <p class="review-card__desc">Great jagras</p>
                                                    </div>
                                                </div>
                                                <div class="review-card__rating">
                                                    <div class="review-card__star-list">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star-half.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star-blank.svg" alt="" class="review-card__star" />
                                                    </div>
                                                    <span class="review-card__rating-title">(3.5) Đánh giá</span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Review card 2 -->
                                        <div class="col">
                                            <div class="review-card">
                                                <div class="review-card__content">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatar/avatar-2.png" alt="" class="review-card__avatar" />
                                                    <div class="review-card__info">
                                                        <h4 class="review-card__title">negawatt</h4>
                                                        <p class="review-card__desc">cung phe</p>
                                                    </div>
                                                </div>
                                                <div class="review-card__rating">
                                                    <div class="review-card__star-list">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star-half.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star-blank.svg" alt="" class="review-card__star" />
                                                    </div>
                                                    <span class="review-card__rating-title">(3.5) Đánh giá</span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Review card 3 -->
                                        <div class="col">
                                            <div class="review-card">
                                                <div class="review-card__content">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatar/avatar-3.png" alt="" class="review-card__avatar" />
                                                    <div class="review-card__info">
                                                        <h4 class="review-card__title">yessirrrr</h4>
                                                        <p class="review-card__desc">banana head</p>
                                                    </div>
                                                </div>
                                                <div class="review-card__rating">
                                                    <div class="review-card__star-list">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star-half.svg" alt="" class="review-card__star" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/star-blank.svg" alt="" class="review-card__star" />
                                                    </div>
                                                    <span class="review-card__rating-title">(3.5) Đánh giá</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="prod-tab__content">
                                <div class="prod-content">
                                    <h2 class="prod-content__heading">Các sản phẩm tương tự</h2>
                                    <div class="row row-cols-6 row-cols-xl-4 row-cols-lg-3 row-cols-md-2 row-cols-sm-1 g-2">
                                        <!-- Product card 1 -->
                                        <div class="col">
                                            <article class="product-card">
                                                <div class="product-card__img-wrap">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">
                                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-1.png" alt="" class="product-card__thumb" />
                                                    </a>
                                                    <button class="like-btn product-card__like-btn">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                                    </button>
                                                </div>
                                                <h3 class="product-card__title">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">Coffee Beans - Espresso Arabica and Robusta Beans</a>
                                                </h3>
                                                <p class="product-card__brand">Lavazza</p>
                                                <div class="product-card__row">
                                                    <span class="product-card__price">$47.00</span>
                                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                                    <span class="product-card__score">4.3</span>
                                                </div>
                                            </article>
                                        </div>

                                        <!-- Product card 2 -->
                                        <div class="col">
                                            <article class="product-card">
                                                <div class="product-card__img-wrap">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">
                                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-2.png" alt="" class="product-card__thumb" />
                                                    </a>
                                                    <button class="like-btn product-card__like-btn">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                                    </button>
                                                </div>
                                                <h3 class="product-card__title">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">Lavazza Coffee Blends - Try the Italian Espresso</a>
                                                </h3>
                                                <p class="product-card__brand">Lavazza</p>
                                                <div class="product-card__row">
                                                    <span class="product-card__price">$53.00</span>
                                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                                    <span class="product-card__score">3.4</span>
                                                </div>
                                            </article>
                                        </div>

                                        <!-- Product card 3 -->
                                        <div class="col">
                                            <article class="product-card">
                                                <div class="product-card__img-wrap">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">
                                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-3.png" alt="" class="product-card__thumb" />
                                                    </a>
                                                    <button class="like-btn like-btn--liked product-card__like-btn">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                                    </button>
                                                </div>
                                                <h3 class="product-card__title">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">Lavazza - Caffè Espresso Black Tin - Ground coffee</a>
                                                </h3>
                                                <p class="product-card__brand">Welikecoffee</p>
                                                <div class="product-card__row">
                                                    <span class="product-card__price">$99.99</span>
                                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                                    <span class="product-card__score">5.0</span>
                                                </div>
                                            </article>
                                        </div>

                                        <!-- Product card 4 -->
                                        <div class="col">
                                            <article class="product-card">
                                                <div class="product-card__img-wrap">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">
                                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-4.png" alt="" class="product-card__thumb" />
                                                    </a>
                                                    <button class="like-btn product-card__like-btn">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                                    </button>
                                                </div>
                                                <h3 class="product-card__title">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">Qualità Oro Mountain Grown - Espresso Coffee Beans</a>
                                                </h3>
                                                <p class="product-card__brand">Lavazza</p>
                                                <div class="product-card__row">
                                                    <span class="product-card__price">$38.65</span>
                                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                                    <span class="product-card__score">4.4</span>
                                                </div>
                                            </article>
                                        </div>

                                        <!-- Product card 5 -->
                                        <div class="col">
                                            <article class="product-card">
                                                <div class="product-card__img-wrap">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">
                                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-1.png" alt="" class="product-card__thumb" />
                                                    </a>
                                                    <button class="like-btn product-card__like-btn">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                                    </button>
                                                </div>
                                                <h3 class="product-card__title">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">Coffee Beans - Espresso Arabica and Robusta Beans</a>
                                                </h3>
                                                <p class="product-card__brand">Lavazza</p>
                                                <div class="product-card__row">
                                                    <span class="product-card__price">$47.00</span>
                                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                                    <span class="product-card__score">4.3</span>
                                                </div>
                                            </article>
                                        </div>

                                        <!-- Product card 6 -->
                                        <div class="col">
                                            <article class="product-card">
                                                <div class="product-card__img-wrap">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">
                                                        <img src="${pageContext.request.contextPath}/assets/img/product/item-2.png" alt="" class="product-card__thumb" />
                                                    </a>
                                                    <button class="like-btn product-card__like-btn">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                                    </button>
                                                </div>
                                                <h3 class="product-card__title">
                                                    <a href="${pageContext.request.contextPath}/product-detail.html">Lavazza Coffee Blends - Try the Italian Espresso</a>
                                                </h3>
                                                <p class="product-card__brand">Lavazza</p>
                                                <div class="product-card__row">
                                                    <span class="product-card__price">$53.00</span>
                                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                                    <span class="product-card__score">3.4</span>
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
        </main>

        <!-- Footer -->
        <footer id="footer" class="footer"></footer>
        <script>
        load("#footer", "${pageContext.request.contextPath}/templates/footer.html");
        </script>
    </body>
</html>
