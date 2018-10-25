*** Settings ***
Library           Selenium2Library  30  15

*** Variables ***
${BROWSER}    Chrome
${URL}        http://yohouse.com.ua/
${LOGIN}      css=.login
${LOGIN_F}    css=.wrap-login-form
${USERNAME}   id=username
${PASSWORD}   id=password
${BUTTON_A}   css=.woocommerce-Button.button

*** Keywords ***
Prepare Test Environment
    Open Browser  ${URL}  ${BROWSER}

Autorisation
    Sleep  5
    Click Element  ${LOGIN}
    Wait Until Element Is Visible  ${LOGIN_F}  30
    Input Text  ${USERNAME}  shelegedagalina7@gmail.com
    Input Text  ${PASSWORD}  inter7705029
    Click Button  ${BUTTON_A}
    Mouse Over  css=ul > li.icon-user.logout > a > i
    Wait Until Element Is Visible  css=.woocommerce-MyAccount-navigation  30

Open Decor Menu Tab
    Click Link  css=#menu-main-menu-1 > li.menu-item.menu-item-type-taxonomy.menu-item-object-product_cat.menu-item-has-children.menu-item-5144 > a
    Wait Until Page Contains Element  css=ul.product-categories > li:nth-child(2).current-cat  30

Add Item In Cart
    Sleep  5
    Click Link  css=li:nth-child(13) > .wrap-product-item > .wrap-product-img > a
    Sleep  5
    Click Button  css=.wrap-ql-atc > button
    Wait Until Page Contains Element  css=.wrap-mini-cart  30
    Click Link  css=#site-branding > div > ul > li.top-ajax-cart > div > div.wrap-mini-cart > div > div.bottom-cart > div.buttons > a:nth-child(1)
    Wait Until Page Contains  Набор кухонных полотенец - happy

Add Item In Wishlist
    Sleep  5
    Click Link  css=li:nth-child(3) > .wrap-product-item > .wrap-product-img > a
    Sleep  5
    Click Element  css=#product-5996 > div.wrap-top-single-product > div.summary.entry-summary.wrap-right-single-product > form > div.single_variation_wrap > div > div > div.wl-cp > div
    Sleep  5
    Click Element  css=.top-wl-url
    Page Should Contain Element  id=yith-wcwl-row-5996

Open Accessories Menu Tab
    Click Link  css=#menu-main-menu-1 > li.menu-item.menu-item-type-taxonomy.menu-item-object-product_cat.menu-item-has-children.menu-item-5138 > a
    Page Should Contain Element  css=ul.product-categories > li:nth-child(1).current-cat  30

