Given(/^I am logged in with a balance of £(\d+)$/) do |arg1|
  visit '/user_profile/1'
end

When(/^I am on my user profile page$/) do
  visit '/user_profile/1'
end

Then(/^I should see my balance of £(\d+)$/) do |arg1|
  expect(find(:css, "#balance").text).to eq "1000"
end

Given(/^I am logged in with no investments$/) do
  visit '/user_profile/1'
end

Then(/^I should see no investments$/) do
  expect(find(:css, "#investments")).to have_selector("li", count: 0)
end

Given(/^I have the investments Apple and IBM$/) do
  visit '/user_profile/2'
end

Then(/^I should see Apple and IBM investments$/) do
  expect()
end
