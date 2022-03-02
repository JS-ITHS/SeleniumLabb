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
    Enter Create Account Information
    Press Create User
Create User
Sign Into User
    Enter Account Information
    Click Button  //*[@id="login"]
    Wait Until Page Contains  Logout
Enter Account Information
    Input Text  //*[@id="email"]  ${MAIL}
    Input Password  //*[@id="password"]  ${PASSWORD}
Enter Create Account Information
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
Cancel Creating User
    Click Button  //*[@id="cancel"]
    Verify Cancel Creating User Loaded
Verify Cancel Creating User Loaded
    Wait Until Page Contains  When do you want to make your trip?
End Web Test
    Close Browser



