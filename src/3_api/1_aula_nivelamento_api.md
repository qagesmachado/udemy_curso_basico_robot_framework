# Aula 1 - Nivelamento o que é API

Keyword Documentantio: https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#

## GUIA DA AULA

### Definição
API significa Application Programming Interface (Interface de Programação de Aplicação). A interface pode ser pensada como um contrato de serviço entre duas aplicações

Desta forma, podemos dizer que a API vai fazer a interface de comunicação entre o servidor (back-end) e o cliente (front-end).

### Verbos HTTP
Existem 5 principais verbos HTTP que são utilizados:
- POST: Criação
- GET: Leitura
- PUT: Atualização por substituição total das informações
- PATCH: Atualização por substituição parcial das informações
- DELETE: Exclusão

### Acrônimo e Heurística

CRUD
- CREATE -> Post
- READ -> Get
- UPDATE -> Put/Patch
- DELETE -> Delete

### Status Code
Família 200 (Sucesso)
- 200 - OK
- 201 - Criado
- 204 - Sem conteúdo

Família 400 (Erro cliente - Client side)
- 400 - Erro padrão, servidor não processou sua resposta devido erro na requisição
- 401 - Não autorizado (não conectado/autenticado)
- 403 - Não permitido (conectado mas sem credenciais com permissão necessária)

Família 500 (Erro servidor - server side)
- 500 - Servidor não responde
- 502 e 504 - Erros relacionados ao Gateway

Referância de apoio: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status