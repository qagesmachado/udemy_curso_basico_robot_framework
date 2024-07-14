*** Settings ***
Resource    ../resource/resource.resource  

*** Variables ***


*** Comments ***
robot -d ./results -L trace  src\6_projeto_web_selenium\tests\test_checkout.robot

*** Test Cases ***
Fazer compra de produto
    Inicia sessão
    Login    username=robot_qa_basic    password=Teste123!@#

    Busca produto por imagem    
    
    Seleciona produto por ID    
    
    Adiciona produto ao carrinho 

    Ir para carrinho

    Realizar compra       

    # Valida compra
    
*** Keywords ***
