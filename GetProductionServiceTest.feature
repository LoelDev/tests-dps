Feature: ProductionServiceTest

  As a developer
  I want to get a list of the productions through an API
  So that I dont have to manually search for them in the database.

  Background:

    Given the endpoint http://localhost:3000/productions/{id} is available
  @Production_Retrieving
  Scenario: Retrieve Productions

    When a GET Request is sent with body

      |   user_id   |     title    |   date_of_registry   |   video_url   |
      |     1       |    ExProd    |     23-11-2021       |    Ex. URL    |

    Then a Response with Status 200 is recieved
    And a list of Production Resources is included in the response body
      |    id    |   user_id   |     title    |   date_of_registry   |   video_url   |
      |    1     |     1       |    ExProd    |     23-11-2021       |    Ex. URL    |