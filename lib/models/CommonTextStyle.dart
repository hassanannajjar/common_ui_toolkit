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
  String? debugLabel;
  List<String>? fontFamilyFallback;

  String? fontFamily;

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

  CommonTextStyle copyWith({
    double? height,
    double? letterSpacing,
    double? wordSpacing,
    double? decorationThickness,
    double? iconWidth,
    double? iconHeight,
    double? fontSize,
    int? maxlines,
    double? padding,
    double? paddingTop,
    double? paddingBottom,
    double? paddingRight,
    double? paddingLeft,
    double? paddingVertical,
    double? paddingHorizontal,
    double? margin,
    double? marginTop,
    double? marginBottom,
    double? marginRight,
    double? marginLeft,
    double? marginVertical,
    double? marginHorizontal,
    double? iconMargin,
    double? iconMarginTop,
    double? iconMarginBottom,
    double? iconMarginRight,
    double? iconMarginLeft,
    double? iconMarginVertical,
    double? iconMarginHorizontal,
    int? fontColor,
    int? backgroundColor,
    int? decorationColor,
    int? iconColor,
    TextDecoration? textDecoration,
    Decoration? decoration,
    TextDecorationStyle? decorationStyle,
    FontWeight? fontweight,
    TextAlign? textAlign,
    FontStyle? fontStyle,
    TextBaseline? textBaseline,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    String? debugLabel,
    List<String>? fontFamilyFallback,
    String? fontFamily,
  }) {
    return CommonTextStyle(
      height: height ?? this.height,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      iconWidth: iconWidth ?? this.iconWidth,
      iconHeight: iconHeight ?? this.iconHeight,
      fontSize: fontSize ?? this.fontSize,
      maxlines: maxlines ?? this.maxlines,
      padding: padding ?? this.padding,
      paddingTop: paddingTop ?? this.paddingTop,
      paddingBottom: paddingBottom ?? this.paddingBottom,
      paddingRight: paddingRight ?? this.paddingRight,
      paddingLeft: paddingLeft ?? this.paddingLeft,
      paddingVertical: paddingVertical ?? this.paddingVertical,
      paddingHorizontal: paddingHorizontal ?? this.paddingHorizontal,
      margin: margin ?? this.margin,
      marginTop: marginTop ?? this.marginTop,
      marginBottom: marginBottom ?? this.marginBottom,
      marginRight: marginRight ?? this.marginRight,
      marginLeft: marginLeft ?? this.marginLeft,
      marginVertical: marginVertical ?? this.marginVertical,
      marginHorizontal: marginHorizontal ?? this.marginHorizontal,
      iconMargin: iconMargin ?? this.iconMargin,
      iconMarginTop: iconMarginTop ?? this.iconMarginTop,
      iconMarginBottom: iconMarginBottom ?? this.iconMarginBottom,
      iconMarginRight: iconMarginRight ?? this.iconMarginRight,
      iconMarginLeft: iconMarginLeft ?? this.iconMarginLeft,
      iconMarginVertical: iconMarginVertical ?? this.iconMarginVertical,
      iconMarginHorizontal: iconMarginHorizontal ?? this.iconMarginHorizontal,
      fontColor: fontColor ?? this.fontColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      decorationColor: decorationColor ?? this.decorationColor,
      iconColor: iconColor ?? this.iconColor,
      textDecoration: textDecoration ?? this.textDecoration,
      decoration: decoration ?? this.decoration,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      fontweight: fontweight ?? this.fontweight,
      textAlign: textAlign ?? this.textAlign,
      fontStyle: fontStyle ?? this.fontStyle,
      textBaseline: textBaseline ?? this.textBaseline,
      leadingDistribution: leadingDistribution ?? this.leadingDistribution,
      locale: locale ?? this.locale,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      shadows: shadows ?? this.shadows,
      fontFeatures: fontFeatures ?? this.fontFeatures,
      debugLabel: debugLabel ?? this.debugLabel,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontFamily: fontFamily ?? this.fontFamily,
    );
  }
}
