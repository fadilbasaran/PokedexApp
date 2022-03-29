import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Constants.pokeballImageUrl,
          width: UIHelper.calculatePokeImgAndBallSize(),
          height: UIHelper.calculatePokeImgAndBallSize(),
        ),
        CachedNetworkImage(imageUrl: pokemon.img ?? '')
      ],
    );
  }
}
