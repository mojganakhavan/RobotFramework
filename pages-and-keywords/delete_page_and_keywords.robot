
*** variables ***
${user_list_pg_deleted_message}                         User was successfully deleted. 

${user_list_pg_button_delete}                           xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[7]/a[3]
${user_name}                                            xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[3]   
${client_create_form_pg_button_index}                   xpath=//a[text()='Index']




*** keywords ***
delete_an_user
    Page should contain                                 Delete
    click element                                       ${user_list_pg_button_delete}
    Wait until page contains                            ${user_list_pg_deleted_message}    
    Page should not contain                             ${user_name}
 