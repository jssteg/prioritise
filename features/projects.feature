Feature: View a list of all the tickets in a project
    In order to work on the most important Sifter tickets
    As a developer
    I want view a list of open Sifter tickets.

    Background: 
      Given there is a project with the following details:
      | id | name      | sifter_id |
      | 12 | DigitalNZ | 12345     |

    Scenario: View DigitalNZ sifter tickets from projects page
      Given I am on the projects page
      When I go to the project page for DigitalNZ
      Then I should see a list of tickets