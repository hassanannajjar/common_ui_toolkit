import 'package:flutter/widgets.dart';

import '../utils/index.dart';

class Styles {
  //sizes
  double width;
  double height;
  double fontSize;
  double lineSpace;
  double underlineThikness;
  bool fullWidth;

  // padding
  double padding;
  double paddingTop;
  double paddingBottom;
  double paddingRight;
  double paddingLeft;
  double paddingVertical;
  double paddingHorizontal;
  double iconPaddingLeft;
  double iconPaddingRight;

  // margin
  double margin;
  double marginTop;
  double marginBottom;
  double marginRight;
  double marginLeft;
  double marginVertical;
  double marginHorizontal;

  // shadow
  double shadowSpreadRadius;
  double shadowbBlurRadius;
  double shadowOffsetDX;
  double shadowOffsetDY;
  double shadowOpacity;
  // raduis
  double bottomLeftRadius;
  double bottomRightRadius;
  double topLeftRadius;
  double topRightRadius;
  double borderRaduis;
  int raduisColor;
  // colors
  int shadowColor;
  int backgroundColor;
  int fontColor;
  int svgColor;
  int titleFontColor;
  int edgeTextColor;

  // effects
  bool withEffect;
  int underLineColor;
  bool showArrow;

  //font
  FontWeight fontweight;
  TextDecoration textDecoration;
  TextAlign textAlign;
  String fontFamily;
  bool customUnderlined;
  double titleFontSize;

  getMarginEdgeInsets() => EdgeInsets.fromLTRB(
        margin ?? marginHorizontal ?? marginLeft,
        margin ?? marginVertical ?? marginTop,
        margin ?? marginHorizontal ?? marginRight,
        margin ?? marginVertical ?? marginBottom,
      );

  getPaddingEdgeInsets() => EdgeInsets.fromLTRB(
        padding ?? paddingHorizontal ?? paddingLeft,
        padding ?? paddingVertical ?? paddingTop,
        padding ?? paddingHorizontal ?? paddingRight,
        padding ?? paddingVertical ?? paddingBottom,
      );

  getBorderRaduis() => borderRaduis == 0
      ? BorderRadius.only(
          topRight: Radius.circular(topRightRadius),
          topLeft: Radius.circular(topLeftRadius),
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
        )
      : BorderRadius.all(
          Radius.circular(borderRaduis),
        );

  getWidth() => width < 1.0 && width > 0.0
      ? DEVICE_WIDTH * width
      : width > 1
          ? width
          : null;

  getHeight() => height < 1.0 && height > 0.0
      ? DEVICE_HEIGHT * height
      : height > 0.0
          ? height
          : null;

  Styles({
    //sizes
    this.width = 0.0,
    this.height = 0.0,
    this.fontSize = 17.0,
    this.lineSpace = 0.0,
    this.underlineThikness = 0.0,
    this.fullWidth = false,

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
    this.iconPaddingLeft = 0.0,
    this.iconPaddingRight = 0.0,
    // colors
    this.backgroundColor = WHITE_COLOR,
    this.raduisColor = PRIMARY_COLOR,
    this.fontColor = BLACK_COLOR,
    this.underLineColor = BLACK_COLOR,
    this.svgColor = PRIMARY_COLOR,
    this.edgeTextColor = PRIMARY_COLOR,
    this.titleFontColor = GREY_COLOR,

    // shadow
    this.shadowSpreadRadius = 0.0,
    this.shadowbBlurRadius = 0.0,
    this.shadowOffsetDX = 0.0,
    this.shadowOffsetDY = 0.0,
    this.shadowColor = GREY_COLOR,
    this.shadowOpacity = 0.0,
    // raduis
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.borderRaduis = 0.0,
    // effects
    this.withEffect = false,
    this.showArrow = true,
    //typography
    this.fontweight = FontWeight.normal,
    this.textDecoration = TextDecoration.none,
    this.textAlign = TextAlign.start,
    this.customUnderlined = false,
    this.fontFamily,
    this.titleFontSize = H5_FONT,
  });

