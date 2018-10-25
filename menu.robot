*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify Accessories menu tab
    Autorisation
    Open Accessories Menu Tab

Verify Decor menu tab
    Autorisation
    Open Decor Menu Tab

Verify Dishes menu tab
    Autorisation
    Click Link  css=#menu-main-menu-1 > li.posuda.menu-item.menu-item-type-taxonomy.menu-item-object-product_cat.menu-item-has-children.menu-item-5150 > a
    Page Should Contain Element  css=ul.product-categories > li.cat-item-809.current-cat

Verify Discounts menu tab
    Autorisation
    Click Link  css=#menu-main-menu-1 > li.menu-item.menu-item-type-taxonomy.menu-item-object-product_cat.menu-item-5222 > a
    Page Should Contain Element  css=ul.product-categories > li.cat-item-950.current-cat

Verify Season Products menu tab
    Autorisation
    Click Link  css=#menu-main-menu-1 > li.menu-item.menu-item-type-taxonomy.menu-item-object-product_cat.menu-item-has-children.menu-item-5223 > a
    Page Should Contain Element  css=ul.product-categories > li.cat-item-811.current-cat

Verify Reviews menu tab
    Autorisation
    Click Link  css=#menu-main-menu-1 > li.menu-item.menu-item-type-post_type.menu-item-object-page.menu-item-5728 > a
    Page Should Contain  Отзывы наших покупателей


