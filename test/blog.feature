Feature: Counter


  Scenario: The counter just started
    Given The app is running 
    And I see {'you have pushed the button this many times:'} text
    And I see {'0'} text
    And I see {Icons.add} icon

    Scenario: The counter should increase
      Given the app is running
      When I tap {Icons.add} icon
      Then I see {'1'} text
      