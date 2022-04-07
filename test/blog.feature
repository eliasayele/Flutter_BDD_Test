Feature: Counter

  Background: 
    Given the app is running

  Scenario: The counter just started
    And I see {'You have pushed the button this many times:'} text
    And I see {'0'} text
    And I see {Icons.add} icon

  Scenario: The counter should increase
    When I tap {Icons.add} icon
    Then I see {'1'} text

  Scenario: The counter should show "two" instead of 2
    When I tap {Icons.add} icon twice
    Then I see {'two'} text
      
