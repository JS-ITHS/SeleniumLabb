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
${PASSWORD}  secret

*** Test Cases ***
#User Has To Fill Out All Fields To Create User
#    [Documentation]  Testing that user has to fill out all fields to create a new user.
#    [Tags]  krav-1
#    Go To Create User
#    Create User With Missing Field

User Can Cancel Creating a User
    [Documentation]  Testing that user can cancel creating a user.
    [Tags]  krav-1
    Go To Create User
    Cancel Creating User

User Need To Be Signed In To Book A Car
    [Documentation]  Testing that an alert box will appear if user is not signed in when booking car.
    [Tags]  krav-2
    Go To Car Rental
    Select Car Not Signed In
    Verify Alert Box Appears
    Confirm Back To Home Page

User Can Book A Car
    [Documentation]  Testing that a user can book a car.
    [Tags]  VG_test
    Sign Into User
    Go To Car Rental
    Select Car
    Confirm Booking Car
    Press Confirm To Book Car



#User Can Select Trip Date
#    [Documentation]  Testing that user can select a trip date.
#    [Tags]  select date




