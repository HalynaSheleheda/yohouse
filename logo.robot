*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify the logo
    Autorisation
    Open Accessories Menu Tab
    Sleep  5
    Click Element  id=logo
    Page Should Contain   Интернет магазин посуды и декора YoHouse желает предоставить
