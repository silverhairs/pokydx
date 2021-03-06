import 'package:flutter/material.dart';

import './list_item_pokemon.dart';
import '../../data/pokemon.dart';

class PokeList extends StatelessWidget {
  PokeList({Key key, this.list, this.onTapPokemon, this.controller})
      : super(key: key);

  final List<Pokemon> list;
  final Function onTapPokemon;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Container(child: listView());
  }

  Widget listView() {
    return (ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        Pokemon pokemon = list.elementAt(index);
        return ListItemPokemon(
          pokemon: pokemon,
          id: pokemon.id,
          speciesId: pokemon.speciesId,
          name: pokemon.name,
          onTapPokemon: onTapPokemon,
        );
      },
      controller: controller,
    ));
  }

  Widget circularLoader() {
    return Center(
      child: CircularProgressIndicator(strokeWidth: 8),
    );
  }
}
