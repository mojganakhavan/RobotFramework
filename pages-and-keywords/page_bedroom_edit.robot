
*** variables ***
 ${bedroom_menu_list_pg}                     xpath=//*[@id="side-menu"]/li[3]/a
 ${bedroom_list_pg_edit_button}              xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[8]/a[2]
 ${bedroom_edit_pg_save_button}              xpath=//a[text()='Save']

*** keywords ***
 
Test_bedroom_Edit
   
    Click Element                            ${bedroom_menu_list_pg}
    Wait Until Page Contains                 List
    Click Element                            ${bedroom_list_pg_edit_button}
    Wait Until Page Contains                 Edit Bedroom
    ${bedroom_floor}=                        Generate Random String        1        [NUMBERS]
    ${bedroom_number}=                       Generate Random String        3       [NUMBERS]
    ${bedroom_price}=                        Generate Random String        6        [NUMBERS]
    input Text                               id=floor        ${bedroom_floor}
    input Text                               id=number       ${bedroom_number}
    input Text                               id=priceDaily   ${bedroom_price}
    Click Element                            ${bedroom_edit_pg_save_button}
    Wait Until Page Contains                 Bedroom was successfully updated.
    Wait Until Page Contains                 View
    Page should contain                      ${bedroom_floor}
    Page should contain                      ${bedroom_number}
    #Page should contain                      ${bedroom_price}
