*** Settings ***
Resource    ../utils/base.resource

*** Keywords ***
Access create account page
    Click    ${btn_user}
    Click    ${btn_create_new_account}

Access my account page
    Click    ${btn_user}
    Click    ${btn_my_account}


