*** Settings ***
Resource    ../utils/base.resource

*** Variables ***

*** Keywords ***
Create user
    [Arguments]    ${user}    ${email}    ${password}
    ...            ${fist_name}=any    ${last_name}=any    ${phone_number}=any
    ...            ${country}=any    ${city}=any    ${address}=any    ${state}=any    ${posta_code}=any
                     
    Type Text    ${tf_name}    ${user}
    Type Text    ${tf_email}    ${email}
    Type Text    ${tf_password}    ${password}
    Type Text    ${tf_password_confirm}     ${password}

    Check Checkbox    ${cb_agree}
    Click    ${btn_confirm}
    
    # Validation
    ${tf_user_connected}    Set Variable    //*[@id="menuUserLink"]/span[text()[contains(.,'${user}')]]
    Get Text    ${tf_user_connected}    equal    ${user}
    