import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
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
    return Container(
      height: UIHelper.getAppTitleWidgetHeigth(),
      color: Colors.red,
      child: Stack(
        
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              )),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              _pokeballImageUrl,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
