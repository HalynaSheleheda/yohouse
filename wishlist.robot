*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify wishlist
    Autorisation
    Open Decor Menu Tab
    Add Item In Wishlist

Verify the wishlist cleaning
    Autorisation
    Open Decor Menu Tab
    Add Item In Wishlist
    Sleep  5
    Click Link  xpath=//*[@id="yith-wcwl-row-5996"]/td[6]/div/a
    Page Should Contain Element  css=#yith-wcwl-form > table > tbody > tr > td