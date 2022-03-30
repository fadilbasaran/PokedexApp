import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.w),
          ),
          color: Colors.white),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInormationRow('Name', pokemon.name),
            _buildInormationRow('Height', pokemon.height),
            _buildInormationRow('Weight', pokemon.name),
            _buildInormationRow('Spawn Time', pokemon.spawnTime),
            _buildInormationRow('Weakness', pokemon.weaknesses),
            _buildInormationRow('Pre Evilation', pokemon.prevEvolution),
            _buildInormationRow('Next Evilaton', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInormationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokeInfoLabelTextStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
            style: Constants.getPokeInfoTextStyle(),
          )
        else if (value == null)
          Text(
            'Not available',
            style: Constants.getPokeInfoTextStyle(),
          )
        else
          Text(
            value,
            style: Constants.getPokeInfoTextStyle(),
          )
      ],
    );
  }
}
