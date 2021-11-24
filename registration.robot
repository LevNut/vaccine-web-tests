*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}    https://vaccine-haven.herokuapp.com/
${CITIZENID}    9621054549161
${NAME}    LevNutForTesting
${SURNAME}    TestCase
${BIRTHDATE}    02/08/2001
${OCCUPATION}    SKEStudent
${PHONENUMBER}    1234567890
${ADDRESS}    KasetsartUniversity


*** Test Cases ***
Open the selected website and go to registration page
    open browser    ${URL}    ${BROWSER}
    click element   xpath://*[@id="root"]/div/div[2]/section[1]/div/div/div/div/div[2]/a/button

Fill in the registration form and press next button
    input text  name:citizen_id   ${CITIZENID}
    input text  name:name   ${NAME}
    input text  name:surname    ${SURNAME}
    input text  name:birth_date   ${BIRTHDATE}
    input text  name:occupation   ${OCCUPATION}
    input text  name:phone_number   ${PHONENUMBER}
    input text  name:address    ${ADDRESS}
    click element  xpath://*[@id="root"]/div/div[2]/div/form/div/div/div/div[2]/div[8]/div[2]/div/button

Go to my info page for verifying user identity
    click element  xpath://*[@id="nav__info__link"]
    input text  name:citizen_id   ${CITIZENID}
    click element  xpath://*[@id="info__btn"]

