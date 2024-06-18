*** Settings ***
Resource    ../utils/base.resource

*** Keywords ***
Login
    [Arguments]    ${login_username}    ${login_password}
    Click Element    locator=id:menuUserLink
    Wait Until Element Is Visible    css=input[name="username"]

    Wait Until Element Is Visible    css=input[name="username"]
    Input Text    css=input[name="username"]     text=${login_username}
    Wait Until Element Is Visible    css=input[name="password"]
    Input Password    css=input[name="password"]    password=${login_password}
    
    Click Button    locator=id:sign_in_btn

Valida Login incorreto
    Wait Until Page Contains    Incorrect user name or password.
    Element Should Be Visible    id=signInResultMessage

Valida Login sucesso
    [Arguments]    ${login_username}
    Wait Until Page Contains    ${login_username}
    Element Should Be Visible    xpath=//*[@id="menuUserLink"]/span[contains(text(), "${login_username}")]

Encerra sessão
    Close All Browsers

Inicia sessão
    [Arguments]    ${url}
    Open Browser    url=${URL_BASE}     browser=chrome    options=add_experimental_option("detach", True)

Inicia sessão e faz login
    [Arguments]    ${url}    ${login_username}    ${login_password}
    Inicia sessão    ${url} 
    Login    ${login_username}    ${login_password}