*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify user autorisation
    Autorisation

Verify the login of not registered user
    Sleep  5
    Click Element  ${LOGIN}
    Wait Until Element Is Visible  ${LOGIN_F}  30
    Input Text  ${USERNAME}  galina@gmail.com
    Input Text  ${PASSWORD}  1234567
    Click Button  css=.woocommerce-Button.button
    Page Should Contain Element  css=.woocommerce-error


    


