# Aula 1 - Como trabalhar com variáveis
Aula referente ao aquivo: src\1_basic\2_builtin\1_variaveis.robot

Keyword Documentantio: https://robotframework.org/robotframework/latest/libraries/BuiltIn.html

## GUIA DA AULA
- Existem 3 escopos de variáveis no robot framework
    - Escopo local: Dentro de onde foi criada
    - Escopo de Teste: Dentro do teste onde foi criada independente de estar dentro de uma keyword ou outra
    - Escopo global: Ficaria disponível dentro da suíte inteira do teste

## Exercícios propostos

### Exercício 1 - Escopo Local
- Criar 2 casos de teste
- No primeiro declarar uma variável com a keyword "Set Variable"
- No segundo teste teste fazer o Log dessa keyword
- Resultado
    - Teste 1: Sucesso
    - Teste 2: Falha

### Exercício 2 - Escopo de Teste
- Criar uma keyword na sessão de keywords
- Criar uma variável com a keyword "Set Variable"
- Utiizar a keyword "Set Test Variable" para mudar o escopo da variável
- Faça o Log do dessa variável fora do escopo dessa keyword, mas no mesmo teste.
- Resultado será sucesso no Teste 3

### Exercício 3 - Escopo Global 1
- Criar 2 casos de teste
- No primeiro declarar uma variável com a keyword "Set Variable"
- Após isso mude o escopo dela com a keyword "Set Global Variable"
- No segundo teste faça o Log dessa keyword 
- Resultado:
    - Teste 4: Sucesso
    - Teste 5: Sucesso
    
### Exercício 4 - Escopo Global 2
- Criar 1 casos de teste
- Criar um variável na sessão de Variables, variaveis criadas aqui recebem o escopo global
- Faça o Log no Teste 6 
- Resultado:
    - Teste 6: Sucesso
