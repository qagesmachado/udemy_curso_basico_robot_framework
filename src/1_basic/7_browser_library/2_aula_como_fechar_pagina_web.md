# Aula 2 - Como fechar página web
Aula referente ao aquivo: 2_como_fechar_pagina_web.robot

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

- CT 1 - Abrir multiplas paginas e fechar apenas uma
    - Utilizar a keyword Close Page
    - Olhar sua documentação

- CT 3 - Fechar todo o navegador
    - A keyword Close Page pode ser utilizada para fechar todas as páginas ao mesmo tempo também
    - Será ncessário mudar um parâmetro, veja a documentação

- CT 3 - Fechar todo o navegador 
    - Nesse caso de teste não queremos fechar cada aba e sim o navegador todo
    - Utilize Close Browser