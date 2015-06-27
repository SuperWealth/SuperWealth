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
  expect(find(:css, "#investments").length).to eq 0
end
