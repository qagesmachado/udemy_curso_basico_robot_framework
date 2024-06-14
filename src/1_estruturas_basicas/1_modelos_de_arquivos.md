# Aula 1 - Modelos
Aula referente aos aquivos:
    - src\0_modelo\test_file.robot
    - src\0_modelo\resource_file.resource

Robot Documentantion: https://robotframework.org/

## GUIA DA AULA

### Existem dois tipos de arquivos basicamente
- Arquivo utilizado para teste: .robot
- Arquivo utilizado para criação de recursos, variáveis, funções etc: .resource

### Estrutura dos arquivos
- Arquivo .robot
    - Possuir as 4 sessões principais do robot framework
        - Settings
        - Variables
        - Test Cases
        - Keywords
- Arquivo .resource
    - Possuir 3 sessões principais do robot framework
        - Settings
        - Variables
        - Keywords

### Resumindo
A grande diferença entre esse dois arquivos é a finalidade de cada um. O arquivo .robot é utilizado para executar os testes enquanto o arquivo .resource será utilizado para qualquer outra função.