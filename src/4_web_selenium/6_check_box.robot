*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CT 1 - Selecionar e validar
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    Select Checkbox    id=drink1
    Click Element    locator=//label[contains(text(), 'Milk')]
    Checkbox Should Be Selected    id=drink1

    Close All Browsers

CT 2 - Remover seleção e validar
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    Select Checkbox    id=drink3
    Checkbox Should Be Selected    id=drink3

    Sleep    5s

    Unselect Checkbox    id=drink3
    Checkbox Should Not Be Selected    id=drink3

    Close All Browsers  

CT 3 - Existir na página
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
     
    Page Should Contain Checkbox    id=drink3
    Page Should Not Contain Checkbox    id=drink100  

    Close All Browsers

*** Comments ***
robot -d./results -L trace src\4_web_selenium\6_check_box.robot

Select Checkbox      
Checkbox Should Be Selected    
Checkbox Should Not Be Selected     
Unselect Checkbox    
Page Should Contain Checkbox    
Page Should Not Contain Checkbox    