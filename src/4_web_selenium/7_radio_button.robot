*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CT 1 - Selecionar e validar
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    Radio Button Should Not Be Selected    group_name=fav_color

    Select Radio Button    group_name=fav_color    value=Red
    Radio Button Should Be Set To    group_name=fav_color    value=Red

    Select Radio Button    group_name=fav_color    value=color2
    Radio Button Should Be Set To    group_name=fav_color    value=Blue

    Close All Browsers

CT 2 - Existir na página
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
     
    Page Should Contain Radio Button    locator=fav_color
    Page Should Not Contain Radio Button    locator=teste

    Close All Browsers

*** Comments ***
robot -d./results -L trace src\4_web_selenium\7_radio_button.robot

Page Should Contain Radio Button
Page Should Not Contain Radio Button
Radio Button Should Not Be Selected
Radio Button Should Be Set To
Select Radio Button