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
 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeigth(),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Align(
                alignment: Alignment.centerLeft, //Yazı ortalması için
                child: Text(
                  Constants.title,
                  style: Constants.getTitleTextStyle(),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Constants.pokeballImageUrl,
              width: UIHelper.getAppIconWidthAndHeigth(),
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
