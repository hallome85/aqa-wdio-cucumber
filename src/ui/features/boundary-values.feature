Feature: [UI] [Create Product] [Positive]

  Background:
    Given I open Sales Portal
    Then I wait that "Sign In" page is loaded
    When I enter "aqacourse@gmail.com" to "Email input" on "Sign In" page
    And I enter "password" to "Password input" on "Sign In" page
    And I click on "Login button" on "Sign In" page
    Then I wait that "Home" page is loaded
    And I should see "Logged User label" contains text "AQA " on "Home" page

  Scenario Outline: Successfully created product
    When I click in Menu on "Products" on "Home" page
    Then I wait that "Products List" page is loaded
    When I click on "Add New Product" on "Products List" page
    Then I wait that "Add New Product" page is loaded
    When I enter "<name>" to "Name input" on "Add New Product" page
    And I select "<manufacturer>" in "Manufacturer dropdown" on "Add New Product" page
    And I enter "<price>" to "Price input" on "Add New Product" page
    And I enter "<amount>" to "Amount input" on "Add New Product" page
    And I enter "<notes>" to "Notes textarea" on "Add New Product" page
    And I click on "Save Product button" on "Add New Product" page
    Then I wait that "Products List" page is loaded
    And I should see notification contains text "Product was successfully created" on "Products List" page
    And I have to log out from "Products List" page

    # When I click on "Home" on "Products List" page 
    # Then I wait that "Home" page is loaded
    # When I select "Sign out" in "Logged User label" on "Home" page
    # When I click on "Sign out" on "Products List" page


    Examples:
      | name                                     | manufacturer | price | amount | notes                                                                                                                                                                                                                                                      |
      | Aaa                                      | Google       | 1     | 0      | 0                                                                                                                                                                                                                                                          |
      | Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | Sony         | 99999 | 999    | рррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррppp |

# TODO: npm run test -- --spec="./src/ui/features/boundary-values.feature"