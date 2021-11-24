*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}    https://vaccine-haven.herokuapp.com/
${CITIZENID}    9621054549161
${SITENAME}    OGYHSite
${VACCINENAME}    Sinopharm


*** Test Cases ***
Open the selected website and go to cancellation part
    open browser    ${URL}    ${BROWSER}
    click element  xpath://*[@id="nav__info__link"]

Go to my info page to cancel the reserved vaccine
    input text  name:citizen_id   ${CITIZENID}
    click element  xpath://*[@id="info__btn"]
    wait until element contains  id:reserve_vaccine_value   ${VACCINENAME}
    wait until element contains  id:reserve_site_value  ${SITENAME}
    element should contain  id:reserve_vaccine_value    ${VACCINENAME}
    element should contain  id:reserve_site_value   ${SITENAME}
    click button  id:cancel__btn

