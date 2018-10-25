*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify search by product name
    Autorisation
    Click Element  css=.search
    Input Text  css=#ajaxsearchlite1 > div > div.proinput > form > input.orig  ваза
    Wait Until Element Is Visible  css=#mCSBap_1_container
