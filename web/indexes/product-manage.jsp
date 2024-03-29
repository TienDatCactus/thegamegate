<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title> add payment method | the game gate.</title>

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
                <div class="profile-container">
                    <div class="row gy-md-3">
                        <div class="col-3 col-xl-4 d-lg-none">
                            <div class="col product-section">
                                <article class="product-card">
                                    <div class="product-card__img-wrap">
                                        <a href="${pageContext.request.contextPath}/ProductControl?id=${pd.productId}">
                                            <img src="${pageContext.request.contextPath}/${pd.imagePath}" alt="" class="product-card__thumb" />
                                        </a>
                                    </div>
                                    <h3 class="product-card__title">
                                        <a href="${pageContext.request.contextPath}/ProductControl?id=${pd.productId}">${pd.name}</a>
                                    </h3>
                                    <p class="product-card__brand">${gm.publisher}</p>
                                    <div class="product-card__row">

                                        <span class="product-card__price">$${pd.price}</span>
                                        <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                        <span class="product-card__score" >${gm.rate}</span>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <div class="col-9 col-xl-8 col-lg-12">
                            <div class="cart-info">
                                <div class="row gy-3">
                                    <div class="col-12">
                                        <h2 class="cart-info__heading">
                                            <a href="${pageContext.request.contextPath}/profile.html">
                                                <img src="${pageContext.request.contextPath}/assets/icons/arrow-left.svg" alt="" class="icon cart-info__back-arrow" />
                                            </a>
                                            Product Management
                                        </h2>

                                        <form action="${pageContext.request.contextPath}/EditProductControl" method="post" class="form form-card">
                                            <input type="hidden" id="redirect" name="id" value="${gm.productId}">
                                            <!-- Form row 1 -->
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="first-name" class="form__label form-card__label">Product Name :</label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="name"
                                                            id="name"
                                                            placeholder="game name"
                                                            class="form__input"
                                                            value="${pd.name}"
                                                            required
                                                            autofocus
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">That's not your game lil bro !</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="last-name" class="form__label form-card__label"> Description : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="description"
                                                            id="description"
                                                            placeholder="what ever about your shitty game..."
                                                            class="form__input"
                                                            value="${pd.description}"
                                                            required
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">maybe try to think like a normal person</p>
                                                </div>
                                            </div>
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="first-name" class="form__label form-card__label">Publisher :</label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="publisher"
                                                            id="publisher"
                                                            placeholder="who's the mom ?"
                                                            class="form__input"
                                                            value="${gm.publisher}"
                                                            required
                                                            autofocus
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">That's not the mom !</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="last-name" class="form__label form-card__label"> Developer : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="developer"
                                                            id="developer"
                                                            placeholder="what about it's dad ..."
                                                            class="form__input"
                                                            value="${gm.developer}"
                                                            required
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">maybe try to think like a normal person</p>
                                                </div>
                                            </div>

                                            <!-- Form row 2 -->
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="card-number" class="form__label form-card__label"> Category : </label>
                                                    <select name="category" class="form_select form__text-input" style="width: 100%;font-size: 1.6rem;font-weight: 500>
                                                        <c:forEach items="${cateList}" var="cate">
                                                            <option value="${cate.categoryId}" class="form_select-items" ${(gm.categoryId == cate.categoryId) ? "selected" : ""} >${cate.category}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <p class="form__error">Crazy to think that you don't even know wtf is a category ...</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="expiration-date" class="form__label form-card__label">Release Date : </label>
                                                    <div class="form__text-input">
                                                        <input type="date" name="releaseDate" id="releaseDate"  value="${gm.releaseDate}" required style="width: 100%;font-size: 1.6rem;font-weight: 500 ">
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">Even date and time was not included in your knowledge ...</p>
                                                </div>
                                            </div>

                                            <!-- Form row 3 -->
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="card-cvv" class="form__label form-card__label"> The "child" of Category :
                                                      </label>
                                                    <select name="subcategory" class="form_select form__text-input" style="width: 100%;font-size: 1.6rem;font-weight: 500>
                                                        <c:forEach items="${subcateList}" var="subcate">
                                                            <option value="${subcate.subcategoryId}" class="form_select-items" ${(gm.subCategoryId == subcate.subcategoryId) ? "selected" : ""} >${subcate.subcategory}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <p class="form__error">what a father, doesn't even know his own sons ...</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="phone-number" class="form__label form-card__label">Price : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="text"
                                                            name="price"
                                                            id="price"
                                                            placeholder="ignore these day's inflation ..."
                                                            class="form__input"
                                                            value="${pd.price}"
                                                            required
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">money money money....</p>
                                                </div>
                                            </div>

                                            <!-- Form row 4 -->
                                            <div class="form__row">
                                                <div class="form__group">
                                                    <label for="card-cvv" class="form__label form-card__label"> Language : </label>
                                                    <select name="language" class="form_select form__text-input" style="width: 100%;font-size: 1.6rem;font-weight: 500>
                                                        <c:forEach items="${langList}" var="lang">
                                                            <option value="${lang.languageId}" class="form_select-items" ${(gm.languageId == lang.languageId) ? "selected" : ""} >${lang.language}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <p class="form__error">jet'aime le põrno</p>
                                                </div>
                                                <div class="form__group">
                                                    <label for="phone-number" class="form__label form-card__label">Lefts in stock : </label>
                                                    <div class="form__text-input">
                                                        <input
                                                            type="number"
                                                            name="instock"
                                                            id="instock"
                                                            placeholder="how many weeds you hide ..."
                                                            class="form__input"
                                                            value="${pd.inStock}"
                                                            required
                                                            />
                                                        <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                                    </div>
                                                    <p class="form__error">police's knocking ....</p>
                                                </div>
                                            </div>

                                            <div class="form__group">
                                                <label for="set-default-card" class="form__label form-card__label">Ignore all the above and delete this thing ?</label>
                                                <label class="form__checkbox">
                                                    <input
                                                        type="checkbox"
                                                        name="check"
                                                        id="set-default-card"
                                                        class="form__checkbox-input d-none"
                                                        />
                                                    <span class="form__checkbox-label">Seriously , READ that shit above carefully then tick</span>
                                                </label>
                                            </div>

                                            <div class="form-card__bottom">
                                                <a class="btn btn--text" href="${pageContext.request.contextPath}/">Cancel</a>
                                                <input type="submit" class="btn btn--primary btn--rounded"  name="proceed" value="Proceed">
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
