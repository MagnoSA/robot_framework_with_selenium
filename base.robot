*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    FakerLibrary
Library    Collections
Resource   ./tests/ui_tests/keywords/login_keyword.robot
Resource   ./tests/api_tests/login/keywords/api_login_keyword.robot
Resource   ./tests/api_tests/users/keywords/api_users_keyword.robot

*** Variables ***
${BROWSER}      chrome
${URL_API}      https://reqres.in
${URL}          https://the-internet.herokuapp.com/login