*** Settings ***

*** Variables ***
@{list_g}    azul    vermelho    amarelo    verde

*** Test Cases ***
Teste 1 - Lista Local
    
    ${list_fruta}    Create List    banana     morango     uva     melancia
    Log To Console    ${list_fruta} 

Teste 2 - Lista Global
    
    Log To Console    ${list_g} 

Teste 3 - Como imprimir valore individuais
    
    # Usando indice
    Log To Console    ${list_g}[0]
    Log To Console    ${list_g}[1]
    Log To Console    ${list_g}[2]
    Log To Console    ${list_g}[3]
    
    # índice inválido
    # Log To Console    ${list_g}[4]

Teste 4 - Utilizando FOR + lista   
    FOR  ${j}  IN  @{list_g}
        Log To Console    ${j}
    END
    
*** Comments ***
robot -d ./results -L trace  src\2_builtin\7_listas.robot
