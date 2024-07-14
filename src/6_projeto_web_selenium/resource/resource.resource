*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
# Login
Inicia sessão
    Open Browser    url=https://www.advantageonlineshopping.com/#/    browser=chrome    options=add_experimental_option("detach", True)

Login
    [Arguments]    ${username}    ${password}
    Click Element    id=menuUser
    
    Wait Until Element Is Visible    css=input[name="username"] 
    Input Text    css=input[name="username"]    text=${username}
    Input Password    css=input[name="password"]    password=${password}

    Click Button    id=sign_in_btn

Valida Login sucesso
    Wait Until Page Contains Element    //*[@id="menuUserLink"]/span[contains(text(),'robot_qa_basic')] 
    Wait Until Page Contains    text=robot_qa_basic

Valida Login incorreto
    Wait Until Page Contains    text=Incorrect user name or password.

Encerra sessão
    Close All Browsers

# # Checkout
Busca produto por imagem
    Wait Until Element Is Visible    id=speakersImg 
    Click Element    id=speakersImg 
    
Seleciona produto por ID
    Wait Until Element Is Visible    id=20 
    Click Element    id=20    

Adiciona produto ao carrinho
    Wait Until Element Is Visible    css=button[name="save_to_cart"]
    Click Element    css=button[name="save_to_cart"]

Ir para carrinho
    Wait Until Element Is Visible    id=menuCart
    Click Element    id=menuCart

Realizar compra
    Wait Until Element Is Visible    id=checkOutButton
    Click Element    id=checkOutButton
    Wait Until Element Is Visible    id=next_btn
    Click Element    id=next_btn
    
    Wait Until Element Is Visible    css=input[name="safepay_username"]
    Clear Element Text    css=input[name="safepay_username"]
    Input Text    css=input[name="safepay_username"]    text=robot_qa_basic
    Clear Element Text    css=input[name="safepay_password"]
    Input Password    css=input[name="safepay_password"]    password=Teste123!@#       
    
    Click Element    id=pay_now_btn_SAFEPAY

Valida compra
    Wait Until Page Contains    text=Thank you for buying with Advantage

# 
