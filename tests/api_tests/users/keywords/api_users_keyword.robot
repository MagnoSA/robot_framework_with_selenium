*** Keywords ***
Create user
    ${FAKE_NAME}            FakerLibrary.Name
    ${FAKE_JOB}             FakerLibrary.Job
    ${header}=              Create Dictionary
    ...                     content-type=application/json

    ${body}=                Create Dictionary
    ...                     name=${FAKE_NAME}
    ...                     job=${FAKE_JOB}

    Create Session          reqres  ${URL_API}  verify=True
    ${response}=            POST On Session            reqres    /api/users
    ...                     headers=${header}
    ...                     json=${body}
    ...                     expected_status=anything 

    Log                     ${response}
    Set Test Variable       ${response}
    Set Test Variable       ${FAKE_NAME}
    Set Test Variable       ${FAKE_JOB}

