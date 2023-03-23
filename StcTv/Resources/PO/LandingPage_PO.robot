*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${waitingTime}      60
*** Keywords ***
Assert Default Country in Landing Page
    wait until element is visible       xpath=//span[@id='country-name']        ${waitingTime}
    element text should be      xpath=//span[@id='country-name']         السعودية
    click element    xpath=//span[@id='arrow']

Press Logo Ksa Country
    wait until element is visible     xpath=//a[@id='sa']      ${waitingTime}
    click link    xpath=//a[@id='sa']

Press Logo Bahrain Country
    wait until element is visible     xpath=//a[@id='bh']    ${waitingTime}
    click link    xpath=//a[@id='bh']

Press Logo Kuwait Country
    wait until element is visible     xpath=//a[@id='kw']    ${waitingTime}
    click link    xpath=//a[@id='kw']

Assert Light Package type
    wait until element is visible     xpath=//strong[@id='name-لايت']      ${waitingTime}
    element text should be     xpath=//strong[@id='name-لايت']      لايت

Assert Light Package Currency
    [Arguments]    ${Currency}
    wait until element is visible     xpath=//div[@id='currency-لايت']/i     ${waitingTime}
    element text should be     xpath=//div[@id='currency-لايت']/i    ${Currency}

Assert Light Package Price
    [Arguments]    ${Price}
    wait until element is visible     xpath=//div[@id='currency-لايت']/b    ${waitingTime}
    element text should be          xpath=//div[@id='currency-لايت']/b       ${Price}


Assert The Basic Package type
    wait until element is visible     xpath=//strong[@id='name-الأساسية']    ${waitingTime}
    element text should be     xpath=//strong[@id='name-الأساسية']     الأساسية

Assert The Basic Package Currency
    [Arguments]    ${Currency}
    wait until element is visible     xpath=//div[@id='currency-الأساسية']/i     ${waitingTime}
    element text should be     xpath=//div[@id='currency-الأساسية']/i       ${Currency}

Assert The Basic Package Price
    [Arguments]    ${Price}
    wait until element is visible     xpath=//div[@id='currency-الأساسية']/b    ${waitingTime}
    element text should be          xpath=//div[@id='currency-الأساسية']/b       ${Price}



Assert Premium Package type
    wait until element is visible     xpath=//strong[@id='name-بريميوم']    ${waitingTime}
    element text should be     xpath=//strong[@id='name-بريميوم']      بريميوم

Assert Premium Package Currency
    [Arguments]    ${Currency}
    wait until element is visible     xpath=//div[@id='currency-بريميوم']/i     ${waitingTime}
    element text should be     xpath=//div[@id='currency-بريميوم']/i     ${Currency}

Assert Premium Package Price
    [Arguments]    ${Price}
    wait until element is visible     xpath=//div[@id='currency-بريميوم']/b   ${waitingTime}
    element text should be          xpath=//div[@id='currency-بريميوم']/b     ${Price}









