# Feature: Password recovery
#   As a user
#   I want to recover my lost password
#   So I can log in the site
feature 'Recovering/resetting Password', :devise do

  # Scenario: User should recover the account password
  #   Given I exist as a user
  #   And I am not signed in
  #   When I visit the "password recovery" page
  #   And I fill the password recovery form with my login details
  #   Then I should receive a link to reset my password
  xscenario 'user can recover the account password'

  # Scenario: User should reset the account password
  #   Given I exist as a user
  #   And I am not signed in
  #   And I received a link to reset my password
  #   When I visit the link to reset my password
  #   And I fill the form with my new password
  #   And I visit the homepage
  #   And I click on the "Sign in" button
  #   And I fill the form with my new login details
  #   Then I should be in the secured area
  xscenario 'user can reset the account password'
end