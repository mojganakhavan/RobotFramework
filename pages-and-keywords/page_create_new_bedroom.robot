*** variables ***
 
${bedroom_pg_create_bedroom}                          Bedroom was successfully created.
 ${menu_bedroom_link}                                  xpath=//*[@id="side-menu"]/li[3]/a
 ${button_create_new_bedroom}                          xpath=//*[@id="j_idt49"]/a[2]
 ${drop_dwon_menu_bedroom_form_first}                  xpath=//option[contains(text(),'REFORM')]
 ${drop_dwon_menu_bedroom_form_second}                 xpath=//option[contains(text(),'CLASSIC BED TWIN')] 
 ${button_save}                                        xpath=//a[text()='Save'] 
 
 *** keywords ***
 
 Test_create_new_bedroom
    Click Element                            ${menu_bedroom_link}
    Wait Until Page Contains                 List
    Click Element                            ${button_create_new_bedroom}
    Wait Until Page Contains                 Create New Bedroom
    ${bedroom_Description}=                  Generate Random String        4       [LOWER]
    ${bedroom_floor}=                        Generate Random String        1       [NUMBERS]
    ${bedroom_number}=                       Generate Random String        3       [NUMBERS]
    ${bedroom_price}=                        Generate Random String        6       [NUMBERS]

    input Text                               id=description   ${bedroom_Description}
    input Text                               id=floor        ${bedroom_floor}
    input Text                               id=number       ${bedroom_number}
    input Text                               id=priceDaily   ${bedroom_price}
    click element                             ${drop_dwon_menu_bedroom_form_first}       
    click element                             ${drop_dwon_menu_bedroom_form_second}                                        
    Click Element                             ${button_save}            
    Wait Until Page Contains                  ${bedroom_pg_create_bedroom}
    Wait Until Page Contains                  View
