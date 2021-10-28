import 'package:flutter/material.dart';
import 'package:pokedex_clean_arch/pokemons/domain/entities/pokemon.dart';
import 'package:pokedex_clean_arch/pokemons/domain/erros/errors.dart';
import 'package:pokedex_clean_arch/pokemons/domain/repositories/search_repository.dart';

abstract class SearchAllPokemons {
  Future<List<Pokemon>> call();
}

class SearchAllPokemonsImpl implements SearchAllPokemons {
  final SearchRepository repository;

  SearchAllPokemonsImpl(this.repository);

  @override
  Future<List<Pokemon>> call() async {
    var response = await repository.getPokemons();
    return response;
  }
}
