# Todo esse aquivo é uma SUITE DE TESTE / SCRIPT DE TESTE

*** Settings ***
Library    RequestsLibrary

*** Variables ***

${alias}        teste
${base_url}     https://reqres.in/
${url}          /api/users

*** Test Cases ***

CT 1 - Estrutura básica de teste de API
    # Início
    ${header}    Create Dictionary    Content-Type=application/json
    Create Session    alias=${alias}    url=${base_url}    verify=true
    
    # Meio - Um desses comandos
    ${RESPONSE}    GET On Session    alias=${alias}    url=${url}
    Log To Console    ${RESPONSE.json()}

    # Fim
    Delete All Sessions

*** Keywords ***
