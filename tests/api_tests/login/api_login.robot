*** Settings ***
Resource    api_login_base.robot

Force Tags  @api_login

*** Test Cases ***
Login
    [Tags]  @regression
    Api Login                           ${EMAIL}                ${PASSWORD}
    Status Should Be                    200                     ${response}                  
    Dictionary Should Contain Value     ${response.json()}      ${MSG_LOGIN_SUCESS}

Login unsuccessful
    [Tags]  @regression
    Api Login                           ${EMAIL}            ${EMPTY}
    Status Should Be                    400                 ${response}                  
    Dictionary Should Contain Value     ${response.json()}  ${MSG_LOGIN_UNSUCESSFULL}