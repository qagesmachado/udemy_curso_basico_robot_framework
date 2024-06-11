
*** Comments ***
## -L -> Nível de log (info, debug, trace)
    # robot -d ./results -L info  .src\1_basic\1_estruturas_basicas\4_nivel_de_log_resultados.robot
    # robot -d ./results -L debug  src\1_basic\1_estruturas_basicas\4_nivel_de_log_resultados.robot
    # robot -d ./results -L trace  src\1_basic\1_estruturas_basicas\4_nivel_de_log_resultados.robot

${X}  
${Y}  
*** Test Cases ***

Teste 1
    Log To Console    Hello world
    ${X}  Set Variable     3
    ${Y}  Set Variable     3.0

    ${X}    Convert To Number    ${X}
    Should Be Equal    ${X}    ${Y}

Teste 2
    Log To Console    Hello world

Teste 3
    Log To Console    Hello world

Teste 4
    Log To Console    Hello world

*** Keywords ***
Abrir página
    Log To Console    Abrindo a página
Fechar página
    Log To Console    Fechando a página
Fazer login
    Log To Console    Fazendo login
Fazer Logout
    Log To Console    Fazendo logout