Feature: Checkout aplikasi saucedemo
  @Positive
  Scenario: Fill all field in Your information checkout
    #Precondition
    Given Halaman login sauce demo
    When Input Username
    And Input Password
    And Click login button
    And User is on products page
    And User pick one product
    And User click add to cart
    And Button change to remove
    And Click cart icon
    And Appear list your cart
    #Steps
    And Click button checkout
    And Appear form your information
    And input first name
    And input last name
    And input postal code
    And click continue
    #Expected
    Then Appear checkout overview

  @Negative
  Scenario: No Fill field last name in Your information checkout
    #Precondition
    Given Halaman login sauce demo
    When Input Username
    And Input Password
    And Click login button
    And User is on products page
    And User pick one product
    And User click add to cart
    And Button change to remove
    And Click cart icon
    #Steps
    And Appear list your cart
    And Click button checkout
    And Appear form your information
    And input first name
    And input postal code
    And click continue
    #Expected
    Then Show error message