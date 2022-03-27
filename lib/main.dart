import 'package:flutter/material.dart';
import 'package:flutter_pokedex/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412,
          732), //Emilatörü çözünütlüğüne göre ayarlanıyor. Yeni veya farklı bir emiltörde bu oranlar da olacak
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false, //debug görüntüsü gitsin
        title: 'Pokedex',
        theme:
            ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        home: const HomePage(),
      ),
    );
  }
}
