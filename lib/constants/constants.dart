import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); //Kurucu metotunu gizli yapıldı ki kimse nesne türetmesin
  static const String title =
      'Pokedex'; //Biz bunları static tanımladığmız için nesne üretmeden kullanabliyoruz.
  static const String pokeballImageUrl = 'images/pokeball.png';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(48));
  }

  static TextStyle getPokeItemNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(21));
  }

  static TextStyle getPokeDetailNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(24));
  }

  static TextStyle getChipNameTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateFontSize(20));
  }

  static TextStyle getPokeInfoTextStyle() {
    return TextStyle(color: Colors.black, fontSize: _calculateFontSize(16));
  }

  static TextStyle getPokeInfoLabelTextStyle() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(20));
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size
          .sp; //Dikey modda telefonun varsayılan fontSize'na göre ayarlanacak.
    } else {
      return (size
          .sp); /*Yatay modda geçildiğinde 1.5 kat ve  
      telefon ayarlarındaki fonsize büyüklüğüne göre yapılıyor*/
    }
  }
}
