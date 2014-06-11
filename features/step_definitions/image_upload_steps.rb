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

end

When(/^he uploads multiple photos of the missing person$/) do
  visit url_for(:missing_person, :new)
  attach_file(:missing_person_images_attributes_0_image, 'spec/fixtures/boris.jpg')
  click_on "Save"
end

Then(/^the photos are stored in the database$/) do
  MissingPerson.count.should eq(1)
  Image.count.should eq(1)
end