Feature: Image Upload

  Background:
    Given a User "ngo_user@example.org" is already registered

  Scenario: A user uploads a photo
    Given a user is on the homepage
      And the user is logged in
      Then user should see a section about reporting a missing person
      And he is able to upload multiple photos of the missing person
      When he clicks on the Upload button 
        Then the photos are stored in the database
