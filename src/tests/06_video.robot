*** Settings ***
Resource  resource.robot
Resource  login_resource.robot
Resource  data_resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Go To Home Page


*** Test Cases ***
Add New Blog Without Title
    Set Username  ${test_user_1}
    Set Password  ${test_passwd_1}
    Submit Login Credentials    
    Click Link  xpath://a[@href="/new_video"]
    Set Url  ${test_video_url}
    Set Description  ${test_video_description}
    Click Element  submit
    Page Should Contain  Tähdellä (*) merkityt kohdat ovat pakollisia

Add New Video Without Url
    Go To Home Page
    Click Link  xpath://a[@href="/new_video"]
    Set Videotitle  ${test_video_title}
    Set Description  ${test_video_description}
    Click Element  submit
    Page Should Contain  Tähdellä (*) merkityt kohdat ovat pakollisia

Add New Video
    Go To Home Page
    Click Link  xpath://a[@href="/new_video"]
    Set Videotitle  ${test_video_title}
    Set Url  ${test_video_url}
    Set Description  ${test_video_description}
    Click Element  submit
    Page Should Not Contain  Tähdellä (*) merkityt kohdat ovat pakollisia

Add New Video Without Description
    Go To Home Page
    Click Link  xpath://a[@href="/new_video"]
    Set Videotitle  ${test_video_title_2}
    Set Url  ${test_video_url_2}
    Click Element  submit
    Page Should Not Contain  Tähdellä (*) merkityt kohdat ovat pakollisia

Video Is Found From List
    Go To Home Page
    Page Should Contain  Otsikko: ${test_video_title}