Feature: Add To Cart aplikasi saucedemo
  @Positive
  Scenario: Add product to cart
    #Precondition
    Given Halaman login sauce demo
    When Input Username
    And Input Password
    And Click login button
    And User is on products page
    #Steps
    And User pick one product
    And User click add to cart
    #Expected
    Then Button change to remove

  @Negative
  Scenario: Remove product from cart
    #Precondition
    Given Halaman login sauce demo
    When Input Username
    And Input Password
    And Click login button
    And User is on products page
    #Steps
    And User pick one product
    And User click add to cart
    And Button change to remove
    And User Click button remove
    #Expected
    Then Button change to add to cart