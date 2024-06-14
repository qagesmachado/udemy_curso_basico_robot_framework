*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CT 1 - Obter text
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    ${VAR}    Get WebElement    //*[@id="feedbackForm"]/ul/li[2]
    Log To Console    ${VAR.text}

    ${VAR}    Get Text    //*[@id="feedbackForm"]/ul/li[2]
    Log To Console    ${VAR}

    Close All Browsers

CT 2 - Obter Title
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    ${VAR}    Get Title
    Log To Console    ${VAR}
    Close All Browsers

*** Comments ***
robot -d./results -L trace src\4_web_selenium\7_radio_button.robot
