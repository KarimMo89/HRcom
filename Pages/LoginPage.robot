*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${Username}    id:email
${passwoord}    id:password
${Login_Button}    css:div#root>div>div>div>form>div:nth-of-type(3)>button
${Ressponess_message}    CalssName:MuiAlert-message
*** Keywords ***
Check Login
    [Arguments]    ${Email}    ${Password}
    Input Text    ${Username}    ${Email}
    Input Text    ${passwoord}    ${Password}
    Click Button    ${Login_Button}            