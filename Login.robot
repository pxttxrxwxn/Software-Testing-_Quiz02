*** Settings ***
Library                 SeleniumLibrary     timeout=120s        implicit_wait=5s
Suite Setup             Open Browser        https://chiangmuan.igovapp.com/   chrome
Suite Teardown          Close Browser

*** Variables ***
${Email}                naysasatadur5555@gmail.com
${Password}             B@om1869900601590


*** Keywords ***
Click Login Button
    Click Element           //*[@id="root"]/div/nav/header/div/a[1]

Input Email
    Input Text              //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input        ${Email}

Input Password
    Input Text              //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[2]/input        ${Password}

Click Login2 Button
    Click Element           //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[3]/button

*** Test Cases ***
Input standard
    sleep   5s
    Click Login Button
    sleep   2s
    Input Email
    Input Password
    Click Login2 Button
    sleep   8s
    Wait Until Page Contains    ยินดีต้อนรับ
    sleep   2s
    Capture Page Screenshot     login_success.png

