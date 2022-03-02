*** Settings ***
Documentation  Testing Infotiv Car Rental Page
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Suite Setup  Begin Web Test
Suite Teardown  End Web Test


*** Variables ***
${BROWSER}  chrome
${URL}  http://rental3.infotiv.net/
${FIRST_NAME}  Hiroshi
${LAST_NAME}  Teshigahara
${PHONE_NUMBER}  1324354657
${MAIL}  hiroshi.teshigahara789@gmail.com
${PASSWORD}  secret666

*** Test Cases ***
User Can Create New User
    [Documentation]  Testing that user has to fill out all fields to create a new user.
    [Tags]  create user
    Go To Create User
    Create User With Missing Field



#User Can Select Trip Date
#    [Documentation]  Testing that user can select a trip date.
#    [Tags]  select date




