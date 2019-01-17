*** Settings ***
Library           Selenium2Library

*** Test Cases ***
内部页面
    open browser    http://hotels.ctrip.com/hotel/shanghai2/k1%E6%B7%AE%E6%B5%B7%E8%B7%AF#ctm_ref=ctr_hp_sb_lst    gc
    Maximize Browser Window
    click element    xpath=//*[@id="J_sortBox"]/div[3]/div[1]
    click element    xpath=//*[@id="txtCheckIn"]
    sleep    2
    click element    xpath=//*[@id="2019-01-20"]
    sleep    2
    click element    xpath=//*[@id="2019-02-20"]
    click element    link=价格 低
    sleep    2
    click element    xpath=//*[@id="appd_wrap_close"]
    sleep    2
    click element    xpath=//*[@id="8578318"]/ul/li[2]/h2/a
    sleep    2

主页面
    open browser    http://www.ctrip.com/?utm_source=baidu&utm_medium=cpc&utm_campaign=baidu81&campaign=CHNbaidu81&adid=index&gclid=&isctrip=T    gc
    Maximize Browser Window
    input text    xpath=//*[@id="HD_CityName"]    上海
    input text    xpath=//*[@id="HD_TxtKeyword"]    淮海路
    sleep    1
     \ Press Key    xpath=//*[@id="HD_TxtKeyword"]    13
    sleep    1

弹出窗口处理
    ${mes}    confirm action
    choose cancel on next confirmation

登陆
    input text    xpath=//*[@id="nloginname"]    13512111307
    input text    xpath=//*[@id="npwd"]    yn1991yjqwnq

备用
    click element    xpath=//*[@id="v_departure"]
    sleep    1
    Click Element    xpath=//*[@id="HD_Btn"]
    sleep    1
    select window    http://hotels.ctrip.com/hotel/shanghai2/k1%E6%B7%AE%E6%B5%B7%E8%B7%AF#ctm_ref=ctr_hp_sb_lst
