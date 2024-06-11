
*** Settings ***
Resource    base.resource

*** Keywords ***
Create Session
    [Arguments]    ${URL}
    New Browser    browser=chromium     headless=false
    New Page       url=${URL}

Close Session
    Close Page
    Close Browser
