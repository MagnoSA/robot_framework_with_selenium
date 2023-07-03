*** Keywords ***
Api Login
    [Arguments]             ${EMAIL}     ${PASSWORD}
    ${header}=              Create Dictionary
    ...                     content-type=application/json

    ${body}=                Create Dictionary
    ...                     email=${EMAIL}
    ...                     password=${PASSWORD}

    Create Session          reqres  ${URL_API}  verify=True
    ${response}=            POST On Session            reqres    /api/login
    ...                     headers=${header}
    ...                     json=${body}
    ...                     expected_status=anything 

    Log                     ${response}
    Set Test Variable       ${response}