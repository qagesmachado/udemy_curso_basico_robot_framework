*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CT 1 - Obter text
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    Input Text    id=name    text=Gustavo
    Mouse Over    id=submit-btn
    Click Element    id=submit-btn

    Alert Should Be Present     Message received!
    Input Text    id=name    text=Gustavoaa

    # Close All Browsers

*** Comments ***
robot -d./results -L trace src\4_web_selenium\7_radio_button.robot
