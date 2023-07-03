*** Settings ***
Resource    users_base.robot

Force Tags  @api_users

*** Test Cases ***
Create new user
    [Tags]  @regression
    Create user
    Status Should Be                201  ${response}                  
    Should Be Equal As Strings      ${response.json()['name']}      ${FAKE_NAME}
    Should Be Equal As Strings      ${response.json()['job']}       ${FAKE_JOB}
