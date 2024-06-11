*** Settings ***
Library    Browser    auto_closing_level=KEEP

Suite Setup        Abrir sessao
Suite Teardown     Fechar sessao

*** Test Cases ***
CT 1 - Modelo de criação de sessao
# robot -d ./results -t "CT 1 - Modelo de criação de sessao" src\0_basico\7_browser_library\3_modelo_estrutura_sessao.robot
    Log To Console    message=Concluído

*** Keywords ***
Abrir sessao
    New Browser    browser=chromium     headless=false
    New Page       url=https://www.google.com.br

Fechar sessao
    Close Browser







