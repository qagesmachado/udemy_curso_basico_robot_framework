*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CT 1 - Obter text
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    ${VAR}    Get WebElement    //*[@id="feedbackForm"]/ul/li[1]
    Log To Console    ${VAR.text}
    
    ${VAR_1}     Get Text    //*[@id="feedbackForm"]/ul/li[1]
    Log To Console    ${VAR_1}

    Close All Browsers

CT 2 - Obter Title
    Open Browser    url=https://practice-automation.com/form-fields/     browser=chrome    options=add_experimental_option("detach", True)
    
    ${VAR}  Get Title
    Log To Console    ${VAR}

    Close All Browsers

*** Comments ***
robot -d./results -L trace src\4_web_selenium\9_obter_text_web.robot
