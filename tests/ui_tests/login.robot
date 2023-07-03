*** Settings ***
Resource    login_base.robot

Suite Setup  Open Browser      browser=${BROWSER}

Force Tags  @login

*** Test Cases ***
Login
    [Tags]  @regression
    Login  ${USERNAME}  ${PASSWORD}
    Wait Until Page Contains  ${MSG_LOGIN_SUCCESS}
    Take Screenshot

Username Invalid
    [Tags]  @regression
    Login  Test123  ${PASSWORD}
    Wait Until Page Contains  ${MSG_USERNAME_INVALID}
    Take Screenshot
    
Password Invalid
    [Tags]  @regression
    Login  ${USERNAME}  Test123
    Wait Until Page Contains  ${MSG_PASSWORD_INVALID}
    Take Screenshot