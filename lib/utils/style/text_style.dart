import 'package:base_flutter_framework/utils/color.dart';
import 'package:base_flutter_framework/utils/dimens.dart';
import 'package:base_flutter_framework/utils/hex_color.dart';
import 'package:flutter/material.dart';

class TextAppStyle {
  TextStyle titleToolBar() {
    return TextStyle(color: Colors.black, fontSize: DimensCommon.fontMediumBig);
  }

  TextStyle textGreyBoldStyle() {
    return TextStyle(
        color: ColorCommon.colorTextGrey,
        fontWeight: FontWeight.w900,
        fontSize: DimensCommon.fontSizeMedium);
  }

  TextStyle textGreyStyle() {
    return TextStyle(
        fontWeight: FontWeight.w700,
        color: ColorCommon.colorTextGrey,
        fontSize: DimensCommon.fontSizeMedium);
  }

  TextStyle textWiteStyle() {
    return TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: DimensCommon.fontSizeSmallBig);
  }

  TextStyle textWiteSmallStyle() {
    return TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: DimensCommon.fontSizeBig);
  }
}
