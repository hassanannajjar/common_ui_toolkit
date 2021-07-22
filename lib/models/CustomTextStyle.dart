import 'package:common_ui_toolkit/index.dart';

class CommonTextStyle {
  //sizes
  double? width;
  double? height;

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

  TextDecoration? textDecoration;
  FontWeight? fontweight;
  TextAlign textAlign;

  int? fontColor;
  int? underLineColor;
  double? fontSize;
  double? underlineThikness;
  String? fontFamily;
  bool? customUnderlined;

  CommonTextStyle({
    //sizes
    this.width = 0.0,
    this.height = 0.0,

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

  getMarginEdgeInsets() => EdgeInsets.fromLTRB(
        (margin ?? marginHorizontal ?? marginLeft)!,
        (margin ?? marginVertical ?? marginTop)!,
        (margin ?? marginHorizontal ?? marginRight)!,
        (margin ?? marginVertical ?? marginBottom)!,
      );

  getPaddingEdgeInsets() => EdgeInsets.fromLTRB(
        padding ?? paddingHorizontal ?? paddingLeft!,
        padding ?? paddingVertical ?? paddingTop!,
        padding ?? paddingHorizontal ?? paddingRight!,
        padding ?? paddingVertical ?? paddingBottom!,
      );

  CommonTextStyle copyWith({
    double? width,
    double? height,
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
    TextDecoration? textDecoration,
    FontWeight? fontweight,
    TextAlign? textAlign,
    int? fontColor,
    int? underLineColor,
    double? fontSize,
    double? underlineThikness,
    String? fontFamily,
    bool? customUnderlined,
  }) {
    return CommonTextStyle(
      width: width ?? this.width,
      height: height ?? this.height,
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
      textDecoration: textDecoration ?? this.textDecoration,
      fontweight: fontweight ?? this.fontweight,
      textAlign: textAlign ?? this.textAlign,
      fontColor: fontColor ?? this.fontColor,
      underLineColor: underLineColor ?? this.underLineColor,
      fontSize: fontSize ?? this.fontSize,
      underlineThikness: underlineThikness ?? this.underlineThikness,
      fontFamily: fontFamily ?? this.fontFamily,
      customUnderlined: customUnderlined ?? this.customUnderlined,
    );
  }
}
