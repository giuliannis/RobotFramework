*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${input_firstName}    css:input[placeholder="First Name"]
${input_lastName}    css:input[placeholder="Last Name"]
${input_email}    css:input[type="Email"]
${input_telefone}    css:input[type="tel"]
${input_gender}    xpath://*[@id="basicBootstrapForm"]/div[5]/div/label[2]/input
${button_submit}    id:submitbtn
${input_hobbies}    id:checkbox1
${input_language}    xpath://*[@id="basicBootstrapForm"]/div[7]/div/multi-select/div[2]/ul/li[8]/a

*** Keywords ***
abrir navegador e acessar site
    Open Browser    https://demo.automationtesting.in/Register.html    chrome

preencher campos
    Input Text    ${input_firstName}    Giu
    Input Text    ${input_lastName}    O.
    Input Text    ${input_email}    teste@testmail.com
    Input Text    ${input_telefone}    29293929392 
    Select Radio Button    radiooptions    FeMale   
    Sleep    10s

 clicar em submit
     Scroll Element Into View    ${button_submit}
     Click Element    ${button_submit}

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador e acessar site
    preencher campos
    clicar em submit
    fechar navegador