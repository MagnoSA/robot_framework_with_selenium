*** Keywords ***
Login
    [Arguments]  ${USERNAME}  ${PASSWORD}
    Go To   ${URL}
    Input Text        css=input[id="username"]    ${USERNAME}
    Input Text        css=input[id="password"]    ${PASSWORD}
    Click Button      xpath=//*[@id="login"]/button