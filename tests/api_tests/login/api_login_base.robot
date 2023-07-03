*** Settings ***
Resource    ../../../base.robot

*** Variables ***
${EMAIL}                        eve.holt@reqres.in
${PASSWORD}                     cityslicka
${WRONG_PASSWORD}               Test123
${STATUS_LOGIN_SUCCESSFUL}      200
${STATUS_LOGIN_UNSUCCESSFUL}    400
${MSG_LOGIN_SUCESS}             QpwL5tke4Pnpja7X4
${MSG_LOGIN_UNSUCESSFULL}       Missing password
