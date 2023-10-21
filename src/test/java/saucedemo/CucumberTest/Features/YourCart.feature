Feature: Your Cart aplikasi saucedemo
  @Positive
  Scenario: Get List your cart
    #Precondition
    Given Halaman login sauce demo
    When Input Username
    And Input Password
    And Click login button
    And User is on products page
    And User pick one product
    And User click add to cart
    And Button change to remove
    #Steps
    And Click cart icon
    #Expected
    Then Appear list your cart

  @Negative
  Scenario: Remove list from your cart
    #Precondition
    Given Halaman login sauce demo
    When Input Username
    And Input Password
    And Click login button
    And User is on products page
    And User pick one product
    And User click add to cart
    And Button change to remove
    #Steps
    And Click cart icon
    And Appear list your cart
    #Expected
    Then User Click button remove