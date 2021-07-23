import 'dart:ui';

import 'package:common_ui_toolkit/index.dart';

class CommonTextStyle {
  //sizes
  double? height;
  double? letterSpacing;
  double? wordSpacing;
  double? decorationThickness;
  double? iconWidth;
  double? iconHeight;
  double? fontSize;
  double textScaleFactor;
  int? maxlines;

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
  double? iconMargin;
  double? iconMarginTop;
  double? iconMarginBottom;
  double? iconMarginRight;
  double? iconMarginLeft;
  double? iconMarginVertical;
  double? iconMarginHorizontal;

  // colors
  int? fontColor;
  int? backgroundColor;
  int? decorationColor;
  int? iconColor;

  TextDecoration? textDecoration;
  TextDirection? textDirection;
  TextOverflow overflow;
  bool softWrap;
  StrutStyle? strutStyle;
  TextHeightBehavior? textHeightBehavior;
  TextWidthBasis textWidthBasis;
  Decoration? decoration;
  TextDecorationStyle? decorationStyle;
  FontWeight? fontweight;
  TextAlign textAlign;
  FontStyle? fontStyle;
  TextBaseline? textBaseline;
  TextLeadingDistribution? leadingDistribution;
  Locale? locale;
  Paint? foreground;
  Paint? background;
  List<Shadow>? shadows;
  List<FontFeature>? fontFeatures;
  List<String>? fontFamilyFallback;
  String? fontFamily;
  String? debugLabel;

  CommonTextStyle({
    //sizes
    this.height,
    this.letterSpacing = 0.0,
    this.wordSpacing = 0.0,
    this.iconWidth = 20.0,
    this.iconHeight = 20.0,
    this.fontSize = H4_FONT,
    this.decorationThickness,
    this.maxlines,
    this.textScaleFactor = 1.0,

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
    this.iconMargin,
    this.iconMarginTop = 0.0,
    this.iconMarginBottom = 0.0,
    this.iconMarginRight = 0.0,
    this.iconMarginLeft = 0.0,
    this.iconMarginVertical,
    this.iconMarginHorizontal = 10.0,

    // colors
    this.fontColor = BLACK_COLOR,
    this.backgroundColor = TRANSPARENT_COLOR,
    this.decorationColor = BLACK_COLOR,
    this.textDecoration = TextDecoration.none,
    this.textDirection,
    this.overflow = TextOverflow.clip,
    this.softWrap = true,
    this.strutStyle,
    this.textHeightBehavior,
    this.textWidthBasis = TextWidthBasis.parent,
    this.iconColor = BLACK_COLOR,

    // -------------------
    this.decoration,
    this.fontweight = FontWeight.normal,
    this.fontFamily,
    this.fontStyle = FontStyle.normal,
    this.textAlign = TextAlign.center,
    this.textBaseline,
    this.leadingDistribution,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.fontFeatures,
    this.decorationStyle,
    this.debugLabel,
    this.fontFamilyFallback,
  });
}
