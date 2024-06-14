*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

CT 1 - Abrir página web
    Open Browser    url=https://practice-automation.com/form-fields/   browser=chrome

CT 2 - Abrir página web - Não fechar habilitado
    Open Browser    url=https://www.google.com.br    browser=chrome    options=add_experimental_option("detach", True)

CT 3 - Abrir página web
    Open Browser       url=https://practice-automation.com/form-fields/    
    ...                browser=chrome    
    ...                options=add_experimental_option("detach", True)
        
    Close All Browsers

CT 4 - Abrir página web e Maximizar
    Open Browser       url=https://practice-automation.com/form-fields/    
    ...                browser=chrome    
    ...                options=add_experimental_option("detach", True)
    
    Maximize Browser Window
    Sleep    5s
        
    Close All Browsers

CT 5 - Abrir página web - Headless
    Open Browser       url=https://practice-automation.com/form-fields/    
    ...                browser=Headless Chrome    
    ...                options=add_experimental_option("detach", True)
    
    Maximize Browser Window
    Log To Console    message=Teste
    Sleep    3s
        
    Close All Browsers

*** Comments ***
robot -d./results src\4_web_selenium\2_abrindo_pagina_web.robot