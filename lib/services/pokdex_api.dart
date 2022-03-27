import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeApi {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> _list = [];

    var result = await Dio().get(_url); //Dio ile verileri getirecek
    var pokeList = jsonDecode(result.data)[
        'pokemon']; //Bana bir map verdi ama benim pokemon verileri pkem içinde bir yapıda oluduğ için ordan alınıyor
    

    if (pokeList is List) {//Eğer bir liste ise
      _list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();//Gelen veriler Pokemon verilerine dönüştürülüyor
      //ve elimizde bir Pokemon verileri olan bir liste bulunuyor
    }
    //debugPrint(_list.first.toString());//Listemize verilerin gelip gelmediğini kontrol ediyoruz.

    else {//Eğer PokeList bir liste değilse bize bir boş liste döndürsün
      return [];
    }

    return _list;
  }
}
