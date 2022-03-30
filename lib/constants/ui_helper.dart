import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._(); //Gizli ve kimse bir nesne oluşturmasın

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    // ignore: prefer_const_constructors
    'Normal': Color.fromARGB(255, 90, 87, 87),
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }

  static double getAppTitleWidgetHeigth() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.18.sw;
    /*Eğer portait(dikey) modda ise ekran yüksekliğinin %15 yap, 
    değils yatay modda ise ekran genişliğinin %15'ni yap*/
  }

  static double getAppIconWidthAndHeigth() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.20.sh : 0.23.sw;
    /*Dikey modda ise yüksekliğin %20'si,
    yatay modda ise genişliğin %20'si olacak şeklide ayarla.*/
  }

  static int getPokeItemCount() {
    return ScreenUtil().orientation == Orientation.portrait
        ? 2
        : 3; //Ekranda kaç tane kart gözükeceğini belirliyoruz
  }

  static EdgeInsets getDefaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12
          .h); //Eğer dikey modda ise ekran yükskeliği üzerinden %12 olarak ayarla.
    } else {
      return EdgeInsets.all(8
          .w); //Eğer yatay modda ise ekran genişliği üzerinden %8 olarak ayarla.
    }
  }

  static double calculatePokeImgAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
    } else {
      return 0.3.sh;
    }
  }
}
