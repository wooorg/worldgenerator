# Feature: Sign up
#   As a guest
#   I want to sign in
#   So I can use the website
feature 'Sign up', :devise do

  # Scenario: Registering to the website
  #   Given I'm a guest user
  #   When I visit the homepage
  #   And I click on the registration link
  #   And I fill the form with my registration details
  #   Then I should be registered
  xscenario 'user can sign up'
end