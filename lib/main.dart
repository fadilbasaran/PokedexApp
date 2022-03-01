import 'package:flutter/material.dart';
import 'package:flutter_pokedex/pages/home_page.dart';
import 'package:flutter_pokedex/services/pokdex_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PokeApi.getPokemonData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomePage(),
    );
  }
}
