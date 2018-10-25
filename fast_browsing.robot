*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify the Fast browsing
    Autorisation
    Open Decor Menu Tab
    Sleep  5
    Mouse Over  css=li:nth-child(1) > .wrap-product-item > .wrap-product-img > a.wrap-img
    Click Element  css=#content-product > ul > li.style-1.col-xs-6.col-sm-4.post-5987.product.type-product.status-publish.has-post-thumbnail.product_cat-dekor-interera.product_cat-1221.first.instock.shipping-taxable.purchasable.product-type-variable.has-default-attributes.col-md-3 > div > div.wrap-product-img > div > div.ef-view > a > i
    Wait Until Page Contains Element  id=product-5987  30