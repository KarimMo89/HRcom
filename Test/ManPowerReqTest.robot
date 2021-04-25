*** Settings ***
Library    SeleniumLibrary    
Resource    TestBase.robot    
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/ManPowerRequest.robot
Suite Setup    TestBase.Start Test

*** Test Cases ***

Create Man Power Req
    
  Go To    https://vikings-company-stage.hrcom.ibtikar.sa/login
    Sleep    3s
    LoginPage.Check Login    vikings@mailinator.com    Password0101
    Sleep    3s    
    ManPowerRequest.Create Man power    10    

