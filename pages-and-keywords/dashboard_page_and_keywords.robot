*** Settings ***
Resource                                           ./bedroom-pages/bedroom_list_page_and_keywords.robot
Resource                                           ./bill-pages/bill_list_page_and_keywords.robot
Resource                                           ./client-pages/client_list_page_and_keywords.robot
Resource                                           ./reservation-pages/reservation_list_page_and_keywords.robot
Resource                                           ./user-pages/user_list_page_and_keywords.robot


*** variables ***
${dashboard_pg_label_on_page}                      Dashboard
${dashboard_pg_logout_menu}                        xpath=//a[@class='dropdown-toggle']
${dashboard_pg_logout_submenu}                     xpath=//i[@class='fa fa-sign-out fa-fw']
#${dashboard_pg_top_link_to_index}                  xpath=//a[@class='navbar-brand']   
${dashboard_pg_left_link_dashboard}                xpath=//i[@class='fa fa-dashboard fa-fw']
#${dashboard_pg_left_link_bedroom}                  xpath=//i[@class='glyphicon glyphicon-bed fa-fw']
#${dashboard_pg_left_link_bill}                     xpath=//i[@class='fa fa-credit-card fa-fw']
${dashboard_pg_left_link_client}                   xpath=//i[@class='fa fa-male fa-fw']
${dashboard_pg_left_link_reservation}              xpath=//i[@class='fa fa-university fa-fw']
${dashboard_pg_left_link_user}                     xpath=//*[@id="side-menu"]/li[7]/a


*** keywords ***
perform_logout
    Page should contain element                    ${dashboard_pg_logout_menu}
    click element                                  ${dashboard_pg_logout_menu}
    Wait Until Page Contains Element               ${dashboard_pg_logout_submenu}
    click element                                  ${dashboard_pg_logout_submenu}
    Wait Until Page Contains                       ${login_pg_login_label}     
    Title Should be                                ${login_pg_title} 
    
navigate_to_dasboard_top_link
    Page should contain element                    ${dashboard_pg_top_link_to_index}
    click element                                  ${dashboard_pg_top_link_to_index}
    Wait until page contains                       ${dashboard_pg_label_on_page}
navigate_to_dasboard_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_dashboard}
    click element                                  ${dashboard_pg_left_link_dashboard}   
    Wait until page contains                       ${dashboard_pg_label_on_page}

navigate_to_user_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_user}
    click element                                  ${dashboard_pg_left_link_user}
    Wait until page contains                       ${user_pg_label_on_page}
    
    
navigate_to_reservation_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_reservation}
    click element                                  ${dashboard_pg_left_link_reservation}
    Wait until page contains                       ${reservation_pg_label_on_page}  
    

navigate_to_client_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_client}
    click element                                  ${dashboard_pg_left_link_client}
    Wait until page contains                       ${client_list_pg_label_on_page}   

       
    
    
    
    
