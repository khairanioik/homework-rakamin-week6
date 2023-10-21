Feature: Login Page Aplikasi Sauce Demo
  @Positive
  Scenario: Success Login
    #Precondition
    Given Halaman login sauce demo
    #Steps
    When Input Username
    And Input Password
    And Click login button
    #Expected
    Then User is on products page

  @Negative
  Scenario: Failed Login
    #Precondition
    Given Halaman login sauce demo
    #Steps
    When Input Username
    And Input Invalid Password
    And Click login button
    #Expected
    Then User get error message