Feature: View a list of all open Sifter tickets in a project
    In order to work on the most important Sifter tickets
    As a developer
    I want view a list of open Sifter tickets.

    Background: 
      Given there is a project with the following details:
      | name      | sifter_id |
      | DigitalNZ | 12345     |

    Scenario: View DigitalNZ sifter tickets from projects page
      Given I am on the projects page
      When I go to the project page for DigitalNZ
      Then I should get results