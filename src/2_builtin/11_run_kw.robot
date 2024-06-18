*** Settings ***

*** Variables ***
# robot -d ./results -L trace  src\2_builtin\11_run_kw.robot
${var}  5
*** Test Cases ***

Teste - Run Keyword 

    Run Keyword  keyword_1  

Teste - Run keyword concidional
    Run Keyword If    ${var}>4    keyword_2
    ...               ELSE        keyword_3   

Teste para retornar status    
    ${passed}    Run Keyword And Return Status    keyword_4

*** Keywords ***
keyword_1
    Log To Console    Esta é a keyword 1

keyword_2
    Log To Console    Esta é a keyword 2

keyword_3
    Log To Console    Esta é a keyword 3

keyword_4
    # Fail
    Log To Console    teste
