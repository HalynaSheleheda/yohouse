*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify the cart
    Autorisation
    Open Decor Menu Tab
    Add Item In Cart

Verify the cart cleaning
    Autorisation
    Open Decor Menu Tab
    Add Item In Cart
    Sleep  5
    Click Element  css=.product-remove > a > i
    Wait Until Page Contains Element  css=.wrap-cart-empty  30