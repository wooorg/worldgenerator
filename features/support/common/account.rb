Given /^I am the backend$/ do
  pending
end

Given /^I'm a guest user$/ do
  pending
  visit new_user_registration_path
end

Given /^I'm a logged in user$/ do
  pending
end

Given /^I'm a logged in api user$/ do
  pending
end

Given /^I'm a registered user$/ do
  pending
  user = FactoryGirl.create(:user)
end