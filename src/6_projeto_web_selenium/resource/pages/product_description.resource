*** Settings ***
Resource    ../utils/base.resource

*** Variables ***


*** Keywords ***
Adiciona produto ao carrinho
    Wait Until Element Is Visible     css=button[name=save_to_cart]
    Click Element    css=button[name=save_to_cart]