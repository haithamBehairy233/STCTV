*** Settings ***
Library     SeleniumLibrary
Resource        ../PO/LandingPage_PO.robot

*** Variables ***

*** Keywords ***
Assert Default Country
    Assert Default Country in Landing Page

Choose Country KSA
    Press Logo Ksa Country

Choose Country Bahrain
    Press Logo Bahrain Country

Choose Country Kuwait
    Press Logo Kuwait Country

Assert Light Packag type,Currency and Price
    [Arguments]     ${Currency}     ${Price}
    Assert Light Package type
    Assert Light Package Currency     ${Currency}
    Assert Light Package Price     ${Price}

Assert The Basic Packag type,Currency and Price
    [Arguments]     ${Basic_Currency}     ${Basic_Price}
    Assert The Basic Package type
    Assert The Basic Package Currency     ${Basic_Currency}
    Assert The Basic Package Price        ${Basic_Price}

Assert Premium Packag type,Currency and Price
    [Arguments]     ${Premium_Currency}     ${Premium_Price}
    Assert Premium Package type
    Assert Premium Package Currency      ${Premium_Currency}
    Assert Premium Package Price         ${Premium_Price}

