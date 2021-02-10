*** Settings ***
Library    RequestsLibrary

*** Variables ***

${base_url}     https://jsonplaceholder.typicode.com
${city}     1


*** Test Cases ***
get weather info
    create session    mymission   ${base_url}
    ${response}=    GET request    mymission    /todos/${city}
    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}