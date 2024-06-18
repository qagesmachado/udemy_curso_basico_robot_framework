*** Settings ***
Resource    ../utils/base.resource

*** Variables ***
${SPEAKERS}    //*[@id="speakersImg"]

*** Keywords ***
Busca produto por imagem
    [Arguments]    ${produto}
    Wait Until Element Is Visible     ${produto}
    Click Element    ${produto}