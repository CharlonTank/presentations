Feature: Post new presentation
  In order to let some choice to our organizer
  As an internet user
  I want to be able to post a new presentation online

  Scenario: simple post
    Given I am on the homepage
    When I fill in "Nom" with "Thibaut Assus"
      And I fill in "Titre" with "Presentation sur cucumber"
      And I fill in "Email" with "foo@bar.com"
      And I press "Créer"
    Then I should be thanked successfully
      And I should see a presentation from "Thibaut Assus"

  Scenario: Signed in with meetup post
    Given I am signed in with provider "Meetup"
    When I fill in "Titre" with "Presentation sur cucumber"
      And I fill in "Email" with "foo@bar.com"
      And I press "Créer"
    Then I should be thanked successfully
      And I should see a presentation from "Foo Bar"
