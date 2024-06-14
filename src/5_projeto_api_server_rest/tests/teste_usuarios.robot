*** Settings ***
Resource   ../resource/usuarios_resource.resource
Resource   ../resource/session_resource.resource

Suite Setup        Criar Sessão        https://serverest.dev
Suite Teardown     Encerrar Sessão

*** Variables ***

# robot -d .\results\ src\5_projeto_api_server_rest\tests\teste_usuarios.robot
*** Test Cases ***

Teste - CRUD
   
    # CREATE
    ${USER_ID}    Criação de usuário 

    # READ
    Buscar usuário    USER_ID=${USER_ID}    expected_status=200    NOME=EU QA Teste

    # UPDATE
    Atualizar usuário  USER_ID=${USER_ID}    
    Buscar usuário    USER_ID=${USER_ID}   expected_status=200    NOME=EU QA Teste 2    # Mostra que houve alteração

    # DELETE
    Deletar usuário    USER_ID=${USER_ID}
