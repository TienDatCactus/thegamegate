<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>sign in | the game gate.</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/assets/favicon/apple-touch-icon.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/favicon/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/favicon/favicon-16x16.png" />
        <link rel="manifest" href="${pageContext.request.contextPath}/assets/favicon/site.webmanifest" />

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wdth,wght@0,62.5..100,100..900;1,62.5..100,100..900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap"
            rel="stylesheet"
            />
        <!-- Styles -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"" /> 
        <!-- Scripts -->
        <script src="${pageContext.request.contextPath}/assets/js/scripts.js"></script>
    </head>
    <body>
        <main class="auth">
            <!-- Auth intro -->
            <div class="auth__intro d-md-none">
                <img src="${pageContext.request.contextPath}/assets/assets/game_bg/Gaming-cuate.png" alt="" class="auth__intro-img" />
                <p class="auth__intro-text">Embrace gaming , enjoy life.</p>
            </div>

            <!-- Auth content -->
            <div class="auth__content">
                <div class="auth__content-inner">
                    <div class="logo">
                        <h2 class="logo__title">the game gate.</h2>
                    </div>
                    <h1 class="auth__heading">Welcome Back !</h1>
                    <p class="auth__desc">Let's get back to the track and dive deep into the gaming community.</p>
                    <form action="${pageContext.request.contextPath}/LoginControl" class="form auth__form" method="post">
                        <div class="form__group">
                            <div class="form__text-input">    
                                <input type="email" name="email" id="" placeholder="email" class="form__input" autofocus required />
                                <img src="${pageContext.request.contextPath}/assets/icons/message.svg" alt="" class="form__input-icon" />
                                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                            </div>
                            <p class="form__error">Invalid email format !</p>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input
                                    type="password"
                                    name="password"
                                    id=""
                                    placeholder="password"
                                    class="form__input"
                                    required
                                    minlength="6"
                                    />
                                <img src="${pageContext.request.contextPath}/assets/icons/lock.svg" alt="" class="form__input-icon" />
                                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                            </div>
                            <p class="form__error">Invalid Password Format</p>
                        </div>
                        <div class="form__group form__group--inline">
                            <label class="form__checkbox">
                                <input type="checkbox" name="" id="" class="form__checkbox-input d-none" />
                                <span class="form__checkbox-label">Remember Password</span>
                            </label>
                            <a href="${pageContext.request.contextPath}/indexes/reset-password.jsp" class="auth__link form__pull-right">Forgot Password ?</a>
                        </div>
                        <div class="form__group auth__btn-group">
                            <button class="btn btn--primary auth__btn form__submit-btn" type="submit" value="signin">Sign In</button>
                        </div>
                    </form>

                    <p class="auth__text">
                        Don't have an account ?
                        <a href="${pageContext.request.contextPath}/SignUpControl" class="auth__link auth__text-link">­Sign-up here.</a>
                    </p>
                </div>
            </div>
        </main>
        <script>
            window.dispatchEvent(new Event("template-loaded"));
        </script>
    </body>
</html>
