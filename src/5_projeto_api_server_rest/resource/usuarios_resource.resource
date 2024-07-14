*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem

*** Keywords ***
Criar de usuário

    ${body}    Get File    path=${EXECDIR}/src/5_projeto_api_server_rest/data_driven/user_create_template.json

    ${header}    Create Dictionary    Content-Type=application/json
    ${Response}    POST On Session    alias=api    url=/usuarios    headers=${header}    data=${body}    expected_status=201
    
    Log To Console    ${Response.json()['_id']}

    ${USER_ID}    Set Variable     ${Response.json()['_id']}

    RETURN    ${USER_ID}

Deletar usuário
    [Arguments]    ${USER_ID}

    ${Response}    DELETE On Session    alias=api    url=/usuarios/${USER_ID}    expected_status=200
    Log To Console    ${Response.json()}

Buscar usuário
    [Arguments]    ${USER_ID}

    ${Response}    GET On Session    alias=api    url=/usuarios/${USER_ID}    expected_status=200
    Log To Console    ${Response.json()}
    Log Many    ${Response.json()['nome']}    ${Response.json()['email']}    ${Response.json()['_id']}

Atualizar usuário
    [Arguments]    ${USER_ID}

    ${body}    Get File    path=${EXECDIR}/src/5_projeto_api_server_rest/data_driven/user_update_template.json

    ${header}    Create Dictionary    Content-Type=application/json
    ${Response}    PUT On Session    alias=api    url=/usuarios/${USER_ID}    headers=${header}    data=${body}    expected_status=200
    
    Log To Console    ${Response.json()}