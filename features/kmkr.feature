Feature: Create files with a date prefix
  In order to document things done on a certain day
  I want a one command way of creating date prefixed files
  So I don't have to do it myself

  Scenario: Basic UI
    When I get help for "kmkr"
    Then the exit status should be 0
    And the banner should be present
    And there should be a one line summary of what the app does
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version|
    And the banner should document that this app's arguments are:
      |extension|which is required|

  Scenario: Create an .md file with today's date
   When I successfully run `kmkr md`
   Then a file with a "md" extension and today's date should exist

  Scenario: Do not overwrite file if it already exists
   Given a file with a "md" extension and today's date exists with content "ola"
   When I successfully run `kmkr md`
   Then a file with a "md" extension and today's date should exist
   And the file with a "md" extension and today's date sould have content "ola"
