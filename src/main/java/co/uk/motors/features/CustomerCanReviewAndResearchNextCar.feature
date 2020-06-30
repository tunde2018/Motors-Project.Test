Feature: To Buy Car Search
  As a customer
  I want the ability to search for any cars of my choice
  So that I can choose one to buy


  Scenario Outline: Customer can Search for any car to buy
    Given I navigate to Motors homepage
    And I select "<Make(Any)>" from any car make
    And I select "<Model(Any)>" from any car model
    And I click on Search button
    Then the search "<CarReviews>" is displayed

    Examples:
      |Make(Any)|Model(Any)|CarReviews  |
      |OL10 3HL |Show all  | Show all    |


#Feature: Car Reviews Search
 # As a customer
 # I want the ability to review any cars of my choice
 # So that I can choose one to buy

  #Scenario Outline: Customer can Search for any car reviews
  #  Given I navigate to Motors homepage
  #  When I select "<Make(Any)>" from any car make
  #  And I select "<Model(Any)>" from any car model
  #  And I click on Search button
   # Then the search "<CarReviews>" is displayed

  #  Examples:
   #   |Make(Any)|Model(Any)|CarReviews|
    #  |BMW      |X6     |Show all     |
