Feature: Reorder tickets in to priority order
    In order to create a prioritised list
    As a Product Owner
    I want to be able to change the order of the listed Sifter tickets

    Background: 
      Given there is a project with the following details:
      | id | name      | sifter_id |
      | 12 | DigitalNZ | 12345     |

    Scenario: Change the order that tickets are listed in on the project page
      Given I am on a project landing page
      When I change the order of the list of tickets
      And I click the button "Save order"
      Then the ticket priority values should be updated