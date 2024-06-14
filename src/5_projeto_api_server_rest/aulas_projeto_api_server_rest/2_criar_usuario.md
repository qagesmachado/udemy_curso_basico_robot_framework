# 2 - Criar usuário

## Passo-a-passo
O seguinte passo-a-passado será demonstrado na aula para que essas primeira requisição seja entendida de forma mais fácil, segue:

- Utilizar padrão de requisição ensinado no módulo básico de API
- Criar as keyword de:
    - Criação de Sessão
    - Criação de usuário
    - Fim de sessão
- Não esquecer que cada keyword tem seus próprios argumento obrigatório, consulte a documentação
- Essa requisição de POST precisa carregar um json, para isso consulte a documentação da biblioteca "OperatingSystem"
- Após os passo anteriores estarem funcionando devemos:
    - Transferir a criação de usuário pra uma keyword na devida pasta de resources
    - Transferir as keyword de sessão pra o Setup e Teardown
- Após essas modificações estarem funcionando teremos a estrutura básica do primeiro teste funcionando