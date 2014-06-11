Given(/^a User "(.*?)" is already registered$/) do |user|
  user = User.create!(:organisation => "Red Cross", :email => "ngo_user@example.org", :password => "password")
end

Given(/^I am on the homepage$/) do
  visit '/user'
end

Given(/^I follow the login link$/) do
  click_on 'login'
end

When(/^I enter my email as "(.*?)"$/) do |email|
	save_and_open_page
  fill_in 'Email', :with => email
end

When(/^my password is "(.*?)"$/) do |password|
  fill_in 'Password', :with => password
end

Then(/^I should be logged in$/) do
  pending # express the regexp above with the code you wish you had
end