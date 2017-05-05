*** Settings ***
Library                                        Selenium2Library
Library                                        OperatingSystem
Library                                        String

Resource                                       ./pages-and-keywords/test_setup_and_teardown.robot
Resource                                       ./pages-and-keywords/login_page_and_keywords.robot  
Resource                                       ./pages-and-keywords/dashboard_page_and_keywords.robot
Resource                                       ./pages-and-keywords/delete_page_and_keywords.robot

Test Setup                                     Setup
Test Teardown                                 Teardown                     


*** Test Cases ***
Test_login_as_invalid_user
    perform_login_invalid_user   
   
   
Test_delete_an_user
   perform_login_admin_user
   navigate_to_user_page_link_left 
   delete_an_user
   perform_logout
   