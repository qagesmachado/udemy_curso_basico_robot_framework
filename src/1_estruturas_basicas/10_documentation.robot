*** Settings ***

*** Variables ***
# robot -d ./results src\1_estruturas_basicas\10_documentation.robot

*** Test Cases ***
Teste 1
    [Documentation]    Documentação do teste 1
    ...                outra linha
    ...                Continuando a escrever
    Log To Console    Hello world





