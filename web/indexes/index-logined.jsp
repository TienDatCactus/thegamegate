<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <main class="container home">
            <!-- Slideshow -->
            <div class="home__container">
                <div class="slideshow">
                    <div class="slideshow__inner">
                        <div class="slideshow__item">
                            <a href="#!" class="slideshow__link">
                                <picture>
                                    <source media="(max-width: 767.98px)" srcset="${pageContext.request.contextPath}/assets/img/slideshow/item-1-md.png" />
                                    <img src="${pageContext.request.contextPath}/assets/assets/game_bg/6.jpg" alt="" class="slideshow__img" />
                                </picture>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Browse Categories -->
            <section class="home__container">
                <div class="home__row">
                    <h2 class="home__heading">Featured Games</h2>
                </div>
                <div class="home__cate row row-cols-3 row-cols-md-1">
                    <c:forEach items="${filtered}" var="pd" begin="2" end="4">
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
                                <c:forEach items="${gameList}" var="gm" >
                                    <c:if test="${pd.productId == gm.productId}">
                                        <p class="product-card__brand">${gm.publisher}</p>
                                    </c:if>
                                </c:forEach>
                                <div class="product-card__row">

                                    <c:forEach items="${gameList}" var="gm" >
                                        <c:if test="${pd.productId == gm.productId}">
                                            <span class="product-card__price">$${pd.price}</span>
                                        </c:if>
                                    </c:forEach>
                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                    <c:forEach items="${gameList}" var="gm" >
                                        <c:if test="${pd.productId == gm.productId}">
                                            <span class="product-card__score">${gm.rate}</span>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </article>
                        </div>
                    </c:forEach>
            </section>

            <!-- Browse Products -->
            <section class="home__container">
                <div class="home__row">
                    <h2 class="home__heading">Category : </h2>
                    <div class="filter-wrap">
                        <button class="filter-btn js-toggle" toggle-target="#home-filter">
                            Filter
                            <img src="${pageContext.request.contextPath}/assets/icons/filter.svg" alt="" class="filter-btn__icon icon" />
                        </button>

                        <div id="home-filter" class="filter hide">
                            <img src="${pageContext.request.contextPath}/assets/icons/arrow-up.png" alt="" class="filter__arrow" />
                            <h3 class="filter__heading">Sort by</h3>
                            <form action="CategoryControl" class="filter__form form" method="post">
                                <div class="filter__row filter__content">
                                    <!-- Filter column 1 -->
                                    <div class="filter__col">
                                        <label for="" class="form__label">Price</label>
                                        <div class="filter__form-group">
                                            <div class="filter__form-slider" style="--min-value: 10%; --max-value: 60%"></div>
                                        </div>
                                        <div class="filter__form-group filter__form-group--inline">
                                            <div>
                                                <label  class="form__label form__label--small">Minimum</label>
                                                <div class="filter__form-text-input filter__form-text-input--small">
                                                    <input type="text" name="minPrice" id="" class="filter__form-input" value="0" />
                                                </div>
                                            </div>
                                            <div>
                                                <label for="" class="form__label form__label--small">Maximum</label>
                                                <div class="filter__form-text-input filter__form-text-input--small">
                                                    <input type="text" name="maxPrice" id="" class="filter__form-input" value="0" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="filter__separate"></div>

                                    <!-- Filter column 2 -->
                                    <div class="filter__col">
                                        <label for="" class="form__label">Language</label>
                                        <div class="filter__form-group">
                                            <div class="form__select-wrap">
                                                <select name="language" class="form_select" style="width: 150px">
                                                    <c:forEach items="${langList}" var="lang">
                                                        <option value="${lang.languageId}" class="form_select-items">${lang.language}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="filter__separate"></div>

                                    <!-- Filter column 3 -->
                                    <div class="filter__col">
                                        <label for="" class="form__label">Category</label>
                                        <div class="filter__form-group">
                                            <div class="form__select-wrap">
                                                <select name="category" class="form_select" style="width: 150px">
                                                    <c:forEach items="${cateList}" var="cate">
                                                        <option value="${cate.categoryId}" class="form_select-items">${cate.category}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter__row filter__footer">
                                    <button class="btn btn--text filter__cancel js-toggle" toggle-target="#home-filter">Cancel</button>
                                    <input class="btn btn--primary filter__submit js-toggle" toggle-target="#home-filter" type="submit" value="Find">
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="row row-cols-5 row-cols-lg-2 row-cols-sm-1 g-3">
                    <c:forEach items="${productList}" var="pd">
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
                                <c:forEach items="${gameList}" var="gm" >
                                    <c:if test="${pd.productId == gm.productId}">
                                        <p class="product-card__brand">${gm.publisher}</p>
                                    </c:if>
                                </c:forEach>
                                <div class="product-card__row">

                                    <c:forEach items="${gameList}" var="gm" >
                                        <c:if test="${pd.productId == gm.productId}">
                                            <span class="product-card__price">$${pd.price}</span>
                                        </c:if>
                                    </c:forEach>
                                    <img src="${pageContext.request.contextPath}/assets/icons/star.svg" alt="" class="product-card__star" />
                                    <c:forEach items="${gameList}" var="gm" >
                                        <c:if test="${pd.productId == gm.productId}">
                                            <span class="product-card__score">${gm.rate}</span>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </article>
                        </div>
                    </c:forEach>
                </div>
            </section>
        </main>

        <!-- Footer -->
        <footer id="footer" class="footer"></footer>
        <script>
            load("#footer", "${pageContext.request.contextPath}/templates/footer.jsp");
        </script>
    </body>
</html>
