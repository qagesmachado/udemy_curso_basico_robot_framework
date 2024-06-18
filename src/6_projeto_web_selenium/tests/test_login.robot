*** Settings ***
Resource    ../resource/utils/base.resource  

*** Variables ***


*** Comments ***
robot -d ./results -L trace  src\6_projeto_web_selenium\tests\test_login.robot

*** Test Cases ***
Teste de Login com sucesso
    Inicia sessão    url=${URL_BASE}
    Login    login_username=${USERNAME}    login_password=${PASSWORD}
    Valida Login sucesso    ${USERNAME}
    Encerra sessão

Teste de login sem sucesso

    Inicia sessão    url=${URL_BASE}
    Login    login_username=nao_existe    login_password=nao_existe
    Valida Login incorreto
    Encerra sessão
    
*** Keywords ***
