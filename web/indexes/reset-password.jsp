<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>reset password | the game gate.</title>

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
        <img src="${pageContext.request.contextPath}/assets/assets/game_bg/Reset password-cuate.png" alt="" class="auth__intro-img" />
      </div>

      <!-- Auth content -->
      <div class="auth__content">
        <div class="auth__content-inner">
          <div class="logo">
            <h2 class="logo__title">the game gate.</h2>
          </div>
          <h1 class="auth__heading">Reset Password</h1>
          <p class="auth__desc">Enter your email for us to ship you a bomb.</p>
          <!-- <div class="auth__message message message--success">We have e-mailed your password reset link!</div> -->
          <form action="${pageContext.request.contextPath}/indexes/reset-password-emailed.jsp" class="form auth__form auth__form-forgot">
            <div class="form__group">
              <div class="form__text-input">
                <input type="email" name="" id="" placeholder="Email" class="form__input" autofocus required />
                <img src="${pageContext.request.contextPath}/assets/icons/message.svg" alt="" class="form__input-icon" />
                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
              </div>
              <p class="form__error">Invalid email format ! No bomb sended =((( </p>
            </div>
            <div class="form__group auth__btn-group">
              <button class="btn btn--primary auth__btn form__submit-btn">Reset Password</button>
            </div>
          </form>

          <p class="auth__text">
            <a href="${pageContext.request.contextPath}/indexes/sign-in.jsp" class="auth__link auth__text-link">Back to Sign-in.</a>
          </p>
        </div>
      </div>
    </main>
    <script>
      window.dispatchEvent(new Event("template-loaded"));
    </script>
  </body>
</html>
