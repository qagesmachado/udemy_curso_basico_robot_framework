*** Settings ***

*** Variables ***
# robot -d ./results -L trace  src\2_builtin\2_variaveis_argumentos.robot


# Local -> Pode ser usada apenas dentro do contexto local que foi declarado
# Teste -> Declarada no contexto do teste
# Global -> Declarada globalmente pra ser usado em qualquer teste

*** Test Cases ***

Teste 1 - keyword que retorna variáveis
    ${x}    ${y}    ${z}  keyword-1
    ${a}    keyword-1
    
    Log To Console    ${a}[0]
   
    Log To Console    ${x} - ${y} - ${z}

Teste 2 - Variáveis como argumentos
    keyword-2    1  2  3
    # keyword-2    var_3     var_2=2    var_3=3    

Teste 3 - Variáveis dentro da keyword
    Meu nome e Gustavo e tenho 30 anos
    
*** Keywords ***
keyword-1
    ${a}  Set Variable  1
    ${b}  Set Variable  2
    ${c}  Set Variable  3

    RETURN    ${a}    ${b}    ${c}

keyword-2
    [Arguments]    ${var_1}    ${var_2}    ${var_3}
    Log To Console    ${var_1}
    Log To Console    ${var_2}
    Log To Console    ${var_3}

Meu nome e ${var_1} e tenho ${anos} anos
    Log To Console    ${var_1} - ${anos}