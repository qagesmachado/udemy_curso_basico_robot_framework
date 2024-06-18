*** Settings ***

*** Variables ***

&{dict_p}    nome=Gustavo    sobrenome=Silva    idade=30
*** Test Cases ***

Teste 1 - Dicionário Local

    ${dict1}    Create Dictionary    nome=Joao    sobrenome=Machado    idade=23

    Log To Console   ${dict1}    # CERTO

Teste 2 - Dicionário Global
    Log To Console   ${dict_p}

Teste 3 - Como declarar individualmente
    Log To Console   ${dict_p.nome}
    Log To Console   ${dict_p}[nome]   
    Log To Console   ${dict_p.sobrenome}
    Log To Console   ${dict_p.idade}
    
    # ERRADO
    # Log To Console   &{dict_p}  # ERRADO  

Teste 4 - Utilizando FOR + Dicionario        
    # Utilizando como string, vai retorna apenas um valor
    FOR  ${i}  IN  ${dict_p}
        Log To Console    ${i} 
    END
    
    # Utilizando como dicionário, retorna o conjunto chave:valor
    FOR  ${i}  IN  &{dict_p}
        Log To Console    ${i}
        Log To Console    ${i}[0]
        Log To Console    ${i}[1]
    END
    
    # Utilizando como lista, retorna apenas a chave no iterador 
    # e o valor quando utilizado em conjunto com o nome do dicionário
    FOR  ${i}  IN  @{dict_p}
        Log To Console    ${i} -> ${dict_p.${i}}
    END

*** Comments ***
robot -d ./results -L trace  src\2_builtin\8_dicionarios.robot
