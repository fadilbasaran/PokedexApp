import 'package:flutter/material.dart';

class Constants {
  Constants._(); //Kurucu metotunu gizli yapıldı ki kimse nesne türetmesin
  static const String title =
      'Pokedex'; //Biz bunları static tanımladığmız için nesne üretmeden kullanabliyoruz.

  static TextStyle getTitleTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);
  }

  static TextStyle getPokeItemNameTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30);
  }

  static TextStyle getChipNameTextStyle() {
    return const TextStyle(color: Colors.white, fontSize: 20);
  }
}
