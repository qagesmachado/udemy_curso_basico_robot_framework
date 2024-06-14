# Todo esse aquivo é uma SUITE DE TESTE / SCRIPT DE TESTE

*** Settings ***
Library    RequestsLibrary

*** Variables ***

${alias}
${base_url}

*** Test Cases ***

CT 1 - Estrutura básica de teste de API
    # Início
    ${header}    Create Dictionary    Content-Type=application/json
    Create Session    alias=${alias}    url=${base_url}    headers=${header}    verify=true
    
    # Meio - Um desses comandos
    ${RESPONSE}    POST On Session    url=    alias=     data=    headers=${header}
    ${RESPONSE}    GET On Session    url=    alias=    headers=${header}
    ${RESPONSE}    PUT On Session    url=    alias=     data=    headers=${header}
    ${RESPONSE}    PATCH On Session    url=    alias=     data=    headers=${header}
    ${RESPONSE}    DELETE On Session    url=    alias=     data=    headers=${header}
    
    Log To Console    ${RESPONSE.json()}
    
    # Fim
    Delete All Sessions 

*** Keywords ***
