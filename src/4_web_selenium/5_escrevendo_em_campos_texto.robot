*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CT 1 - Escrever texto
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    Input Text    id=name    text=Gustavo
    Textfield Value Should Be    id=name    expected=Gustavo
    Textfield Should Contain     id=name    expected=Gusta

    Clear Element Text    id=name 

    Input Password    id=name    password=senha

    Close All Browsers

*** Comments ***
robot -d./results -L trace src\4_web_selenium\4_escrevendo_em_campos_texto.robot