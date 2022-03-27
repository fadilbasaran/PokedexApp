import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Column(
        //N/A=>>Not Available Değer mevcut değil
        children: [
          Text(
            pokemon.name ?? 'N/A',
            style: Constants.getPokeItemNameTextStyle(),
          ),
          Chip(
            label: Text(
              pokemon.type![0],
              style: Constants.getChipNameTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
