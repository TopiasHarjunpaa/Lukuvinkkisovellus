*** Settings ***
Resource  resource.robot
Resource  login_resource.robot
Resource  data_resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Go To Home Page


*** Test Cases ***

Login And Go To Tag Page
    Set Username  ${test_user_1}
    Set Password  ${test_passwd_1}
    Submit Login Credentials    
    Click Link  Hallinnoi tageja
    Page Should Contain  Lisää uusi tagi

Add New Tag With Valid Name
    Go To Home Page
    Click Link  Hallinnoi tageja
    Set Tag Name  ${test_tagname}
    Click Element  submit
    Page Should Contain  ${test_tagname}

Add New Tag With Too Short Name
    Go To Home Page
    Click Link  Hallinnoi tageja
    Set Tag Name  ${test_tagname_2}
    Click Element  submit
    Page Should Contain  ${test_tagname}
    Page Should Not Contain  ${test_tagname_2}

Delete Tag From The List
    Go To Home Page
    Click Link  Hallinnoi tageja
    Click Element  xpath://*[@id="${test_tagname}"]
    Page Should Not Contain  ${test_tagname}  

Add Multiple Tags With Valid Names
    Go To Home Page
    Click Link  Hallinnoi tageja
    Set Tag Name  ${test_tagname}
    Click Element  submit
    Set Tag Name  ${test_tagname_3}
    Click Element  submit
    Set Tag Name  ${test_tagname_4}
    Click Element  submit
    Set Tag Name  ${test_tagname_5}
    Click Element  submit
    Page Should Contain  ${test_tagname}
    Page Should Contain  ${test_tagname_3}
    Page Should Contain  ${test_tagname_4}
    Page Should Contain  ${test_tagname_5}

Add Tag To Book
    Go To Home Page
    Press Keys  None  PAGE_DOWN
    Sleep  1
    Click Element  xpath://*[@id="${test_title}"]
    Click Button  Muuta tageja
    Click Element  xpath://*[@id="${test_tagname}"]
    Click Button  Muuta tageja
    Click Element  submit
    Home Page Should Be Open
    Page Should Contain  ${test_tagname}

Add Tag To Podcast
    Go To Home Page
    Press Keys  None  PAGE_DOWN
    Sleep  1
    Click Element  xpath://*[@id="${test_episode}"]
    Click Button  Muuta tageja
    Press Keys  None  PAGE_DOWN
    Sleep  1
    Click Element  xpath://*[@id="${test_tagname_3}"]
    Click Button  Muuta tageja
    Click Element  submit
    Home Page Should Be Open
    Page Should Contain  ${test_tagname_3}

#Add Tag To Blog
    #Go To Home Page
    #Press Keys  None  PAGE_DOWN
    #Sleep  1
    #Click Element  xpath://*[@id="${test_blog_title}"]
    #Click Button  Muuta tageja
    #Press Keys  None  PAGE_DOWN
    #Sleep  1
    #Click Element  xpath://*[@id="${test_tagname_4}"]
    #Click Button  Muuta tageja
    #Click Element  submit
    #Home Page Should Be Open
    #Page Should Contain  ${test_tagname_4}

Add Tag To Video
    Go To Home Page
    Press Keys  None  PAGE_DOWN
    Sleep  1
    Click Element  xpath://*[@id="${test_video_title_2}"]
    Click Button  Muuta tageja
    Press Keys  None  PAGE_DOWN
    Sleep  1
    Click Element  xpath://*[@id="${test_tagname_5}"]
    Click Button  Muuta tageja
    Click Element  submit
    Home Page Should Be Open
    Page Should Contain  ${test_tagname_5}

Delete Last Tag From The List
    Go To Home Page
    Click Link  Hallinnoi tageja
    Click Element  xpath://*[@id="${test_tagname_5}"]
    Page Should Not Contain  ${test_tagname_5} 
    Page Should Contain  ${test_tagname_3}
    Page Should Contain  ${test_tagname_4} 

Delete All Remaining Tags From The List
    Go To Home Page
    Click Link  Hallinnoi tageja
    Click Element  xpath://*[@id="${test_tagname}"]
    Click Element  xpath://*[@id="${test_tagname_3}"]
    Click Element  xpath://*[@id="${test_tagname_4}"]
    Page Should Not Contain  ${test_tagname}
    Page Should Not Contain  ${test_tagname_3}
    Page Should Not Contain  ${test_tagname_4}
    Page Should Not Contain  ${test_tagname_5}
