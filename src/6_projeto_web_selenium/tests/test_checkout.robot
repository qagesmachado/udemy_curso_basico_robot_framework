*** Settings ***
Resource    ../resource/utils/base.resource  
Resource    ../resource/pages/product.resource

Suite Setup    Inicia sessão e faz login    ${URL_BASE}    ${USERNAME}    ${PASSWORD}
Suite Teardown    Encerra sessão

*** Variables ***


*** Comments ***
robot -d ./results -L trace  src\6_projeto_web_selenium\tests\test_checkout.robot

*** Test Cases ***
Fazer compra de produto

    Busca produto por imagem    ${SPEAKERS}
    
    Seleciona produto por ID    ${SPEAKBOSE_SOUNDLINKRS}
    
    Adiciona produto ao carrinho 

    Ir para carrinho

    Realizar compra    ${USERNAME}    ${PASSWORD}    

    Valida compra
    
*** Keywords ***
