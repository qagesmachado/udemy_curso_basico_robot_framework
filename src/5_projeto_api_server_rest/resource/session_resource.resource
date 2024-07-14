*** Settings ***
Library    RequestsLibrary

*** Variables ***


*** Keywords ***
Criar Sessão
    [Arguments]    ${BASE_URL}
    
    Create Session    alias=api    url=${BASE_URL}    verify=True

Encerrar Sessão
    Delete All Sessions