*** variables ***
${client_delete_from_list_button}                   xpath=//a[text()='Delete']
${client_list_pg_label_on_page}                      List

*** keywords ***
navigate_to_delete_client_form 
                        
    click element                                  ${client_delete_from_list_button} 
    Wait until page contains element                ${client_delete_from_list_button}  
    
     