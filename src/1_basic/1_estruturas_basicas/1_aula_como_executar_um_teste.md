# Aula 1 - Como executar um teste
Aula referente ao aquivo: src\1_basic\1_estruturas_basicas\1_como_executar_um_teste.robot

Robot Documentantio: https://robotframework.org/

## GUIA DA AULA
- Criar um arquivo .robot conforme modelo
- Abri um terminal e apontar para a raiz do projeto
- O comando a ser executado será
    `robot src\1_basic\1_estruturas_basicas\1_como_executar_um_teste.robot`
- O caminho final pode ser:
    - Um arquivo .robot (vide exemplo)
    - Uma pasta, assim todos os arquivos dentro dela seriam executados
- Sempre que formos executar um arquivo .robot devemos escrever a palavra reservada robot e depois escrever o caminho do arquivo
- Caso você tenha criado o arquivo em uma pasta diferente o caminho será diferente
- Não pode existir testes vazios então adicionamos uma keyword para imprimir um texto