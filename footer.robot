*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify link Abot Us
    Autorisation
    Click Link  css=#menu-item-5248 > a
    Page Should Contain  О нас

Verify link Payment
    Autorisation
    Click Link  css=.menu-item-5247 > a
    Page Should Contain  Оплата и доставка

Verify link Privacy Policy
    Autorisation
    Click Link  css=#menu-item-5566 > a
    Page Should Contain  Политика конфеденциальности