Feature: Story API
  Basic feature test for a sample API
   
  Scenario: Connecting to the API
    Given a story API
    When I request the story details
    Then I have the story details 