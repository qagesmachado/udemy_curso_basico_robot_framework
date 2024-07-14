# 5 - Criar teste de checkout

Keyword Documentantio: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

Website: http://www.advantageonlineshopping.com/#/

## GUIA DA AULA
A estrutura desse teste será um pouco diferente do proposto anteriormente, então a sugestão de criação do teste:
- Faça o início de sessão e login acontecer dentro do Suite Setup
- Faça o final da sessão ocorrer dentro do Suite Teardown
- Tenha um passo Test Suite para sempre voltar a home page
    - caso crie mais cenários de teste é sempre importante partimos do mesmo início
- Inicialmente faça o teste todo junto na sessão de teste
- Posteriormente separe em keywords que façam sentido
