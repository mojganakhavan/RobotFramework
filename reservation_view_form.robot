*** variables ***

${reservation_pg_label_on_page}                                     List
${reservation_pg_view_button}                                      xpath=//a[text()='View']
${Reservation_save_edit_form_pg_button}                            xpath=//a[text()='Save']   
${Reservation_form_pg_button_show_reservation}                     xpath=//a[text()='Show All Reservations']  


*** keywords ***
navigate_to_view_reservation_form 
                        
    click element                                  ${reservation_pg_view_button} 
    Wait until page contains element                ${reservation_pg_view_button} 
    
     

    