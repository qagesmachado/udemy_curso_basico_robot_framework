*** Settings ***
Resource    ../resource/resource.resource  

*** Variables ***


*** Comments ***
robot -d ./results -L trace  src\6_projeto_web_selenium\tests\test_login.robot

*** Test Cases ***
Teste de Login com sucesso
    Inicia sessão
    Login    username=robot_qa_basic    password=Teste123!@#
    Valida Login sucesso
    Encerra sessão

Teste de Login sem sucesso
    Inicia sessão
    Login    username=non_exist    password=qualquer
    Valida Login incorreto
    Encerra sessão