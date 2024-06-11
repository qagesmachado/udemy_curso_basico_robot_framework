*** Settings ***
Library    Browser    auto_closing_level=KEEP
   
*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

CT 1 - Abrir multiplas paginas e fechar apenas uma
# robot -d ./results -t "CT 1 - Abrir e fechar multiplas paginas" src\0_basico\7_browser_library\2_como_fechar_pagina_web.robot
    New Browser    browser=chromium     headless=false
    New Page       url=https://www.google.com.br
    New Page       url=https://www.youtube.com.br
    Close Page

CT 2 - Abrir multiplas paginas e fechar apenas todas
# robot -d ./results -t "CT 2 - Abrir multiplas paginas e fechar apenas todas" src\0_basico\7_browser_library\2_como_fechar_pagina_web.robot
    New Browser    browser=chromium     headless=false
    New Page       url=https://www.google.com.br
    New Page       url=https://www.youtube.com.br
    Close Page    ALL

CT 3 - Fechar todo o navegador
# robot -d ./results -t "CT 3 - Fechar todo o navegador" src\0_basico\7_browser_library\2_como_fechar_pagina_web.robot
    New Browser    browser=chromium     headless=false
    New Page       url=https://www.google.com.br
    Close Browser    







