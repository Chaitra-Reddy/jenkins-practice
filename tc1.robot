*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}      https://www.amazon.in/

*** Test Cases ***
Search for pen
    Open Browser    ${url}      ${browser}
    Wait Until Element Is Visible    //*[@id="twotabsearchtextbox"]
    Input Text    //*[@id="twotabsearchtextbox"]    pen
    Click Element   //*[@id="nav-search-submit-button"]
    Sleep       2s
    Close Browser