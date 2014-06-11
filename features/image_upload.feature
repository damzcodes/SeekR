Feature: Image Upload

  Background:
    Given a User "ngo_user@example.org" is already registered

  Scenario: A user uploads a photo
    Given a user is on the homepage
      And the user is logged in
    Then user should see a section about reporting a missing person
    When he uploads multiple photos of the missing person
    Then the photos are stored in the database
