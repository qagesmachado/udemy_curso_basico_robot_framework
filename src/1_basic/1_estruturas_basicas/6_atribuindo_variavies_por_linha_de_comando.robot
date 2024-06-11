*** Settings ***

*** Variables ***
${X}  1
${Y}  2
*** Test Cases ***

Teste 1
    Log To Console    ${X} e ${Y}

*** Comments ***
# -v -> Atribui valor a variaveis
robot -d ./results -v X:5 -v Y:3 src\1_basic\1_estruturas_basicas\6_atribuindo_variavies_por_linha_de_comando.robot