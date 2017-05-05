*** Settings ***
Library                                        Selenium2Library
Library                                        OperatingSystem
Library                                        String

Resource                                       ./pages-and-keywords/test_setup_and_teardown.robot
Resource                                       ./pages-and-keywords/login_page_and_keywords.robot  
Resource                                       ./pages-and-keywords/dashboard_page_and_keywords.robot
Resource                                       ./pages-and-keywords/delete_page_and_keywords.robot
Resource                                       ./pages-and-keywords/delete_client_from_list.robot
Resource                                       ./pages-and-keywords/reservation_view_form.robot
Resource                                       ./pages-and-keywords/page_bedroom_edit.robot
Resource                                       ./pages-and-keywords/page_create_new_bedroom.robot
Test Setup                                     Setup
Test Teardown                                  Teardown                     


*** Test Cases ***
Test_login_as_invalid_user
    perform_login_invalid_user   

Test_bedroom_Edit
   perform_login_admin_user
   Test_bedroom_Edit
   perform_logout

Test_create_new_bedroom
   perform_login_admin_user
   Test_create_new_bedroom
   perform_logout
   
Test_delete_an_user
   perform_login_admin_user
   navigate_to_user_page_link_left 
   delete_an_user
   perform_logout 

   
Test_view_hotel_reservation
    perform_login_admin_user
    navigate_to_reservation_page_link_left
    navigate_to_view_reservation_form
    perform_logout
    
Test_delete_client_from
    perform_login_admin_user
    navigate_to_client_page_link_left
   navigate_to_delete_client_form 
    perform_logout
   
