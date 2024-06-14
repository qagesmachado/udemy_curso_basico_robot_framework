# Todo esse aquivo é uma SUITE DE TESTE / SCRIPT DE TESTE

*** Settings ***
Library    RequestsLibrary

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

CT 1 - POST Request
    ${header}    Create Dictionary    Content-Type=application/json
    Create Session    alias=test    url=https://reqres.in/    headers=${header}    verify=true

    ${RESPONSE}    POST On Session    url=/api/register
    ...                alias=test
    ...                data={"email": "eve.holt@reqres.in","password": "pistol"}
    ...                headers=${header}
    
    Log To Console    ${RESPONSE.json()} 

    # Fim
    Delete All Sessions 

*** Keywords ***
