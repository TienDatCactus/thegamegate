<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Táº¡o máº­t kháº©u má»i | the game gate.</title>

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
    <main class="auth">
      <!-- Auth intro -->
      <div class="auth__intro d-md-none">
        <img src="${pageContext.request.contextPath}/assets/img/auth/forgot-password.png" alt="" class="auth__intro-img" />
      </div>

      <!-- Auth content -->
      <div class="auth__content">
        <div class="auth__content-inner">
          <a href="${pageContext.request.contextPath}/" class="logo">
            <img src="${pageContext.request.contextPath}/assets/icons/logo.svg" alt="grocerymart" class="logo__img" />
            <h2 class="logo__title">the game gate</h2>
          </a>
          <h1 class="auth__heading">Táº¡o máº­t kháº©u má»i</h1>
          <p class="auth__desc">Vá»i Ã­t nháº¥t 6 kÃ­ tá»± , kÃ¨m chá»¯ hoa vÃ  chá»¯ viáº¿t thÆ°á»ng.</p>
          <form action="${pageContext.request.contextPath}/sign-in.html" class="form auth__form auth__form-forgot">
            <div class="form__group">
              <div class="form__text-input">
                <input
                  type="password"
                  name=""
                  id=""
                  placeholder="máº­t kháº©u má»i"
                  class="form__input"
                  required
                  autofocus
                  minlength="6"
                />
                <img src="${pageContext.request.contextPath}/assets/icons/lock.svg" alt="" class="form__input-icon" />
                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
              </div>
              <p class="form__error">YÃªu cáº§u máº­t kháº©u tá»i thiá»u 6 kÃ­ tá»±</p>
            </div>
            <div class="form__group">
              <div class="form__text-input">
                <input
                  type="password"
                  name=""
                  id=""
                  placeholder="xÃ¡c nháº­n máº­t kháº©u má»i"
                  class="form__input"
                  required
                  minlength="6"
                />
                <img src="${pageContext.request.contextPath}/assets/icons/lock.svg" alt="" class="form__input-icon" />
                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
              </div>
              <p class="form__error">YÃªu cáº§u máº­t kháº©u tá»i thiá»u 6 kÃ­ tá»±</p>
            </div>
            <div class="form__group auth__btn-group">
              <button class="btn btn--primary auth__btn form__submit-btn">Äáº·t láº¡i máº­t kháº©u</button>
            </div>
          </form>
        </div>
      </div>
    </main>
    <script>
      window.dispatchEvent(new Event("template-loaded"));
    </script>
  </body>
</html>
