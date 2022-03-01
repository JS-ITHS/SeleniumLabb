*** Settings ***
Documentation  Testing Infotiv Car Rental Page
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Suite Setup  Begin Web Test
Suite Teardown  End Web Test


*** Variables ***
${BROWSER}  chrome
${URL}  http://rental3.infotiv.net/

*** Test Cases ***


