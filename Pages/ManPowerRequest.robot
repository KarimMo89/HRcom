*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${SideMenuFrame}    id:mySidenav
${ManPowerReqButton}    xpath:/html/body/div/div/div[1]/nav/div[1]
${CreateNewReqBut}    xpath://*[@id="mySidenav"]/nav/div[2]/div/div/div/a/div
${Job_Title}      xpath:/html/body/div/div/div[2]/div[2]/div[2]/div/form/div[1]/div[1]/div[1]/div/div/div/div
${Job_ID}         id:job_title_id-option-0
${Salary_Grid}    xpath://*[@id="main"]/div[2]/div[2]/div/form/div[1]/div[1]/div[2]/div[1]/div/div/div    
#xpath:
${Salary_Grid_ID}    id:salary_grade_id-option-0
${NoOfOpenings}    id:num_of_openings
${Branch}         id:branch_id
${Branch_Option}    id:branch_id-option-0
${Save&GoNextBut}    xpath:/html/body/div/div/div[2]/div[2]/div[2]/div/form/div[2]/button
${UploadImage}    xpath://*[@id="main"]/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div[1]/div[2]/button/input
*** Keywords ***
Create Man power
    [Arguments]    ${NumberOfOpening}
    Click Element    ${ManPowerReqButton}
    Wait Until Page Contains Element    ${CreateNewReqBut}
    Click Element    ${CreateNewReqBut}
    Wait Until Page Contains Element    ${Job_Title}
    Click Element    ${Job_Title}
    Click Element    ${Job_ID}
    ################### ana 3mlt l7d hna , kml enta b2a :) ############################
    Click Element    ${Salary_Grid}
    Wait Until Page Contains Element    ${Salary_Grid_ID}
    Click Element    ${Salary_Grid_ID}
    Input Text    ${NoOfOpenings}    ${NumberOfOpening}
    Click Button    ${Branch}
    Wait Until Page Contains Element    ${Branch_Option}
    Click Element    ${Branch_Option}
    Wait Until Element Is Enabled    ${Save&GoNextBut}
    Scroll Element Into View    ${Save&GoNextBut}
    Click Button    ${Save&GoNextBut}
    Input Text    ${UploadImage}    text    