# robot -d ./results src\projeto\e2e\advantageonlineshopping\test\1_criacao_usuario.robot

*** Settings ***

Resource   ../resource/utils/base.resource
   
Test Setup    Create Session    URL=http://www.advantageonlineshopping.com/#/
# Test Teardown    Close Browser

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

CT 1 - Criar usuario com campos obrigatorios [Sucesso]
    Access create account page
    Create user    user=usertestqa    email=euqa@euqa.com    password=Test123

    Access my account page
    Delete my account
    
# CT 2 - Criar usuario com todos os campos [Sucesso]   
#     Pass Execution    message

# CT 3 - Criar usuario sem todos os campos obrigatorios [Falha]     
#     Pass Execution    message
*** Keywords ***





