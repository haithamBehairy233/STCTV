*** Settings ***
Resource   ../Resources/Keywords/Common_Keywords.robot
Resource   ../Resources/Keywords/LandingPage_Keywords.robot

Test Setup    Begin Test on server
Test Teardown   End Test on server

*** Variables ***
${KSA_Currency}       ريال سعودي/شهر
${KSA_Light_Price}         15
${KSA_Basic_Price}         25
${KSA_Premium_Price}       60

${Kuwait_Currency}       دينار كويتي/شهر
${Kuwait_Light_Price}         1.2
${Kuwait_Basic_Price}         2.5
${Kuwait_Premium_Price}       4.8

${Bahrain_Currency}       ‫دينار بحريني/شهر
${Bahrain_Light_Price}         2
${Bahrain_Basic_Price}         3
${Bahrain_Premium_Price}       6

*** Test Cases ***
Verify KSA Packages Type & Price and Currency
    Assert Default Country
    Choose Country KSA
    Assert Light Packag type,Currency and Price         ${KSA_Currency}           ${KSA_Light_Price}
    Assert The Basic Packag type,Currency and Price     ${KSA_Currency}           ${KSA_Basic_Price}
    Assert Premium Packag type,Currency and Price       ${KSA_Currency}           ${KSA_Premium_Price}

Verify Kuwait Packages Type & Price and Currency
    Assert Default Country
    Choose Country Kuwait
    Assert Light Packag type,Currency and Price         ${Kuwait_Currency}         ${Kuwait_Light_Price}
    Assert The Basic Packag type,Currency and Price     ${Kuwait_Currency}         ${Kuwait_Basic_Price}
    Assert Premium Packag type,Currency and Price       ${Kuwait_Currency}         ${Kuwait_Premium_Price}

Verify Bahrain Packages Type & Price and Currency
    Assert Default Country
    Choose Country Bahrain
    Assert Light Packag type,Currency and Price         ${Bahrain_Currency}        ${Bahrain_Light_Price}
    Assert The Basic Packag type,Currency and Price     ${Bahrain_Currency}        ${Bahrain_Basic_Price}
    Assert Premium Packag type,Currency and Price       ${Bahrain_Currency}        ${Bahrain_Premium_Price}
