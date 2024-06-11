*** Settings ***

*** Comments ***
# -N -> Nome no titulo do arquivo de log
robot -N "Teste 1" -d ./results  src\1_basic\1_estruturas_basicas\8_outros_parametros.robot

# -l -> Nome para o aqui de log
robot -d ./results -l "Arquivo de log" src\1_basic\1_estruturas_basicas\8_outros_parametros.robot


*** Test Cases ***

Teste 1
    Log To Console    Teste 1

