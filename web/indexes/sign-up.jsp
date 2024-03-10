<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>sign up­ | the game gate.</title>

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
            <div class="auth__intro">
                <div class="logo auth__intro-logo d-none d-md-flex">
                    <h1 class="logo__title">the game gate.</h1>
                </div>
                <img src="${pageContext.request.contextPath}/assets/assets/game_bg/Gaming-rafiki.png" alt="" class="auth__intro-img" />
                <p class="auth__intro-text">Relieve from your daily basis , hop on in to the new world's game community.</p>
                <button class="auth__intro-next d-none d-md-flex js-toggle" toggle-target="#auth-content">
                    <img src="${pageContext.request.contextPath}/assets/img/auth/intro-arrow.svg" alt="" />
                </button>
            </div>

            <!-- Auth content -->
            <div id="auth-content" class="auth__content hide">
                <div class="auth__content-inner">
                    <a href="${pageContext.request.contextPath}/" class="logo">
                        <h1 class="logo__title">the game gate.</h1>
                    </a>
                    <h1 class="auth__heading">Join us !­</h1>
                    <p class="auth__desc">Into the game gate's great community.</p>
                    <span class="auth__desc">Create your own empire , become a leader to the new world's path</span>
                    <form action="${pageContext.request.contextPath}/SignUpControl" class="form auth__form" method="post">
                        <div class="form__group">
                            <div class="form__text-input">
                                <input type="text" name="firstname" id="" placeholder="firstname" class="form__input"  autofocus  required />
                                <input type="text" name="lastname" id="" placeholder="lastname" class="form__input"required />
                            </div>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input type="text" name="telephone" id="" placeholder="telephone" class="form__input" required />
                            </div>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input type="text" name="address" id="" placeholder="address" class="form__input"  required />
                            </div>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input type="email" name="email" id="" placeholder="email" class="form__input"  required />
                                <img src="${pageContext.request.contextPath}/assets/icons/message.svg" alt="" class="form__input-icon" />
                                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                            </div>
                            <p class="form__error">Invalid email format !</p>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input
                                    type="password"
                                    name="verifyPassword"
                                    id=""
                                    placeholder="password"
                                    class="form__input"
                                    required
                                    minlength="6"
                                    />
                                <img src="${pageContext.request.contextPath}/assets/icons/lock.svg" alt="" class="form__input-icon" />
                                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                            </div>

                            <p class="form__error">Invalid password format !</p>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input
                                    type="password"
                                    name="password"
                                    id=""
                                    placeholder="verify password"
                                    class="form__input"
                                    required
                                    minlength="6"
                                    />
                                <img src="${pageContext.request.contextPath}/assets/icons/lock.svg" alt="" class="form__input-icon" />
                                <img src="${pageContext.request.contextPath}/assets/icons/form-error.svg" alt="" class="form__input-icon-error" />
                            </div>
                            <p class="form__error">Invalid password format</p>
                        </div>
                        <div class="form__group form__group--inline">
                            <label class="form__checkbox">
                                <input type="checkbox" name="setDefaultSignIn" id="" class="form__checkbox-input d-none" />
                                <span class="form__checkbox-label">Set as default sign-in account.</span>
                            </label>
                        </div>
                        <div class="form__group auth__btn-group">
                            <button class="btn btn--primary auth__btn form__submit-btn"  type="submit" value="signup" >Sign Up</button>
                            <button class="btn btn--outline auth__btn btn--no-margin">
                                <img src="${pageContext.request.contextPath}/assets/icons/google.svg" alt="" class="btn__icon icon"/>
                                Sign in with Google
                            </button>
                        </div>
                    </form>


                    <p class="auth__text">
                        Already had an account ?
                        <a href="${pageContext.request.contextPath}/LoginControl" class="auth__link auth__text-link">Sign-in here.</a>
                    </p>
                </div>
            </div>
        </main>
        <script>
            window.dispatchEvent(new Event("template-loaded"));
        </script>
    </body>
</html>
