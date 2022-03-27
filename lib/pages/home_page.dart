import 'package:flutter/material.dart';
import 'package:flutter_pokedex/widgets/app_title.dart';
import 'package:flutter_pokedex/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  //Uygulama ilk açıldığında çalışılacak dosya
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(

        builder: (context, orientation) =>Column(
          children:  [
            // ignore: prefer_const_constructors
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
