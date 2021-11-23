Feature: MusicSampleServiceTest

  As a developer
  I want to get a list of the productions through an API
  So that I dont have to manually search for them in the database.

  Background:

    Given the endpoint http://localhost:3000/music-sample/{id} is available
  @MusicSample_Retrieving
  Scenario: Retrieve MusicSample

    When a GET Request is sent with body

      |   user_id   |  song_name  |     title    |   date_of_registry   |   music_url   |  description  |
      |     1       |   Ex Name   |    ExProd    |     23-11-2021       |    Ex. URL    |    Ex. Desc   |

    Then a Response with Status 200 is recieved
    And a list of MusicSample Resources is included in the response body
      |    id       |   user_id   |  song_name  |     title    |   date_of_registry   |   music_url   |  description  |
      |     1       |     1       |   Ex Name   |    ExProd    |     23-11-2021       |    Ex. URL    |    Ex. Desc   |