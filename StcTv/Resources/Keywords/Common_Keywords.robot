*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${zelinum_URL}
${downloadDir}     /TestFiles
${waitingtime}      60s
${browser}    chrome
${URL}        https://subscribe.stctv.com/sa-ar?
*** Keywords ***
Begin Test on server
     [Documentation]  open Url and login to landing page
     Open Browser   about:blank   ${BROWSER}
     go to  ${URL}
     Maximize Browser Window
     Set Selenium Speed    0.3
     remove tags        fail

End Test on server
    run keyword if test failed          Add Cookie is falied
    run keyword if test passed          Add Cookie is passed
    Close Browser

Add Cookie is falied
    add cookie          zaleniumTestPassed          false

Add Cookie is passed
    add cookie          zaleniumTestPassed          true

Scroll_To_END
    execute javascript      window.scrollTo(0,document.body.scrollHeight);

Scroll_Down_with_Argument
    [Arguments]     ${XPathField}
    execute javascript   window.document.evaluate("${XPathField}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView({behavior: "auto", block: "center", inline: "center"});

Scroll_End_Page
    execute javascript      window.scrollTo(0,3000);

Hide_Calendar
    execute javascript      $(".calendars-popup").hide();