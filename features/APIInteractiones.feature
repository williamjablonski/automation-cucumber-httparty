Feature: As an external service, I want use a API

  @API-create-comment
  Scenario Outline: Comment Create Interaction
    Given I send a first param as "<name>", a second param as "<email>" and a third as "<body>"
    Then the response status should be "<status_code>"

    Examples:

      | name                            |  email             | body         |status_code|
      | Força Nacional vai atuar no Rio de Janeiro |  astato@santander.com.br | Soldados do Exército Brasileiro observam mulher enquanto fazem patrulha na praia de Copacabana|201|

  @API-delete-comment
  Scenario Outline: Comment Delete Interaction
    Given I delete the comment
    Then the response status should be "<status_code>"

    Examples:
      |status_code|
      |200        |