*** Settings ***
Library    Browser    auto_closing_level=KEEP
   
*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

CT 1 - Abrir página com Open Browser
# robot -d ./results -t "CT 1 - Abrir página com Open Browser" src\0_basico\7_browser_library\1_como_abrir_pagina_web.robot
    Open Browser   url=https://www.google.com.br

CT 2 - Abrir página com New Browse e New Page
# robot -d ./results -t "CT 2 - Abrir página com New Browse e New Page" src\0_basico\7_browser_library\1_como_abrir_pagina_web.robot
    New Browser    browser=chromium     headless=false
    New Page       url=https://www.google.com.br


CT 3 - Abrir página múltiplas páginas com New Page
# robot -d ./results -t "CT 3 - Abrir página múltiplas páginas com New Page" src\0_basico\7_browser_library\1_como_abrir_pagina_web.robot
    New Browser    browser=chromium     headless=false
    New Page       url=https://www.google.com.br
    New Page       url=https://www.google.com.br

# Encerra Sessao
#     Close Page
#     Close Browser






