require '../login'


Given(/^I am on the herokuapp page$/) do
  @orange = Home.new
  @orange.load
end

When(/^I input username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  @orange.username_field.set username
  @orange.password_field.set password
end

And(/^And I click in the Login button$/) do
  @orange.login_button.click
end

Then(/^I must see the text "([^"]*)"$/) do |text|
  expect(@orange.data_alert).to include text
end

And(/^And I click in the Logout button$/) do
  @orange.logout_button.click
end

Then(/^I must see the text "([^"]*)"$/) do |text|
  expect(@orange.data_alert).to include text
end