  Styles copyWith({
    double width,
    double height,
    double fontSize,
    double lineSpace,
    double underlineThikness,
    bool fullWidth,
    double padding,
    double paddingTop,
    double paddingBottom,
    double paddingRight,
    double paddingLeft,
    double paddingVertical,
    double paddingHorizontal,
    double iconPaddingLeft,
    double iconPaddingRight,
    double margin,
    double marginTop,
    double marginBottom,
    double marginRight,
    double marginLeft,
    double marginVertical,
    double marginHorizontal,
    double shadowSpreadRadius,
    double shadowbBlurRadius,
    double shadowOffsetDX,
    double shadowOffsetDY,
    double shadowOpacity,
    double bottomLeftRadius,
    double bottomRightRadius,
    double topLeftRadius,
    double topRightRadius,
    double borderRaduis,
    int raduisColor,
    int shadowColor,
    int backgroundColor,
    int fontColor,
    int svgColor,
    int titleFontColor,
    int edgeTextColor,
    bool withEffect,
    int underLineColor,
    bool showArrow,
    FontWeight fontweight,
    TextDecoration textDecoration,
    TextAlign textAlign,
    String fontFamily,
    bool customUnderlined,
    double titleFontSize,
  }) {
    return Styles(
      width: width ?? this.width,
      height: height ?? this.height,
      fontSize: fontSize ?? this.fontSize,
      lineSpace: lineSpace ?? this.lineSpace,
      underlineThikness: underlineThikness ?? this.underlineThikness,
      fullWidth: fullWidth ?? this.fullWidth,
      padding: padding ?? this.padding,
      paddingTop: paddingTop ?? this.paddingTop,
      paddingBottom: paddingBottom ?? this.paddingBottom,
      paddingRight: paddingRight ?? this.paddingRight,
      paddingLeft: paddingLeft ?? this.paddingLeft,
      paddingVertical: paddingVertical ?? this.paddingVertical,
      paddingHorizontal: paddingHorizontal ?? this.paddingHorizontal,
      iconPaddingLeft: iconPaddingLeft ?? this.iconPaddingLeft,
      iconPaddingRight: iconPaddingRight ?? this.iconPaddingRight,
      margin: margin ?? this.margin,
      marginTop: marginTop ?? this.marginTop,
      marginBottom: marginBottom ?? this.marginBottom,
      marginRight: marginRight ?? this.marginRight,
      marginLeft: marginLeft ?? this.marginLeft,
      marginVertical: marginVertical ?? this.marginVertical,
      marginHorizontal: marginHorizontal ?? this.marginHorizontal,
      shadowSpreadRadius: shadowSpreadRadius ?? this.shadowSpreadRadius,
      shadowbBlurRadius: shadowbBlurRadius ?? this.shadowbBlurRadius,
      shadowOffsetDX: shadowOffsetDX ?? this.shadowOffsetDX,
      shadowOffsetDY: shadowOffsetDY ?? this.shadowOffsetDY,
      shadowOpacity: shadowOpacity ?? this.shadowOpacity,
      bottomLeftRadius: bottomLeftRadius ?? this.bottomLeftRadius,
      bottomRightRadius: bottomRightRadius ?? this.bottomRightRadius,
      topLeftRadius: topLeftRadius ?? this.topLeftRadius,
      topRightRadius: topRightRadius ?? this.topRightRadius,
      borderRaduis: borderRaduis ?? this.borderRaduis,
      raduisColor: raduisColor ?? this.raduisColor,
      shadowColor: shadowColor ?? this.shadowColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontColor: fontColor ?? this.fontColor,
      svgColor: svgColor ?? this.svgColor,
      titleFontColor: titleFontColor ?? this.titleFontColor,
      edgeTextColor: edgeTextColor ?? this.edgeTextColor,
      withEffect: withEffect ?? this.withEffect,
      underLineColor: underLineColor ?? this.underLineColor,
      showArrow: showArrow ?? this.showArrow,
      fontweight: fontweight ?? this.fontweight,
      textDecoration: textDecoration ?? this.textDecoration,
      textAlign: textAlign ?? this.textAlign,
      fontFamily: fontFamily ?? this.fontFamily,
      customUnderlined: customUnderlined ?? this.customUnderlined,
      titleFontSize: titleFontSize ?? this.titleFontSize,
    );
  }
}
