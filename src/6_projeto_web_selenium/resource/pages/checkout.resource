*** Settings ***
Resource    ../utils/base.resource

*** Variables ***


*** Keywords ***
Ir para carrinho    
    Wait Until Element Is Visible     id=menuCart
    Click Element    id=menuCart

Valida compra
    Wait Until Element Is Visible     id=trackingNumberLabel
    Element Should Be Visible    id=trackingNumberLabel

Realizar compra
    [Arguments]    ${user_safepay}    ${pass_safepay}
    Wait Until Element Is Visible     id=checkOutButton
    Click Button    id=checkOutButton
    
    Wait Until Element Is Visible     id=next_btn
    Click Button    id=next_btn

    Input Text    css=input[name="safepay_username"]    ${user_safepay}
    Input Password    css=input[name="safepay_password"]    ${pass_safepay}
    
    Wait Until Element Is Visible     id=pay_now_btn_SAFEPAY
    Click Button    id=pay_now_btn_SAFEPAY
