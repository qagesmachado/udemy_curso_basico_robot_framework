*** Settings ***

*** Comments ***
# -i <nome da tag>
robot -d ./results -i smoke src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot
robot -d ./results -i regressao src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot
robot -d ./results -i smoke -i regressao src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot
robot -d ./results -i smokeANDregressao src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot
robot -d ./results -i smokeORregressao src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot

# -i <nome da tag>
robot -d ./results -e smoke src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot
robot -d ./results -e regressao src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot
robot -d ./results -e smokeNOTregressao src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot
robot -d ./results -e regressaoORsmoke src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot

# Unindo
robot -d ./results -e smoke -i regressao src\1_basic\1_estruturas_basicas\5_utilizando_tags.robot

*** Test Cases ***

Teste 1
    [Tags]  smoke  
    
    Pass Execution    Pass

Teste 2
    [Tags]  regressao

    Pass Execution    Pass

Teste 3
    [Tags]  regressao  smoke
    
    Pass Execution    Pass

Teste 4
    [Tags]  performance
    
    Pass Execution    Pass

Teste 5
    [Tags]  performance
    
    Pass Execution    Pass
