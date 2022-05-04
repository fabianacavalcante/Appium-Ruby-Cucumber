Feature: General Store

  Scenario: Validate the products screen
    Given I have the General Store screen
    When I complete the user information
    Then I should have the Products screen

  Scenario: Validate the cart screen
    Given I have the Products screen
    When I select products
    And add to cart
    Then I should have the product in the Cart screen

  Scenario: Validate the total amount
    Given I have a select a product
    And add to a cart
    When I access the Cart screen
    Then I should have the "$ 280.97" total amount

