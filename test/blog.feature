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
      
  Scenario: The counter is green
    When The {'counter'} screenshot is verified   
    Then I see {'two'}     

    
  # Scenario Outline: Author posted an article
  #   Given the author fill the article information	 <title>     <description>   <body> | <image> |
  #   When the author submits the article
  #   Then the article should be successfully posted 
  #   Examples:
  #     | title    | description             | body            | image            |
	#     | title 1  | this is description 1   | this is body 1  | site.com/image1  |
	#     | title 2  | this is description 2   | this is body 2  | site.com/image2  |


  # Scenario Outline: Author failed to post an article
  #   Given the author fills an incomplete information:
  #     | <title> | <description> |  <body> |  <image> |
  #   When the author submits the article
  #   Then  the author should get an <error-message>
  #   And the system must prompt the author to re-submit complete information:
  #     | <title> | <description> |  <body> |  <image> |
  #   Examples:
  #     | title    | description             | body              | image            | error-message    |
  #     | 	       | this is description 1   | this is body 1    | site.com/image1  | No title provided|
  #     | title 2  | this is description 2   |   		             | site.com/image2  | No body provided |


  # Scenario Outline: Reader gets the list of articles published successfully
  #   Given there are articles published:
  #   	| <title>    | <description>| <body> | <image>|
  #   When the reader fetches articles
  #   Then the article should be displayed:
	#     | <title>    | <description>| <body> | <image>|
  #   Examples:
  #     |id| title    | description             | body            | image            |
  #     |1 | title 1  | this is description 1   | this is body 1  | site.com/image1  |
  #     |2 | title 2  | this is description 2   | this is body 2  | site.com/image2  |
