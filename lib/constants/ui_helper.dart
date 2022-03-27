import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._(); //Gizli ve kimse bir nesne oluşturmasın
  static double getAppTitleWidgetHeigth() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
    /*Eğer portait(dikey) modda ise ekran yüksekliğinin %15 yap, 
    değils yatay modda ise ekran genişliğinin %15'ni yap*/
  }

  static EdgeInsets getDeafultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);//Eğer dikey modda ise ekran yükskeliği üzerinden %12 olarak ayarla.
    } else {
      return EdgeInsets.all(8.w);//Eğer yatay modda ise ekran genişliği üzerinden %8 olarak ayarla.
    }
  }
}
