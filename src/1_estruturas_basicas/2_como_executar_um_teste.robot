*** Settings ***

*** Variables ***

*** Test Cases ***
CT 1 - teste
    Log To Console    message=Passou

CT 2 - teste
    Log To Console    message=Passou 2

CT 3 - testes
    Pass Execution    message=passou 3

*** Keywords ***


*** Comments ***
# robot src\1_estruturas_basicas\2_como_executar_um_teste.robot
