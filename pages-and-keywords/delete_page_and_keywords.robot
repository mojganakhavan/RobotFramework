
*** variables ***
${client_form_pg_label_on_page}                         Create New Client
${user_list_pg_deleted_message}                         User was successfully deleted. 

${user_list_pg_button_delete}                           xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[7]/a[3]
${user_name}                                            xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[3]   
${client_create_form_pg_button_show_clients}            xpath=//a[text()='Show All Clients']  
${client_create_form_pg_button_index}                   xpath=//a[text()='Index']




*** keywords ***
delete_an_user
    #${client_name} =                                    Generate Random String                                          10                  [LOWER]
    #${client_email} =                                   Catenate      SEPARATOR=                  ${client_name}        @email.com  
    #${client_security_number} =                         Generate Random String                                          7                   [NUMBERS]
    #Set Suite Variable                                  ${client_name}                            ${client_name}       
	#Set Suite Variable                                  ${client_email}                           ${client_email}
    #Set Suite Variable                                  ${client_security_number}                 ${client_security_number}    
    #${log_message}       Catenate                       \nData used in the create client form:\n  ${client_name}  ${client_email}  ${client_security_number}   
    #Log to Console    ${log_message}  
    
    #page should contain element delete button
    #clic element detele button
    #User was successfully deleted.   xpath=//*[@id="j_idt49:messagePanel"]/table/tbody/tr/td
    #    Element Text Should Be                     ${error_massage}                            Login and Password Wrong
    #    Wait Until Page Contains Element           ${dashboard_pg_logout_menu}
    
    
    
    Page should contain                                 Delete
   
    click element                                       ${user_list_pg_button_delete}
    Wait until page contains                            ${user_list_pg_deleted_message}    
    
   Page should not contain                                 ${user_name}
 