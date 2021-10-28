import 'package:pokedex_clean_arch/pokemons/domain/entities/pokemon_model.dart';

abstract class SearchRepository{
  Future<List<Pokemon>> getPokemons();
}