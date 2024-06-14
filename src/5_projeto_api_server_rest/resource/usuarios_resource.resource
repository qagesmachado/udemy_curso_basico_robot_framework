*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem

*** Variables ***


*** Keywords ***
# CRUD
Criação de usuário

    # Getting the file
    ${body}    Get File    path=${EXECDIR}/src/5_projeto_api_server_rest/data_driven/user_create_template.json

    ${header}    Create Dictionary    Content-Type=application/json

    ${RESPONSE}    POST On Session    alias=api    url=/usuarios    headers=${header}    data=${body}    expected_status=201
    ${USER_ID}    Set Variable    ${RESPONSE.json()['_id']}
    Log To Console    ${USER_ID}

    [Return]    ${USER_ID}

Buscar usuário
    [Arguments]    ${USER_ID}    ${expected_status}    ${NOME}
    ${RESPONSE}    GET On Session    alias=api    url=/usuarios/${USER_ID}    expected_status=${expected_status}
    ${retorno_get}    Set Variable    ${RESPONSE.json()}


    ${nome_buscado}        Set Variable    ${RESPONSE.json()['nome']}
    Should Be Equal    ${nome_buscado}     ${NOME}

    
    Log To Console    ${retorno_get}

Atualizar usuário
    [Arguments]    ${USER_ID} 
    ${header}    Create Dictionary    Content-Type=application/json

    # Getting the file
    ${body}    Get File    path=${EXECDIR}/src/5_projeto_api_server_rest/data_driven/user_update_template.json

    ${RESPONSE}    PUT On Session    alias=api    url=/usuarios/${USER_ID}  headers=${header}   data=${body}  expected_status=200
    ${retorno_put}    Set Variable    ${RESPONSE.json()}
    Log To Console    ${retorno_put}

Deletar usuário
    [Arguments]    ${USER_ID}  
    DELETE On Session    alias=api    url=/usuarios/${USER_ID}    expected_status=200




