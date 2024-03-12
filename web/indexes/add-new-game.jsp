<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>add new item | the game gate.</title>

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
            <div class="container col-12 col-xl-12 col-lg-12" >
                <div class="cart-info">
                    <div class="row gy-3">
                        <div class="col-12">
                            <h2 class="cart-info__heading">
                                <a href="${pageContext.request.contextPath}/ItemListControl">
                                    <img src="${pageContext.request.contextPath}/assets/icons/arrow-left.svg" alt="" class="icon cart-info__back-arrow" />
                                </a>
                                Add new game
                            </h2>

                            <form action="${pageContext.request.contextPath}/Add" class="form form-card" method="post">
                                <!-- Form row 1 -->
                                <div class="form__row">
                                    <div class="form__group">
                                        <label  class="form__label form-card__label"> Game's title : </label>
                                        <div class="form__text-input">
                                            <input
                                                type="text"
                                                name="name"
                                                id="name"
                                                placeholder="what ever you wanna call it"
                                                class="form__input"
                                                required
                                                />
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">the</p>
                                    </div>
                                </div>
                                <div class="form__row">

                                    <div class="form__group">
                                        <label  class="form__label form-card__label"> Game's description : </label>
                                        <div class="form__text-input">
                                            <input
                                                type="text"
                                                name="description"
                                                id="desc"
                                                placeholder="what is the game description"
                                                class="form__input"
                                                required
                                                />
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">what will you do if nobody knows about you</p>
                                    </div>
                                </div>

                                <!-- Form row 2 -->
                                <div class="form__row">
                                    <div class="form__group">
                                        <label  class="form__label form-card__label"> Category : </label>
                                        <select name="category" class="form_select form__text-input" style="width: 100%;font-size: 1.6rem;font-weight: 500">
                                            <c:forEach items="${cateList}" var="cate">
                                                <option value="${cate.categoryId}" class="form_select-items" >${cate.category}</option>
                                            </c:forEach>
                                        </select>
                                        <p class="form__error">Crazy to think that you don't even know wtf is a category ...</p>
                                    </div>
                                    <div class="form__group">
                                        <label  class="form__label form-card__label"> The "child" of Category :
                                        </label>
                                        <select name="subcategory" class="form_select form__text-input" style="width: 100%;font-size: 1.6rem;font-weight: 500">
                                            <c:forEach items="${subcateList}" var="subcate">
                                                <option value="${subcate.subcategoryId}" class="form_select-items"  >${subcate.subcategory}</option>
                                            </c:forEach>
                                        </select>
                                        <p class="form__error">what a father, doesn't even know his own sons ...</p>
                                    </div>
                                    <div class="form__group">
                                        <label  class="form__label form-card__label"> Language : </label>
                                        <select name="language" class="form_select form__text-input" style="width: 100%;font-size: 1.6rem;font-weight: 500">
                                            <c:forEach items="${langList}" var="lang">
                                                <option value="${lang.languageId}" class="form_select-items" >${lang.language}</option>
                                            </c:forEach>
                                        </select>
                                        <p class="form__error">jet'aime le põrno</p>
                                    </div>
                                    <div class="form__group">
                                        <label  class="form__label form-card__label">Release Date : </label>
                                        <div class="form__text-input">
                                            <input type="text" name="releaseDate" id="releaseDate" placeholder="yyyy-mm-dd" required style="width: 100%;font-size: 1.6rem;font-weight: 500">
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">Even date and time was not included in your knowledge ...</p>
                                    </div>
                                </div>

                                <!-- Form row 3 -->
                                <div class="form__row">
                                    <div class="form__group">
                                        <label  class="form__label form-card__label">Publisher :</label>
                                        <div class="form__text-input">
                                            <input
                                                type="text"
                                                name="publisher"
                                                id="publisher"
                                                placeholder="who's the mom ?"
                                                class="form__input"
                                                required
                                                autofocus
                                                />
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">That's not the mom !</p>
                                    </div>
                                    <div class="form__group">
                                        <label  class="form__label form-card__label"> Developer : </label>
                                        <div class="form__text-input">
                                            <input
                                                type="text"
                                                name="developer"
                                                id="developer"
                                                placeholder="what about it's dad ..."
                                                class="form__input"
                                                required
                                                />
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">maybe try to think like a normal person</p>
                                    </div>
                                </div>
                                <!-- Form row 4-->
                                <div class="form__row">
                                    <div class="form__group">
                                        <label  class="form__label form-card__label"> How many in the garage : </label>
                                        <div class="form__text-input">
                                            <input
                                                type="number"
                                                name="inStock"
                                                id="instock"
                                                placeholder="give it to me"
                                                class="form__input"
                                                required
                                                />
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">try to keep it hidden</p>
                                    </div>

                                    <div class="form__group">
                                        <label class="form__label form-card__label"> Price : </label>
                                        <div class="form__text-input">
                                            <input
                                                type="number"
                                                name="price"
                                                id="price"
                                                placeholder="take the money already"
                                                class="form__input"
                                                required
                                                />
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">don't make it too high , please...</p>
                                    </div>
                                    <div class="form__group">
                                        <label class="form__label form-card__label">Image URL : /images/*name </label>
                                        <div class="form__text-input">
                                            <input
                                                type="text"
                                                name="image"
                                                id="image"
                                                class="form__input"
                                                placeholder="sorry, don't have time + knowledge to handle files"
                                                />
                                            <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                                        </div>
                                        <p class="form__error">this file may give you 1 billion viruses</p>
                                    </div>
                                </div>

                                <div class="form-card__bottom">
                                    <a class="btn btn--text" href="${pageContext.request.contextPath}/">Cancel</a>
                                    <input type="submit" value="Proceed" class="btn btn--primary btn--rounded" ></button>
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


</body>
</html>
