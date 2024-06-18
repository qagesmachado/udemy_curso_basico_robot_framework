*** Settings ***

*** Comments ***
# -t -> Executa um teste específico da suite de teste
robot -d ./results -t "Teste 1" src\1_estruturas_basicas\8_parametro_para_testes_especificos.robot
robot -d ./results -t "Teste 2" src\1_estruturas_basicas\8_parametro_para_testes_especificos.robot

robot -d ./results src\1_estruturas_basicas\8_parametro_para_testes_especificos.robot

robot -d ./results -L trace -t "Teste 2" src\1_estruturas_basicas\8_parametro_para_testes_especificos.robot

*** Test Cases ***

Teste 1
    Log To Console    Teste 1

Teste 2
    Log To Console    Teste 2
