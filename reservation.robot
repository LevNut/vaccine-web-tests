*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}    https://vaccine-haven.herokuapp.com/
${CITIZENID}    9621054549161
${SITENAME}    OGYHSite
${VACCINENAME}    Sinopharm


*** Test Cases ***
Open the selected website and go to reservation page
    open browser    ${URL}    ${BROWSER}
    click element   xpath://*[@id="reserve__link"]/button

Fill in the vaccine reservation form and press next button
    input text  name:citizen_id   ${CITIZENID}
    Select From List by Value  name:site_name    ${SITENAME}
    Select From List by Value  name:vaccine_name    ${VACCINENAME}
    sleep   3s
    click element  xpath://*[@id="root"]/div/div[2]/div/form/div/div/div/div[2]/div[6]
    sleep   3s
    close browser

