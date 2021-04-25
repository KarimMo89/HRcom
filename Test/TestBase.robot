*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${URL}    https://vikings-company-stage.hrcom.ibtikar.sa/login
${Driver}    chrome
*** Keywords ***
Start Test
    Open Browser     ${URL}    ${Driver}
    #Maximize Browser Window
    
End Test
    Close Browser