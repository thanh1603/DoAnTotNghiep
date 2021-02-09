<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html dir="ltr" lang="vi"><!--<![endif]-->
<head style="margin-bottom: 25px">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="theme-color" content="#FFFFFF">
    <title>Freshfood - Hệ thống cửa hàng thực phẩm sạch VietGAP</title> <!--<base href="http://ggffg.myzozo.net/">-->
    <base href=".">
    <link rel="dns-prefetch" href="http://fonts.googleapis.com/"> <!-- START STYLE -->
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/css/stylesheet.min.css'/>" >


    <script type="text/javascript"
            src="<c:url value='/resources/js/jquery-3.3.1.min.js.js'/>"></script>
    <script type="text/javascript"  src="<c:url value='/resources/vendor/jquery-ui-1.12.1/jquery-ui.min.js'/>"></script>
    <script src="<c:url value="/resources/js/parging.js"/>"></script>
    <%--<link href="/image/catalog/logo/fav.png" rel="icon">--%>
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/css/stylesheet.css'/>" >
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/vendor/jquery-ui-1.12.1/jquery-ui.min.css'/>">

    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/vendor/fontawesome-5.8.1-web/css/fontawesome.min.css'/>" >
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/css/mycss.css'/>" >
    <script type="text/javascript">
        var pargigInfo = {};
        pargigInfo.maxPage = ${pagingData.maxPage};
        pargigInfo.maxShow = ${pagingData.maxItemView};
        pargigInfo.pageCurrent = ${pagingData.pageCurrent};
        pargigInfo.total = ${pagingData.total};
    </script>
    <style type="text/css">.fb_hidden {
        position: absolute;
        top: -10000px;
        z-index: 10001
    }

    .fb_reposition {
        overflow: hidden;
        position: relative
    }

    .fb_invisible {
        display: none
    }

    .fb_reset {
        background: none;
        border: 0;
        border-spacing: 0;
        color: #000;
        cursor: auto;
        direction: ltr;
        font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
        font-size: 11px;
        font-style: normal;
        font-variant: normal;
        font-weight: normal;
        letter-spacing: normal;
        line-height: 1;
        margin: 0;
        overflow: visible;
        padding: 0;
        text-align: left;
        text-decoration: none;
        text-indent: 0;
        text-shadow: none;
        text-transform: none;
        visibility: visible;
        white-space: normal;
        word-spacing: normal
    }

    .fb_reset > div {
        overflow: hidden
    }

    @keyframes fb_transform {
        from {
            opacity: 0;
            transform: scale(.95)
        }
        to {
            opacity: 1;
            transform: scale(1)
        }
    }

    .fb_animate {
        animation: fb_transform .3s forwards
    }

    .fb_dialog {
        background: rgba(82, 82, 82, .7);
        position: absolute;
        top: -10000px;
        z-index: 10001
    }

    .fb_dialog_advanced {
        border-radius: 8px;
        padding: 10px
    }

    .fb_dialog_content {
        background: #fff;
        color: #373737
    }

    .fb_dialog_close_icon {
        background: url(<c:url value="/resources/images/IE9JII6Z1Ys.png"/>) no-repeat scroll 0 0 transparent;
        cursor: pointer;
        display: block;
        height: 15px;
        position: absolute;
        right: 18px;
        top: 17px;
        width: 15px
    }

    .fb_dialog_mobile .fb_dialog_close_icon {
        left: 5px;
        right: auto;
        top: 5px
    }

    .fb_dialog_padding {
        background-color: transparent;
        position: absolute;
        width: 1px;
        z-index: -1
    }

    .fb_dialog_close_icon:hover {
        background: url(<c:url value="/resources/images/IE9JII6Z1Ys.png"/>) no-repeat scroll 0 -15px transparent
    }

    .fb_dialog_close_icon:active {
        background: url(<c:url value="/resources/images/IE9JII6Z1Ys.png"/>) no-repeat scroll 0 -30px transparent
    }

    .fb_dialog_iframe {
        line-height: 0
    }

    .fb_dialog_content .dialog_title {
        background: #6d84b4;
        border: 1px solid #365899;
        color: #fff;
        font-size: 14px;
        font-weight: bold;
        margin: 0
    }

    .fb_dialog_content .dialog_title > span {
        background: url(<c:url value="/resources/images/Cou7n-nqK52.gif"/>) no-repeat 5px 50%;
        float: left;
        padding: 5px 0 7px 26px
    }

    body.fb_hidden {
        height: 100%;
        left: 0;
        margin: 0;
        overflow: visible;
        position: absolute;
        top: -10000px;
        transform: none;
        width: 100%
    }

    .fb_dialog.fb_dialog_mobile.loading {
        background: url(<c:url value="/resources/images/3rhSv5V8j3o.gif"/>) white no-repeat 50% 50%;
        min-height: 100%;
        min-width: 100%;
        overflow: hidden;
        position: absolute;
        top: 0;
        z-index: 10001
    }

    .fb_dialog.fb_dialog_mobile.loading.centered {
        background: none;
        height: auto;
        min-height: initial;
        min-width: initial;
        width: auto
    }

    .fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
        width: 100%
    }

    .fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
        background: none
    }

    .loading.centered #fb_dialog_loader_close {
        clear: both;
        color: #fff;
        display: block;
        font-size: 18px;
        padding-top: 20px
    }

    #fb-root #fb_dialog_ipad_overlay {
        background: rgba(0, 0, 0, .4);
        bottom: 0;
        left: 0;
        min-height: 100%;
        position: absolute;
        right: 0;
        top: 0;
        width: 100%;
        z-index: 10000
    }

    #fb-root #fb_dialog_ipad_overlay.hidden {
        display: none
    }

    .fb_dialog.fb_dialog_mobile.loading iframe {
        visibility: hidden
    }

    .fb_dialog_mobile .fb_dialog_iframe {
        position: sticky;
        top: 0
    }

    .fb_dialog_content .dialog_header {
        background: linear-gradient(from(#738aba), to(#2c4987));
        border-bottom: 1px solid;
        border-color: #1d3c78;
        box-shadow: white 0 1px 1px -1px inset;
        color: #fff;
        font: bold 14px Helvetica, sans-serif;
        text-overflow: ellipsis;
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
        vertical-align: middle;
        white-space: nowrap
    }

    .fb_dialog_content .dialog_header table {
        height: 43px;
        width: 100%
    }

    .fb_dialog_content .dialog_header td.header_left {
        font-size: 12px;
        padding-left: 5px;
        vertical-align: middle;
        width: 60px
    }

    .fb_dialog_content .dialog_header td.header_right {
        font-size: 12px;
        padding-right: 5px;
        vertical-align: middle;
        width: 60px
    }

    .fb_dialog_content .touchable_button {
        background: linear-gradient(from(#4267B2), to(#2a4887));
        background-clip: padding-box;
        border: 1px solid #29487d;
        border-radius: 3px;
        display: inline-block;
        line-height: 18px;
        margin-top: 3px;
        max-width: 85px;
        padding: 4px 12px;
        position: relative
    }

    .fb_dialog_content .dialog_header .touchable_button input {
        background: none;
        border: none;
        color: #fff;
        font: bold 12px Helvetica, sans-serif;
        margin: 2px -12px;
        padding: 2px 6px 3px 6px;
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
    }

    .fb_dialog_content .dialog_header .header_center {
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        line-height: 18px;
        text-align: center;
        vertical-align: middle
    }

    .fb_dialog_content .dialog_content {
        background: url(<c:url value="/resources/images/jKEcVPZFk-2.gif"/>) no-repeat 50% 50%;
        border: 1px solid #4a4a4a;
        border-bottom: 0;
        border-top: 0;
        height: 150px
    }

    .fb_dialog_content .dialog_footer {
        background: #f5f6f7;
        border: 1px solid #4a4a4a;
        border-top-color: #ccc;
        height: 40px
    }

    #fb_dialog_loader_close {
        float: left
    }

    .fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
    }

    .fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
        visibility: hidden
    }

    #fb_dialog_loader_spinner {
        animation: rotateSpinner 1.2s linear infinite;
        background-color: transparent;
        background-image: url(<c:url value="/resources/images/t-wz8gw1xG1.png"/>);
        background-position: 50% 50%;
        background-repeat: no-repeat;
        height: 24px;
        width: 24px
    }

    @keyframes rotateSpinner {
        0% {
            transform: rotate(0deg)
        }
        100% {
            transform: rotate(360deg)
        }
    }

    .fb_iframe_widget {
        display: inline-block;
        position: relative
    }

    .fb_iframe_widget span {
        display: inline-block;
        position: relative;
        text-align: justify
    }

    .fb_iframe_widget iframe {
        position: absolute
    }

    .fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span, .fb_iframe_widget_fluid_desktop iframe {
        max-width: 100%
    }

    .fb_iframe_widget_fluid_desktop iframe {
        min-width: 220px;
        position: relative
    }

    .fb_iframe_widget_lift {
        z-index: 1
    }

    .fb_iframe_widget_fluid {
        display: inline
    }

    .fb_iframe_widget_fluid span {
        width: 100%
    }</style>
