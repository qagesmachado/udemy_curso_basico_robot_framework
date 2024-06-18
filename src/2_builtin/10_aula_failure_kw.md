# Aula 10 - Keyword para falha
Aula referente ao aquivo: src\2_builtin\10_failure_kw.robot

Keyword Documentantio: https://robotframework.org/robotframework/latest/libraries/BuiltIn.html

## Guia da aula
Podemos simular e forçar falhas de váris maneiras no Robot Framework. Nessa aula foram propostos alguns cenários que pode ser testados.

## CENÁRIOS DE  ERRO

### CENÁRIO 1
Utilizando "Fail" o teste irá falhar mas não vai atrapalhar o restante da suite de teste que esta sendo executado no meu arquivo .robot (Vide Test case 1)

### CENÁRIO 2
Utilizando "Fatal Error " era keyword ire interromper a execução da suíte inteira (Test case 2 e Test case 3)

### CENÁRIO 3
By Pass em falha com "Run Keyword And Continue On Failure" (Test case 4)

### CENÁRIO 4
By Pass com aviso em falha com "Run Keyword And Warn On Failure" (Test case 5)