import 'package:flutter/material.dart';
import 'package:flutter_pokedex/widgets/app_title.dart';
import 'package:flutter_pokedex/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  //Uygulama ilk açıldığında çalışılacak dosya
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}
