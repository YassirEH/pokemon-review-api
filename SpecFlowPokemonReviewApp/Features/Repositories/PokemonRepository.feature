Feature: PokemonRepository
    As a developer
    I want to ensure that the PokemonRepository works correctly
    So that I can manage Pokemon data effectively

Scenario: Get all Pokemon
    Given I have several Pokemon in the database
    When I call the GetPokemons method
    Then I should receive a list of all Pokemon


Scenario: Create a new Pokemon
    Given I have a new Pokemon with ownerId '1', categoryId '1', and name 'Pikachu'
    When I call the CreatePokemon method
    Then the new Pokemon should be added to the database

Scenario: Delete a Pokemon
    Given I have a Pokemon with id '1'
    When I call the DeletePokemon method
    Then the Pokemon should be removed from the database

Scenario: Update a Pokemon
    Given I have a Pokemon with id '1', ownerId '1', categoryId '1', and name 'Charizard'
    When I call the UpdatePokemon method
    Then the Pokemon's details should be updated in the database

Scenario: Get a Pokemon by id
    Given I have a Pokemon with id '1'
    When I call the GetPokemon method with id '1'
    Then I should receive the Pokemon with id '1'

Scenario: Get a Pokemon by name
    Given I have a Pokemon with name 'Pikachu'
    When I call the GetPokemon method with name 'Pikachu'
    Then I should receive the Pokemon with name 'Pikachu'

Scenario: Check if a Pokemon exists
    Given I have a Pokemon with id '1'
    When I call the PokemonExists method with id '1'
    Then the method should return 'true'
