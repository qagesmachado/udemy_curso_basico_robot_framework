*** Settings ***

Suite Setup    Abrir página
Suite Teardown    Fechar página
Test setup    Fazer login
Test Teardown    Fazer Logout

*** Variables ***
# robot -d ./results src\1_estruturas_basicas\11_setup_teardwon.robot

    
*** Test Cases ***
Teste 1
    Log To Console    Hello world

Teste 2
    Log To Console    Hello world

Teste 3
    Log To Console    Hello world

Teste 4
    Log To Console    Hello world

*** Keywords ***
Abrir página
    Log To Console    Abrindo a página
Fechar página
    Log To Console    Fechando a página
Fazer login
    Log To Console    Fazendo login
Fazer Logout
    Log To Console    Fazendo logout

