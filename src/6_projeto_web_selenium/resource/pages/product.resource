*** Settings ***
Resource    ../utils/base.resource

*** Variables ***
${SPEAKBOSE_SOUNDLINKRS}    id:20

*** Keywords ***
Seleciona produto por ID
    [Arguments]    ${id}
    Wait Until Element Is Visible     ${id}
    Click Element    ${id}