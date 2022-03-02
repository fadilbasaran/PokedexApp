
import 'package:flutter/material.dart';

class Constants {
  Constants._(); //Kurucu metotunu gizli yapıldı ki kimse nesne türetmesin
  static const String title = 'Pokedex';

  static  TextStyle getTitleTextStyle(){
    return const TextStyle(
      color:Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48
    );

  }
}
