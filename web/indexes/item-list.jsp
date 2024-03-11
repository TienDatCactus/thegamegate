<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
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
                            <a href="${pageContext.request.contextPath}/" class="breadcrumbs__link">
                                Home
                                <img src="${pageContext.request.contextPath}/assets/icons/arrow-right.svg" alt="" />
                            </a>
                        </li>
                        <li>
                            <a href="#!" class="breadcrumbs__link breadcrumbs__link--current">Manage Products</a>
                        </li>
                    </ul>
                </div>

                <!-- Checkout content -->
                <div class="checkout-container">
                    <div class="row gy-xl-3">
                        <div class="col-8 col-xl-12">
                            <div class="cart-info">
                                <div class="cart-info__list">
                                    <c:forEach items="${productList}" var="pd">
                                        <article class="cart-item">
                                            <a href="${pageContext.request.contextPath}/ProductControl?id=${pd.productId}">
                                                <img src="${pageContext.request.contextPath}/${pd.imagePath}" alt="" class="cart-item__thumb" />
                                            </a>
                                            <div class="cart-item__content">
                                                <div class="cart-item__content-left">
                                                    <h3 class="cart-item__title">
                                                        <a href="${pageContext.request.contextPath}/ProductControl?id=${pd.productId}">${pd.name}</a>
                                                    </h3>
                                                    <c:forEach items="${gameList}" var="gm">
                                                        <c:if test="${pd.productId == gm.productId}">
                                                            <p class="cart-item__price-wrap">${gm.publisher} | ${gm.developer}</p>
                                                        </c:if>
                                                    </c:forEach>
                                                    <span class="cart-item__status"> In Stock : ${pd.inStock} lefts</span>
                                                    <div class="cart-item__ctrl cart-item__ctrl--md-block">
                                                        <c:forEach items="${gameList}" var="gm">
                                                            <c:if test="${pd.productId == gm.productId}">
                                                                <c:forEach items="${langList}" var="lang">
                                                                    <c:if test="${gm.languageId == lang.languageId}">
                                                                        <div class="cart-item__input">${lang.language}</div>   
                                                                    </c:if>
                                                                </c:forEach>
                                                            </c:if>
                                                        </c:forEach>
                                                        <div class="cart-item__input">
                                                            <c:forEach items="${gameList}" var="gm">
                                                                <c:if test="${pd.productId == gm.productId}">
                                                                    <c:forEach items="${cateList}" var="cate">
                                                                        <c:if test="${gm.categoryId == cate.categoryId}">
                                                                            <span>${cate.category}</span>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cart-item__content-right">
                                                    <p class="cart-item__total-price">$${pd.price}</p>
                                                    <div class="cart-item__ctrl">
                                                        <a class="cart-item__ctrl-btn" href="${pageContext.request.contextPath}/Delete?id=${pd.productId}">
                                                            <img src="${pageContext.request.contextPath}/assets/icons/trash.svg" alt="" />
                                                            Delete
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </c:forEach>
                                </div>
                                <div class="cart-info__bottom d-md-none">
                                    <div class="row">
                                        <div class="col-8 col-xxl-7">
                                            <div class="cart-info__continue">
                                                <a href="${pageContext.request.contextPath}/" class="cart-info__continue-link">
                                                    <img class="cart-info__continue-icon icon" src="${pageContext.request.contextPath}/assets/icons/arrow-down-2.svg" alt="" />
                                                    back to spending money
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 col-xl-12">
                            <div class="cart-info">
                                <div class="cart-info__row">
                                    <span>Amount <span class="cart-info__sub-label">( items ) :</span></span>
                                    <span>${fn:length(productList)}</span>
                                </div>
                                <div class="cart-info__separate"></div>
                                <div class="cart-info__row">
                                    <span>Total value :</span>
                                    <span>${procedure}</span>
                                </div>
                                <a href="${pageContext.request.contextPath}/Add" class="cart-info__next-btn btn btn--primary btn--rounded">
                                    add more products
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

    </body>
</html>
