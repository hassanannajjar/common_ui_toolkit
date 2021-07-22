import 'dart:ui';

import 'package:common_ui_toolkit/index.dart';

class CommonTextStyle {
  //sizes
  double? height;
  double? letterSpacing;
  double? wordSpacing;
  double? decorationThickness;

  // padding
  double? padding;
  double? paddingTop;
  double? paddingBottom;
  double? paddingRight;
  double? paddingLeft;
  double? paddingVertical;
  double? paddingHorizontal;

  // margin
  double? margin;
  double? marginTop;
  double? marginBottom;
  double? marginRight;
  double? marginLeft;
  double? marginVertical;
  double? marginHorizontal;

  // colors
  int? fontColor;
  int? underLineColor;
  int? backgroundColor;
  int? decorationColor;

  TextDecoration? textDecoration;
  TextDecorationStyle? decorationStyle;
  FontWeight? fontweight;
  TextAlign textAlign;
  FontStyle? fontStyle;

  // --------------------------
  TextBaseline? textBaseline;
  TextLeadingDistribution? leadingDistribution;
  Locale? locale;
  Paint? foreground;
  Paint? background;
  List<Shadow>? shadows;
  List<FontFeature>? fontFeatures;
  String? debugLabel;
  List<String>? fontFamilyFallback;

  double? fontSize;
  double? underlineThikness;
  String? fontFamily;
  bool? customUnderlined;

  CommonTextStyle({
    //sizes
    this.height,
    this.letterSpacing = 0.0,
    this.wordSpacing = 0.0,

    // padding
    this.padding,
    this.paddingTop = 0.0,
    this.paddingBottom = 0.0,
    this.paddingRight = 0.0,
    this.paddingLeft = 0.0,
    this.paddingVertical,
    this.paddingHorizontal,

    // margin
    this.margin,
    this.marginTop = 0.0,
    this.marginBottom = 0.0,
    this.marginRight = 0.0,
    this.marginLeft = 0.0,
    this.marginVertical,
    this.marginHorizontal,

    // colors
    this.fontColor = BLACK_COLOR,
    this.underLineColor = PRIMARY_COLOR,
    this.backgroundColor = TRANSPARENT_COLOR,
    this.decorationColor = PRIMARY_COLOR,
    this.textDecoration,
    this.fontweight,
    this.fontSize = H4_FONT,
    this.fontFamily,
    this.fontStyle,
    this.customUnderlined = false,
    this.underlineThikness = 1,
    this.textAlign = TextAlign.center,
    this.textBaseline,
    this.leadingDistribution,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.fontFeatures,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamilyFallback,
  });
}
