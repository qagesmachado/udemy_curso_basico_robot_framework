# Todo esse aquivo é uma SUITE DE TESTE / SCRIPT DE TESTE

*** Settings ***
Library    RequestsLibrary

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

CT 1 - Validação Status Code
    ${header}    Create Dictionary    Content-Type=application/json
    Create Session    alias=test    url=https://reqres.in/    headers=${header}    verify=true

    ${RESPONSE}    POST On Session    url=/api/register
    ...                alias=test
    ...                data={"email": "eve.holt@reqres.in","password": "pistol"}
    ...                headers=${header}
    ...                expected_status=200
    
    Log To Console    ${RESPONSE.json()}

    # Fim
    Delete All Sessions 

CT 2 - Validação resultado no response
    # Início
    ${header}    Create Dictionary    Content-Type=application/json
    Create Session    alias=test   url=https://reqres.in/    headers=${header}    verify=true
    
    # Meio - Um desses comandos
    ${RESPONSE}    GET On Session    url=/api/users?page=2    alias=test    headers=${header}

    Log To Console    ${RESPONSE.json()['total']}

    ${total}    Set Variable    ${RESPONSE.json()['total']}
    Log To Console    ${total}
    
    # Exemplos de erro
    # Should Be Equal        "${total}"   "12"         
    # Should Be Equal        ${total}     12   
    
    # Solução
    ${total}    Convert To String    ${total}
    Should Be Equal        ${total}     12   

    # Fim
    Delete All Sessions 

*** Keywords ***