</head>
<div id="dialog"></div>
<body class="common-home">
<header class="header">
    <div class="topbar hidden-sm hidden-xs">
        <div class="container">
            <div>
                <div class="row">
                    <div class="col-sm-6 col-md-6 a-left">
                        <ul class="list-inline f-left info-header">
                            <c:if test="${requestScope.user != null}">
                                <li><i class="fa fa-mobile"></i> <b>Điện thoại:</b> <span> <a href="tell:0123456789"> ${user.phone}</a> </span>
                                </li>
                                <li class="margin-left-20"><i class="fa fa-envelope"></i> <b>Email:</b> <span> <a
                                        href="${pageContext.request.contextPath}/cart/order">${user.email}</a> </span></li>
                            </c:if>

                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <ul class="list-inline f-right">
                            <c:if test="${user == null}">
                                <li><a href="${pageContext.request.contextPath}/login"><i class="fa fa-user"></i> Đăng nhập</a>
                                </li>
                                <li><span> -</span></li>
                                <li><a href="${pageContext.request.contextPath}/register">Đăng ký</a></li>
                                <li class="li-search hidden"><a href="javascript:void(0)"><i class="fa fa-search"></i></a>
                                    <div class="dropdown topbar-dropdown hidden-md hidden-sm hidden-xs">
                                        <div class="content a-center">
                                            <div class="header_search search_form">
                                                <div class="form input-group search-bar search_form"><input type="search"
                                                                                                            name="search"
                                                                                                            value=""
                                                                                                            placeholder="Tìm kiếm"
                                                                                                            class="input-group-field st-default-search-input search-text"
                                                                                                            autocomplete="off">
                                                    <span class="input-group-btn"> <button
                                                            class="btn icon-fallback-text"> <i
                                                            class="fa fa-search"></i> </button> </span></div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </c:if>
                            <c:if test="${user != null}">
                                <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="header-content clearfix a-center">
            <div class="row">
                <div class="col-xs-12 col-md-3 text-lg-left">
                    <div class="logo inline-block" id="logo"><a href="/" class="logo-wrapper">
                        <img src="<c:url value='/resources/images/logo_small-2.png'/>"
                             alt="Fresh Food"> </a></div>
                </div>
                <div class="col-xs-12 col-md-8 col-lg-7 hidden-xs header_services">
                    <div class="policy d-flex justify-content-around " id="header_services-0"
                         style="background-image: none;">
                        <div class="item-policy d-flex align-items-center" ><a href="javascript:void(0)">
                            <img src="<c:url value='/resources/images/policy1-0x0.png'/>"
                                 alt="Miễn phí vận chuyển" class="fa"> </a>
                            <div class="info a-left"><a href="javascript:void(0)"> Miễn phí vận chuyển</a>
                                <p></p>
                                <p>Bán kính 100 km</p>
                                <p></p></div>
                        </div>
                        <div class="item-policy d-flex align-items-center" ><a href="javascript:void(0)">
                            <img src="<c:url value='/resources/images/policy2-0x0.png'/>"
                                 alt=" Hỗ trợ 24/7" class="fa"> </a>
                            <div class="info a-left"><a href="javascript:void(0)"> Hỗ trợ 24/7</a>
                                <p></p>
                                <p>Hotline:&nbsp;<a href="callto:19001009">0123456789</a></p>
                                <p></p></div>
                        </div>
                        <div class="item-policy d-flex align-items-center" ><a href="javascript:void(0)">
                            <img src="<c:url value='/resources/images/policy3-0x0.png'/>"
                                 alt="Giờ làm việc" class="fa"> </a>
                            <div class="info a-left"><a href="javascript:void(0)"> Giờ làm việc</a>
                                <p></p>
                                <p>T2 - T7 Giờ hành chính</p>
                                <p></p></div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-1 col-lg-2 hidden-sm hidden-xs">
                    <div class="top-cart-contain f-right ">
                        <div id="cart" class="mini-cart text-xs-center">
                            <div class="heading-cart"><a href="${pageContext.request.contextPath}/cart">
                                <div class="icon f-left relative"><i class="fa fa-shopping-bag"></i> <span
                                        class="cartCount count_item_pr hidden-lg" id="cart-total">1</span></div>
                                <div class="right-content hidden-md"><span class="label">Giỏ hàng</span> <span
                                        class="cartCount2">(${cartSize})</span></div>
                            </a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-bar hidden-md hidden-lg"><img
                src="<c:url value='/resources/images/menu-bar.png'/>" alt="menu bar"></div>
        <div class="icon-cart-mobile hidden-md hidden-lg f-left absolute"
             onclick="window.location.href='${pageContext.request.contextPath}/cart'">
            <div class="icon relative"><i class="fa fa-shopping-bag"></i> <span class="cartCount count_item_pr">(${cartSize})</span>
            </div>
        </div>
    </div>
    <nav class="sticky">
        <div class="container">
            <div class="hidden-sm hidden-xs">
                <ul class="nav nav-left">
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="${pageContext.request.contextPath}">Trang chủ</a>
                    </li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="${pageContext.request.contextPath}/introduce">Giới
                        thiệu</a></li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="${pageContext.request.contextPath}/product">Sản
                        phẩm</a></li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="${pageContext.request.contextPath}/information">Tin
                        tức</a></li>
                    <li class="nav-item nav-item-lv1"><a class="nav-link" href="${pageContext.request.contextPath}/contact">Liên
                        hệ</a></li>
                </ul>
                <div class="menu-search f-right bbbbb">
                    <div class="header_search search_form">

                           <div class="form input-group search-bar search_form">
                                <form method="get" action="${pageContext.request.contextPath}/product/search"><input type="search" name="textSearch" value="${textSearch}"
                                                                                       placeholder="Tìm kiếm"
                                                                                       class="input-group-field st-default-search-input search-text"
                                                                                       autocomplete="off"> <span
                                   class="input-group-btn"> <button class="btn icon-fallback-text"> <i
                                   class="fa fa-search"></i> </button> </span> </form></div>

                    </div>
                </div>
            </div>
            <div class="hidden-lg hidden-md menu-offcanvas">
                <div class="head-menu clearfix">
                    <ul class="list-inline">
                        <li><a href="${pageContext.request.contextPath}/login"><i class="fa fa-user"></i> Đăng nhập</a>
                        </li>
                        <li><span> -</span></li>
                        <li><a href="${pageContext.request.contextPath}/register">Đăng ký</a></li>
                        <li class="li-search">
                            <div class="header_search search_form">
                                <div class="form input-group search-bar search_form"><input type="search" name="search"
                                                                                            value=""
                                                                                            placeholder="Tìm kiếm"
                                                                                            class="input-group-field st-default-search-input search-text"
                                                                                            autocomplete="off"> <span
                                        class="input-group-btn"> <button class="btn icon-fallback-text"> <i
                                        class="fa fa-search"></i> </button> </span></div>
                            </div>
                        </li>
                    </ul>
                    <div class="menuclose"><i class="fa fa-close"></i></div>
                </div>
                <ul id="nav-mobile" class="nav hidden-md hidden-lg">
                    <li class="nav-item"><a class="nav-link" href="/">Trang chủ</a></li>
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/introduce">Giới thiệu</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/product">Sản phẩm</a></li>
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/information">Tin tức</a></li>
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>


<script type="text/javascript">
    function formatMoney(amount, decimalCount = 0, decimal = ".", thousands = ".") {
        try {
            decimalCount = Math.abs(decimalCount);
            decimalCount = isNaN(decimalCount) ? 2 : decimalCount;

            var negativeSign = amount < 0 ? "-" : "";

            var i = parseInt(amount = Math.abs(Number(amount) || 0).toFixed(decimalCount)).toString();
            var j = (i.length > 3) ? i.length % 3 : 0;

            return negativeSign + (j ? i.substr(0, j) + thousands : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands) + (decimalCount ? decimal + Math.abs(amount - i).toFixed(decimalCount).slice(2) : "");
        } catch (e) {
            console.log(e)
        }
    };
</script>