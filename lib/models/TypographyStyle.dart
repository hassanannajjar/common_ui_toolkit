import 'package:common_ui_toolkit/index.dart';

class TypographyStyle extends Styles {
  TextDecoration? textDecoration;
  FontWeight? fontweight;
  TextAlign textAlign;

  int? fontColor, underLineColor;
  double? fontSize, underlineThikness;
  String? fontFamily;
  bool? customUnderlined;

  TypographyStyle({
    this.textDecoration,
    this.fontColor,
    this.fontweight,
    this.fontSize,
    this.fontFamily,
    this.customUnderlined = false,
    this.underLineColor,
    this.underlineThikness,
    this.textAlign = TextAlign.center,
  });
}
