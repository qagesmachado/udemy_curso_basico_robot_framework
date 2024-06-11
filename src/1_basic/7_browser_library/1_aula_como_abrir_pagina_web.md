# Aula 1 - Como abrir página web
Aula referente ao aquivo: src\0_basico\7_browser_library\1_como_abrir_pagina_web.robot

Keyword Documentantio: https://marketsquare.github.io/robotframework-browser/Browser.html

## GUIA DA AULA

### 1 - Keyword importantes
As keyword importante da aula são:
- Open Browser
- New Browser
- New Page
- Close Page
- Close Browser

### 2 - Exercícios propostos
- CT 0 - Importar biblioteca
    - Na sessão Settings importar biblioteca Browser
        - `Library    Browser    auto_closing_level=KEEP`
        - Esse parâmetro "auto_closing_level=KEEP" faz com que a página não se feche automaticamente após o teste 

- CT 1 - Abrir página com "Open Browser"
    - Abrir página com Open Browser
    - Note que não é a recomendação ideal
    - Usar apenas como debug

- CT 2 - Abrir página com "New Browser" e "New Page"
    - A forma recomendada de abrir uma sessão é utilizando as keyword New Browser e New page em conjunto
    - New browser vai intanciar e New Page irá abrir a página especificada
    > New Browser    browser=BROWSER_VAR     headless=HEADLESS_VAR
    >
    >   New Page       url=URL_VAR
    >

- CT 3 - Abrir página múltiplas páginas com "New Page" 
    - É possível cria múltiplas tabs para o mesmo Browser, isso é feito executando a keyword New Page múltiplas vezes
    > New Browser    browser=BROWSER_VAR     headless=HEADLESS_VAR
    >
    >   New Page       url=URL_VAR
    >
    >   New Page       url=URL_VAR
    >