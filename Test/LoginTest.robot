*** Settings ***
Library    SeleniumLibrary  
Resource    TestBase.robot  
Resource    ../Pages/LoginPage.robot

Suite Setup    TestBase.Start Test
Suite Teardown    TestBase.End Test  

*** Test Cases ***
Test Login Methos
    [Documentation]    This for testing the login page 
    Go To    https://vikings-company-stage.hrcom.ibtikar.sa/login
    Sleep    3s
    LoginPage.Check Login    vikings@mailinator.com    Password0101

    
