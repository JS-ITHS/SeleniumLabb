*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Go To Web Page
    Maximize Browser Window
Go To Web Page
    Load Page
    Verify Page Loaded
Load Page
    Go To  ${URL}
Verify Page Loaded
    Wait Until Page Contains  When do you want to make your trip?
Go To Create User
    Click Button  //*[@id="createUser"]
    Verify Create User Loaded
Verify Create User Loaded
    Wait Until Page Contains  Create a new user
Create User With Missing Field
    Enter Account Information
    Press Create User
    Verify PopUp Alert
Enter Account Information
    Enter First Name
    Enter Last Name
    Enter Phone Number
    Enter Mail
    Enter Confirm Mail
    Enter Password
Enter First Name
    Input Text  //*[@id="name"]  ${FIRST_NAME}
Enter Last Name
    Input Text  //*[@id="last"]  ${LAST_NAME}
Enter Phone Number
    Input Text  //*[@id="phone"]  ${PHONE_NUMBER}
Enter Mail
    Input Text  //*[@id="emailCreate"]  ${MAIL}
Enter Confirm Mail
    Input Text  //*[@id="confirmEmail"]  ${MAIL}
Enter Password
    Input Text  //*[@id="passwordCreate"]  ${PASSWORD}
Press Create User
    Click Button  //*[@id="create"]
Verify PopUp Alert
    Sleep  3s
    Wait Until Page Contains Element  //*[@id="userInfoTopBottom"]/comment()
End Web Test
    Close Browser



