When /^I fill the form with my registration details$/ do
  pending
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', :with => confirmation
  click_button 'Sign up'
end
When /^I fill the form with my right credentials$/ do
  pending
end
When /^I fill the form with my wrong credentials$/ do
  pending
end
Then /^I should be registered$/ do
  pending
end
When /^I fill the password recovery form with my login details$/ do
  pending
end

Then /^I should receive a link to reset my passowrd$/ do
  pending
end

Then /^I should see the details of my account$/ do
  pending
end

When /^change my account details$/ do
  pending
end
Then /^I should see the update details of my account$/ do
  pending
end

Given /^I received a link to reset my password$/ do
  pending
end
When /^I fill the form with my new password$/ do
  pending
end
When /^I fill the form with my new login details$/ do
  pending
end
