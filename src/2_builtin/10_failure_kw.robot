*** Settings ***

*** Variables ***
# robot -d ./results -L trace  src\2_builtin\10_failure_kw.robot

*** Test Cases ***

Test case 1: Falha comum com kyw "Fail"
    Log To Console    message=essa é uma mensagem no Console
    Fail    msg=Esse teste falhou
    Log To Console    message=Essa é uma mensagem que não vai aparecer se tiver falhado

# Test case 2: Falha total com kyw "Fatal Error"
#     Log To Console    message=essa é uma mensagem no Console
#     Fatal Error    Esse teste irá falhar tudo a seguir     

Test case 3: Teste exemplo que não irá rodar devido Falha do teste anterior
    Log To Console    message=essa é uma mensagem no Console que não irá rodar

Test case 4: Continue On Failure 1

    # Falha direta
    Run Keyword And Continue On Failure    Fail	    Falhou
    Log	Essa Keyword será executada

    # Falha vinda por keyword
    Run Keyword And Continue On Failure    KYD 1
    Log	Essa Keyword será executada		

Test case 5: Warn On Failure 1
    
    # Falha direta
    Run Keyword And Warn On Failure    Fail	    Falhou
    Log	Essa Keyword será executada	

    # Falha vinda por keyword
    Run Keyword And Warn On Failure    KYD 1
    Log	Essa Keyword será executada	


*** Keywords ***
KYD 1
    Log To Console    message=Inicio
    Fail
