import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/services/pokdex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {

late Future<List<PokemonModel>> _pokemonList;//late kullanımız yani ben bunu inişilayz edecem anlamında
  @override
  void initState() {
    super.initState();
    _pokemonList = PokeApi.getPokemonData();//Sayfa açıldığında sadece bir defa veriler getirilmesi için oluşturdu
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
        future: _pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {//Bana verlilen snaoshotta data var mı diye kontol ediyoruz
            List<PokemonModel> _listem = snapshot.data!;
            
            return ListView.builder( itemCount: _listem.length, itemBuilder: (context,index){
              var oAnKiPokemon=_listem[index];//Verdğimiz değikenden de anlaşılacağı gibi o an ki pokemun verilerini bir listeye ekliyoruz.
              return ListTile(title: Text(oAnKiPokemon.name.toString()),);
            },
            
            );
          } else if (snapshot.hasError) {//Hata kontrolü sağlıyoruz
            return const Center(
              child: Text('Hata Çıktı'),
            );
          } else {
            return const Center(child: CircleAvatar());//Veriler yüklenene kadar bir yükleme gif ekliyoruz
          }
        },
      );
  }
}