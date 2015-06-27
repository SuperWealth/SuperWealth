Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I enter a valid username$/) do
  fill_in('username', :with => 'Franz')
end

When(/^I enter a valid password$/) do
  fill_in('password',:with => 'hi')
end

When(/^I press enter$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the User Balance Page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click sign up button$/) do
  click_link ('sign up')
end

Then(/^I should see Please Sign Up$/) do
  page.should have_content("Please sign up")
end

Given(/^I am on the sign up page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter a username$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter a password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see User name created$/) do
  pending # Write code here that turns the phrase above into concrete actions
end