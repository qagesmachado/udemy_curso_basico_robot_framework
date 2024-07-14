*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CT 1 - Selecionar e validar
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    Select From List By Index    id:siblings    1
    Sleep    2s      
    Select From List By Label    id:siblings    No
    Sleep    2s 
    Select From List By Value    id:siblings    maybe
    Sleep    2s   

    Close All Browsers

*** Comments ***
robot -d./results -L trace src\4_web_selenium\8_dropdown.robot
