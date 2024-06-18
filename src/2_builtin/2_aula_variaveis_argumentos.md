# Aula 2 - Como trabalhar com argumentos dentro das varíaveis
Aula referente ao aquivo: src\2_builtin\2_variaveis_argumentos.robot

Keyword Documentantio: https://robotframework.org/robotframework/latest/libraries/BuiltIn.html

## GUIA DA AULA
- Sabendo que existem 3 escopos de variáveis e que não é uma boa prática criar muitas variáveis globais
- Podemos então criá-las de forma local e por meio de argumentos importar ou exportar elas apenas quando forem necessárias

## Exercícios propostos

### Teste 1 - keyword que retorna variáveis
- Crie uma keyword
- Criei variáveis dentro dessa keyword
- Utilize a palavra reservada RETURN no final da keyword para exportar as varíaveis
- Utilize as variáveis no contexto de onde foram exportadas

### Teste 2 - Variáveis como argumentos
- Crie uma keyword que recebe  duas variáveis como argumento
- Faça o Log dessas varíaveis dentro da keyword

### Teste 3 - Variáveis dentro da keyword
- Crie uma keyword que recebe  variáveis dentro do próprio nome da keyword
    - `Keyword ${var_1} com variavel no texto`
- Faça o Log dessas varíaveis dentro da keyword
    