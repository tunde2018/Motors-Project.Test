Feature: To Buy Car Search
  As a customer
  I want the ability to search for any cars of my choice
  So that I can choose one to buy


  Scenario Outline: Customer can Search for any car to buy
    Given I navigate to Motors homepage
    When I enter "<PostCode>" into the search field
    And I select "<Make(Any)>" from any car make
    And I select "<Model(Any)>" from any car model
    And I select "<MinPrice(Any)>" from Min price
    And I select "<MaxPrice(Any)>" from Max price
    And I click on Search button
    Then the search "<CarLocation>" is displayed

    Examples:
      |PostCode | Make(Any)|Model(Any)|MinPrice(Any)|MaxPrice(Any)|CarLocation  |
      |OL10 3HL |Show all  |Show all  |£75,000      |£169,950     | Show all    |
#     |OL10 3HL |Show all  |Show all  |£75,000      |No max       | Show all    |
#     |OL10 3HL |Show all  |Show all  |No min       |£169,950     | Show all    |
#    |OL10 3HL |Show all  |Show all  |£75,000      | £169,950    | Show all    |
#    |OL10 3HL |Bentley  |Bentayga   |£75,000      | £250,000   | Show all    |
#    |OL10 3HL |Aston Martin  |Vantage 8 |£154,950      | £169,950    | Show all    |
#    |OL10 3HL |BMW     |X6 |£40,000     | £75,000   | Show all    |
#     |OL10 3HL |Toyota  |Hilux  |£9,000     |£60,000    | Show all    |


  Scenario Outline: Error page is displayed for any car to buy search
    Given I navigate to Motors homepage
    When I enter "<PostCode>" into the search field
    And I select "<Make(Any)>" from any car make
    And I select "<Model(Any)>" from any car model
    And I select "<MinPrice(Any)>" from Min price
    And I select "<MaxPrice(Any)>" from Max price
    And I click on Search button
    Then an error page is displayed

    Examples:
      |PostCode | Make(Any)|Model(Any)|MinPrice(Any)|MaxPrice(Any)|CarLocation  |
      |Manchester |Show all  |Show all  |£75,000      |£169,950     | Show all    |
      #|K1111KK |Show all  |Show all  |£75,000      |£169,950     | Show all    |




  # this the foundation of which the project is based.
  # To create step definitions right click on Scenario Outlines and Select run test
  # Copy and paste step definitons by right click on step deintion file and create BuySearchSteps paste it there

#      |PostCode  | Make(Any)           |Model(Any) |MinPrice(Any)|MaxPrice(Any)|CarLocation|
#      |OL10 3HL  |Show all             |Show all   |No min       |No max       | Show all  |
#      |OL10 3HL  |Show all             |Show all   |£77,594      |No max       |                      |
#      |OL10 3HL  |Aston Martin Vantage |Show all   | £         |£169,950          |                               |
#      |OL10 3HL  |Aston Martin Vantage |£159,950   |  £169,950    |             |                               |





#Scenario Outline: : Customer cannot search for cars with missing values
#    Given I navigate to Motors homepage
#    When I enter "<PostCode>" into the search field
#    And I select "<Make(Any)>" from any car make
#    And I select "<Model(Any)>" from any car model
#    And I select "<MinPrice(Any)>" from Min price
#    And I select "<MaxPrice(Any)>" from Max price
#    And I click on Search button
#    Then the search "<CarLocation>" is displayed
#
#  Examples:
#    |PostCode| Make(Any) |Model(Any)|MinPrice(Any)|MaxPrice(Any)|CarLocation|
#    |        | Bentley |Mulsanne   |£77,594      |£157,990   | Show all |
#

#Scenario Outline: Error page is displayed for invalid search
#  Given I navigate to Motors homepage
#  When I enter "<PostCode>" into the search field
#  And I select "<Make(Any)>" from any car make
#  And I select "<Model(Any)>" from any car model
#  And I select "<MinPrice(Any)>" from Min price
#  And I select "<MaxPrice(Any)>" from Max price
#  And I click on Search button
#  Then the search "<CarLocation>" is displayed
#
#
#  Examples:
#    |PostCode| Make(Any)|Model(Any)|MinPrice(Any)|MaxPrice(Any)|CarLocation|
#    |        |  |                  |             |             |           |
#
