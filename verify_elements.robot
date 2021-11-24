*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}    https://vaccine-haven.herokuapp.com/
${CITIZENID}    9621054549161
${SITENAME}    OGYHSite
${VACCINENAME}    Sinopharm


*** Test Cases ***
Open the selected website
    open browser    ${URL}    ${BROWSER}

Check if there are the registration, reservation, and my-info pages
    page should contain element  id:register__link
    page should contain element  id:reserve__link
    page should contain element  id:check_info__link

*** Keywords ***
