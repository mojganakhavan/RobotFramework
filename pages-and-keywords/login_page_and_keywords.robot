*** Settings ***
Resource                                       dashboard_page_and_keywords.robot 
Resource                                       ../credentials/login_credentials.robot

*** Variables ***
${login_pg_title}                              Hotel Accomodation - login page
${login_pg_login_label}                        Login
${login_pg_textfield_username}                 id=formLogin:login        
${login_pg_textfield_password}                 id=formLogin:senha
${login_pg_button_login}                       name=formLogin:j_idt27
${login_pg}
${error_massage}                               xpath=//*[@id="messagePanel"]/table/tbody/tr/td

*** keywords ***
perform_login_invalid_user
    Input Text                                 ${login_pg_textfield_username}            ${invalid_user_username}
    Input Text                                 ${login_pg_textfield_password}            ${invalid_user_password}
    Click Element                              ${login_pg_button_login}    
    Element Text Should Be                     ${error_massage}                            Login and Password Wrong
    
      
perform_login_admin_user
    Input Text                                 ${login_pg_textfield_username}            ${admin_username}
    Input Text                                 ${login_pg_textfield_password}            ${admin_password}
    Click Element                              ${login_pg_button_login}    
    Wait Until Page Contains Element           ${dashboard_pg_logout_menu}
    Wait Until Page Contains                   ${dashboard_pg_label_on_page}  
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    