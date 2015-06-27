

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
  save_and_open_page
  click_button 'Sign in'
end


When(/^I click sign up button$/) do
  click_link ('sign up')

end

Then(/^I should see Please Sign Up$/) do
  page.should have_content("Please sign up")
end

Given(/^I am on the sign up page$/) do
  visit '/'
  click_link 'sign up'
end

When(/^I enter a username$/) do
  fill_in('username',:with => 'newtest')
end

When(/^I enter a password$/) do
  fill_in('password',:with => 'newtest')
end

When(/^I click submit$/) do
  click_button("Sign up")
end

Then(/^I should see Welcome to Super Wealth$/) do
  page.should have_content("Welcome to Super Wealth")
end

Given(/^I am logged in with no investments$/) do
  visit '/'
  click_link 'sign up'
  fill_in('username',:with => 'hi')
  fill_in('password',:with => 'hi')
  click_button("Sign up")
end

Then(/^I should see no investments$/) do
  page.should have_content("No investments have been created yet")
end

