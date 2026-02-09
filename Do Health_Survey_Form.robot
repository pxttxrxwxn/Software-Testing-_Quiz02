*** Settings ***
Library                 SeleniumLibrary     timeout=120s        implicit_wait=5s
Suite Setup             Open Browser        https://chiangmuan.igovapp.com/   chrome
Suite Teardown          Close Browser

*** Variables ***
${Email}                @gmail.com
${Password}             #####




*** Keywords ***
Click Login Button
    Click Element           //*[@id="root"]/div/nav/header/div/a[1]

Input Email
    Input Text              //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input        ${Email}

Input Password
    Input Text              //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[2]/input        ${Password}

Click Login2 Button
    Click Element           //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[3]/button

Click health database Button
    Click Element           //*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]/div/div[2]

Click Health examination history Button
    Click Element           //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a

Click examine Button
    Click Element           xpath=//a[normalize-space()='ตรวจสอบ']
    
Click Take an assessment Button
    Click Element           xpath=//a[normalize-space()='ทำแบบประเมิน']

Click Random Option
    [Arguments]    ${question_xpath}
    ${random_num}=    Evaluate    random.randint(1, 4)    modules=random
    Click Element    ${question_xpath}/descendant::label[${random_num}]

Click Element1
    Click Random Option           xpath=//div[contains(@aria-label, '1. เบื่อ')]

Click Element2
    Click Random Option           xpath=//div[contains(@aria-label, '2. ไม่สบายใจ')]

Click Element3
    Click Random Option           xpath=//div[contains(@aria-label, '3. หลับยาก')]

Click Element4
    Click Random Option           xpath=//div[contains(@aria-label, '4. เหนื่อยง่าย')]

Click Element5
    Click Random Option           xpath=//div[contains(@aria-label, '5. เบื่ออาหาร')]

Click Element6
    Click Random Option           xpath=//div[contains(@aria-label, '6. รู้สึกไม่ดี')]

Click Element7
    Click Random Option           xpath=//div[contains(@aria-label, '7. สมาธิไม่ดี')]

Click Element8
    Click Random Option           xpath=//div[contains(@aria-label, '8. พูดช้า')]

Click Element9
    Click Random Option           xpath=//div[contains(@aria-label, '9. คิดทำร้ายตัวเอง')]

Click Send
    Click Element                  xpath=//button[contains(text(), 'ส่งคำตอบ แบบประเมิน')]


*** Test Cases ***
Input standard
    sleep   3s
    Click Login Button
    sleep   2s
    Input Email
    Input Password
    Click Login2 Button
    sleep   7s
    Click health database Button
    sleep   2s
    Click Health examination history Button
    sleep   2s
    Click examine Button
    sleep   2s
    Click Take an assessment Button
    sleep   2s
    Click Element1
    Click Element2
    Click Element3
    Click Element4
    Click Element5
    Click Element6
    Click Element7
    Click Element8
    Click Element9
    Click Send
    sleep   5s