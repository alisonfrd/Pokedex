import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex_clean_arch/pokemons/domain/entities/pokemon.dart';
import 'package:pokedex_clean_arch/pokemons/domain/erros/errors.dart';
import 'package:pokedex_clean_arch/pokemons/domain/repositories/search_repository.dart';
import 'package:pokedex_clean_arch/pokemons/domain/usecase/search_all_pokemonsd.dart';

class SearchRepositoryMock extends Mock implements SearchRepository {}

void main() {
  final repository = SearchRepositoryMock();
  final useCase = SearchAllPokemonsImpl(repository);

  test('deve retornar um List<Pokemon>', () async {
    when(repository.getPokemons())
        .thenAnswer((realInvocation) async => <Pokemon>[Pokemon()]);

    var response = await useCase.call();

    expect(response, isA<List<Pokemon>>());
  });

  test('deve retornar um EmptyList', () async {
    when(repository.getPokemons())
        .thenAnswer((realInvocation) async => <Pokemon>[]);

    var response = await useCase.call();

    expect(response, isA());
  });
}
