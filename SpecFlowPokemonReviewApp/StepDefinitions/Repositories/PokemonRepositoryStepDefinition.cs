using TechTalk.SpecFlow;
using PokemonReviewApp.Repository;
using PokemonReviewApp.Data;
using PokemonReviewApp.Models;
using FluentAssertions;

namespace SpecFlowPokemonReviewApp.StepDefinitions.Repositories
{
    [Binding]
    public class PokemonRepositoryStepDefinition
    {
        private readonly PokemonRepository _pokemonRepository;
        private Pokemon _result;

        public PokemonRepositoryStepDefinition(DataContext context)
        {
            _pokemonRepository = new PokemonRepository(context);
        }

        [Given(@"I have a Pokemon with ID '(.*)' in the database")]
        public void GivenIHaveAPokemonWithIDInTheDatabase(int id)
        {
            // No action needed here as we're assuming the Pokemon already exists in the database
        }

        [When(@"I call GetPokemon with ID '(.*)'")]
        public void WhenICallGetPokemonWithID(int id)
        {
            _result = _pokemonRepository.GetPokemon(id);
        }

        [Then(@"the result should be a Pokemon with ID '(.*)'")]
        public void ThenTheResultShouldBeAPokemonWithID(int id)
        {
            _result.Should().NotBeNull();
            _result.Id.Should().Be(id);
        }
    }
}