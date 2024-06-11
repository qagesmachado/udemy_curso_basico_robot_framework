# Aula 3 - Modelo de estrutura para criação de sessão WEB
Aula referente ao aquivo: 3_modelo_estrutura_sessao.robot

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

- CT 1 - Modelo de criação de sessao
    - DESAFIO
    - Utilizar estrutura de Suite e Teardown
    - Criar keywords