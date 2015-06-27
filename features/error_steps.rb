When(/^I enter an invalid username$/) do
  visit ('/')
  fill_in('username',:with => 'bloop')
end

When(/^I enter an invalid password$/) do
  fill_in('password',:with => 'bloop')
end

Then(/^I should see sorry error message$/) do
   save_and_open_page
   page.should have_content("sorry")
end

