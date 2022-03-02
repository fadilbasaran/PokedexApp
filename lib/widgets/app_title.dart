import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  final String _pokeballImageUrl = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(alignment: Alignment.topLeft,child:  Text('Pokedex')),
        Align(alignment: Alignment.topRight,
          child: Image.asset(
            _pokeballImageUrl,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
