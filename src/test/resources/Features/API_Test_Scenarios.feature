#This feature file contains few test scenarios to verify Rest API services
Feature: To verify API automation with Rest Assured

@API_Test
Scenario: To verify Rest service - GET All countries
Given To initiate Rest service to get country details with code as "all"
Then Response status code should be "200"

@API_Test
Scenario: To verify Rest service - GET a country by name
Given To initiate Rest service to get country details with name as "/name/Japan"
Then Response status code should be "200"

@API_Test
Scenario: To verify Rest service - GET country details
Given To initiate Rest service to get country details with code as "alpha/IN"
Then Response status code should be "200"
And response should includes the following
| name  | capital   | region |
| India | New Delhi | Asia   |

@API_Test
Scenario: To verify Rest service - GET a country by name
Given To initiate Rest service to get country details with name as "/name/ABCXYYZ"
Then Error status should be "404"
