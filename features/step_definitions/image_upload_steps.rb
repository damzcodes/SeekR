Given(/^a user is on the homepage$/) do
  visit url_for(:pages, :homepage)
end

Given(/^the user is logged in$/) do
  visit url_for(:user, :login)
  fill_in 'Email', :with => @user.email
  fill_in 'Password', :with => @user.password
  click_button 'Sign In'
end

Then(/^user should see a section about reporting a missing person$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^he is able to upload multiple photos of the missing person$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^he clicks on the Upload button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the photos are stored in the database$/) do
  pending # express the regexp above with the code you wish you had
end