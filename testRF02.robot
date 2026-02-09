*** Settings ***
Library                 SeleniumLibrary     timeout=120s        implicit_wait=5s
Suite Setup             Open Browser        https://chiangmuan.igovapp.com/   chrome
Suite Teardown          Close Browser

*** Variables ***
${Email}                naysasatadur5555@gmail.com
${Password}             B@om1869900601590
${ID}                   1869900601590
${Firstname}            ภัทรวินทร์
${Lastname}             รุ่งพนารัตน์
${Date}                 06092548




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
    Click Element           //*[@id="react-aria4870567883-«r19»-1869900601590-00131-$.0"]/a

Click Take an assessment Button
    Click Element           //*[@id="root"]/div/main/article/section[3]/div/div/div/a

# Click examine Button
#     Click Element           //*[@id="react-aria4870567883-«r19»-1869900601590-00131-$.0"]/a

# Click examine Button
#     Click Element           //*[@id="react-aria4870567883-«r19»-1869900601590-00131-$.0"]/a

# Click examine Button
#     Click Element           //*[@id="react-aria4870567883-«r19»-1869900601590-00131-$.0"]/a

# Click examine Button
#     Click Element           //*[@id="react-aria4870567883-«r19»-1869900601590-00131-$.0"]/a






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


