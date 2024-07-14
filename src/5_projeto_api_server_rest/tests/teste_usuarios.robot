*** Settings ***
Resource    ../resource/session_resource.resource
Resource    ../resource/usuarios_resource.resource

Suite Setup        Criar Sessão    https://serverest.dev
Suite Teardown     Encerrar Sessão

*** Variables ***

*** Test Cases ***
Teste 1 - CRUD

    ${USER_ID}    Criar de usuário
    
    Buscar usuário    ${USER_ID}

    Atualizar usuário    ${USER_ID}

    Buscar usuário    ${USER_ID}

    Deletar usuário   ${USER_ID}

*** Comments ***
robot -d .\results\ -L trace src\5_projeto_api_server_rest\tests\teste_usuarios.robot