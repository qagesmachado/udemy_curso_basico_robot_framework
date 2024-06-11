*** Settings ***
Resource    ../utils/base.resource

*** Keywords ***
Delete my account
    Click    ${btn_delete_account}
    Click    ${btn_confirm_delete_account}

    Get Text    text=Account deleted Successfully