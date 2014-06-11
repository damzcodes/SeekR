Given(/^a User "(.*?)" is already registered$/) do |user|
  user = User.create!(:name => "NGO_User", :email => "ngo_user@example.org", :password => "password")
end

Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I follow the login link$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I enter my email as "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^my password is "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be logged in$/) do
  pending # express the regexp above with the code you wish you had
end