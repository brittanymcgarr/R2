Feature: R2
  In order to capture current aws environment
  As a CLI
  I want to create an object with local aws data

  Scenario: Local AWS env is default
    When I run `R2 configure_aws`
    Then the output should contain "us-west-1"
