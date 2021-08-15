import 'package:flutter/widgets.dart';

import 'package:common_ui_toolkit/components/common_touchable/TouchableEffect.dart';

import '../utils/index.dart';

class CommonContainerModel {
  //sizes
  double? width;
  double? height;
  double? minWidth;
  double? minHieght;
  double? maxWidth;
  double? maxHieght;

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

  // shadow
  double? shadowSpreadRadius;
  double? shadowbBlurRadius;
  double? shadowOffsetDX;
  double? shadowOffsetDY;
  double? shadowOpacity;

  double? foregroundshadowSpreadRadius;
  double? foregroundshadowbBlurRadius;
  double? foregroundshadowOffsetDX;
  double? foregroundshadowOffsetDY;
  double? foregroundshadowOpacity;

  // raduis
  double? bottomLeftRadius;
  double? bottomRightRadius;
  double? topLeftRadius;
  double? topRightRadius;
  double? borderRaduis;
  double? borderWidth;
  double? borderTopWidth;
  double? borderBottomWidth;
  double? borderRightWidth;
  double? borderLeftWidth;

  double? foregroundbottomLeftRadius;
  double? foregroundbottomRightRadius;
  double? foregroundtopLeftRadius;
  double? foregroundtopRightRadius;
  double? foregroundborderRaduis;
  double? foregroundborderWidth;
  double? foregroundborderTopWidth;
  double? foregroundborderBottomWidth;
  double? foregroundborderRightWidth;
  double? foregroundborderLeftWidth;

  // colors
  int? raduisColor;
  int? shadowColor;
  int? backgroundColor;
  int? borderColor;
  int? borderTopColor;
  int? borderBottomColor;
  int? borderRightColor;
  int? borderLeftColor;
  int? loadingColor;

  int? foregroundraduisColor;
  int? foregroundshadowColor;
  int? foregroundColor;
  int? foregroundborderColor;
  int? foregroundborderTopColor;
  int? foregroundborderBottomColor;
  int? foregroundborderRightColor;
  int? foregroundborderLeftColor;

  Alignment? alignment;
  Alignment? transformAlignment;

  Clip? clipBehavior;

  Matrix4? transform;

  BorderStyle? borderStyle;
  BorderStyle? borderTopStyle;
  BorderStyle? borderBottomStyle;
  BorderStyle? borderRightStyle;
  BorderStyle? borderLeftStyle;

  BorderStyle? foregroundborderStyle;
  BorderStyle? foregroundborderTopStyle;
  BorderStyle? foregroundborderBottomStyle;
  BorderStyle? foregroundborderRightStyle;
  BorderStyle? foregroundborderLeftStyle;

  Decoration? foregroundDecoration;
  Decoration? decoration;

  BoxShape? boxShape;
  BoxShape? foregroundboxShape;

  TouchableEffect? touchEffect;

  BlendMode? backgroundBlendMode;
  BlendMode? foregroundBlendMode;

  LinearGradient? boxGradient;
  LinearGradient? foregroundboxGradient;

  DecorationImage? backgroundImage;
  DecorationImage? foregroundImage;

  /// check if the border is null or not.
  checkBorderNull() =>
      borderTopWidth != null ||
      borderBottomWidth != null ||
      borderRightWidth != null ||
      borderLeftWidth != null;

  /// check if the foregroundborder is null or not.
  checkforegroundBorderNull() =>
      foregroundborderTopWidth != null ||
      foregroundborderBottomWidth != null ||
      foregroundborderRightWidth != null ||
      foregroundborderLeftWidth != null;

  /// get border Raduis.
  getBorderRaduis() => (boxShape == BoxShape.circle || checkBorderNull())
      ? null
      : (borderRaduis == 0

          /// return every single raduis.
          ? BorderRadius.only(
              topRight: Radius.circular(topRightRadius!),
              topLeft: Radius.circular(topLeftRadius!),
              bottomLeft: Radius.circular(bottomLeftRadius!),
              bottomRight: Radius.circular(bottomRightRadius!),
            )

          /// return all raduis.
          : BorderRadius.all(
              Radius.circular(borderRaduis!),
            ));

  /// get border Raduis.
  getForegroundBorderRaduis() =>
      (foregroundboxShape == BoxShape.circle || checkforegroundBorderNull())
          ? null
          : (foregroundborderRaduis == 0

              /// return every single raduis.
              ? BorderRadius.only(
                  topRight: Radius.circular(foregroundtopRightRadius!),
                  topLeft: Radius.circular(foregroundtopLeftRadius!),
                  bottomLeft: Radius.circular(foregroundbottomLeftRadius!),
                  bottomRight: Radius.circular(foregroundbottomRightRadius!),
                )

              /// return all raduis.
              : BorderRadius.all(
                  Radius.circular(foregroundborderRaduis!),
                ));

  /// get border width and color.
  getBorder() => (borderWidth! > 0 || checkBorderNull())
      ? Border(
          /// handel top border.
          top: BorderSide(
            color: Color(borderTopColor ?? borderColor!),
            width: borderTopWidth ?? borderWidth!,
            style: borderTopStyle ?? borderStyle!,
          ),

          /// handel right border.
          right: BorderSide(
            color: Color(borderRightColor ?? borderColor!),
            width: borderRightWidth ?? borderWidth!,
            style: borderRightStyle ?? borderStyle!,
          ),

          /// handel bottom border.
          bottom: BorderSide(
            color: Color(borderBottomColor ?? borderColor!),
            width: borderBottomWidth ?? borderWidth!,
            style: borderBottomStyle ?? borderStyle!,
          ),

          /// handel left border.
          left: BorderSide(
            color: Color(borderLeftColor ?? borderColor!),
            width: borderLeftWidth ?? borderWidth!,
            style: borderLeftStyle ?? borderStyle!,
          ),
        )

      /// or return null.
      : null;

  /// get border width and color.
  getforegroundBorder() => (foregroundborderWidth! > 0 ||
          checkforegroundBorderNull())
      ? Border(
          /// handel top border.
          top: BorderSide(
            color: Color(foregroundborderTopColor ?? foregroundborderColor!),
            width: foregroundborderTopWidth ?? foregroundborderWidth!,
            style: foregroundborderTopStyle ?? foregroundborderStyle!,
          ),

          /// handel right border.
          right: BorderSide(
            color: Color(foregroundborderRightColor ?? foregroundborderColor!),
            width: foregroundborderRightWidth ?? foregroundborderWidth!,
            style: foregroundborderRightStyle ?? foregroundborderStyle!,
          ),

          /// handel bottom border.
          bottom: BorderSide(
            color: Color(foregroundborderBottomColor ?? foregroundborderColor!),
            width: foregroundborderBottomWidth ?? foregroundborderWidth!,
            style: foregroundborderBottomStyle ?? foregroundborderStyle!,
          ),

          /// handel left border.
          left: BorderSide(
            color: Color(foregroundborderLeftColor ?? foregroundborderColor!),
            width: foregroundborderLeftWidth ?? foregroundborderWidth!,
            style: foregroundborderLeftStyle ?? foregroundborderStyle!,
          ),
        )

      /// or return null.
      : null;

  /// handel container width.
  /// and return the container width
  ///  like responsive design if the value smaller than 1.
  getWidth() => width! < 1.0 && width! > 0.0
      ? DEVICE_WIDTH * width!
      : width! > 1
          ? width!

          /// the defaul value for witdh is null
          ///  and this mean expanded as contet.
          : null;

  /// handel container hight.
  /// and return the container hight
  ///  like responsive design if the value smaller than 1.
  getHeight() => height! < 1.0 && height! > 0.0
      ? DEVICE_HEIGHT * height!
      : height! > 0.0
          ? height!

          /// the defaul value for hight is null
          ///  and this mean expanded as contet.
          : null;

  CommonContainerModel({
    //sizes
    this.width = 0.0,
    this.height = 0.0,
    this.minWidth = 0.0,
    this.minHieght = 0.0,
    this.maxWidth = double.infinity,
    this.maxHieght = double.infinity,

    // alignnment
    this.alignment,

    // padding
    this.padding = 0.0,
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.paddingLeft,
    this.paddingVertical,
    this.paddingHorizontal,

    // margin
    this.margin = 0.0,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,
    this.marginHorizontal,

    // colors
    this.backgroundColor = TRANSPARENT_COLOR,
    this.foregroundColor = TRANSPARENT_COLOR,
    this.raduisColor = 0xFF000000,
    this.foregroundraduisColor = 0xFF000000,
    this.loadingColor = 0xFF1DD005,

    // shadow
    this.shadowSpreadRadius = 0.0,
    this.shadowbBlurRadius = 0.0,
    this.shadowOffsetDX = 0.0,
    this.shadowOffsetDY = 0.0,
    this.shadowColor = 0xFF000000,
    this.shadowOpacity = 0.0,
    this.foregroundshadowSpreadRadius = 0.0,
    this.foregroundshadowbBlurRadius = 0.0,
    this.foregroundshadowOffsetDX = 0.0,
    this.foregroundshadowOffsetDY = 0.0,
    this.foregroundshadowColor = 0xFF000000,
    this.foregroundshadowOpacity = 0.0,

    // raduis
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.borderRaduis = 0.0,
    this.foregroundbottomLeftRadius = 0.0,
    this.foregroundbottomRightRadius = 0.0,
    this.foregroundtopLeftRadius = 0.0,
    this.foregroundtopRightRadius = 0.0,
    this.foregroundborderRaduis = 0.0,

    // clipBehavior
    this.clipBehavior = Clip.none,

    // transform
    this.transform,
    this.transformAlignment,

    // border
    this.borderStyle = BorderStyle.solid,
    this.borderTopStyle,
    this.borderRightStyle,
    this.borderBottomStyle,
    this.borderLeftStyle,
    this.borderWidth = 0.0,
    this.borderTopWidth,
    this.borderRightWidth,
    this.borderBottomWidth,
    this.borderLeftWidth,
    this.borderColor = 0xFF000000,
    this.borderTopColor,
    this.borderRightColor,
    this.borderBottomColor,
    this.borderLeftColor,
    this.foregroundborderStyle = BorderStyle.solid,
    this.foregroundborderTopStyle,
    this.foregroundborderRightStyle,
    this.foregroundborderBottomStyle,
    this.foregroundborderLeftStyle,
    this.foregroundborderWidth = 0.0,
    this.foregroundborderTopWidth,
    this.foregroundborderRightWidth,
    this.foregroundborderBottomWidth,
    this.foregroundborderLeftWidth,
    this.foregroundborderColor = 0xFF000000,
    this.foregroundborderTopColor,
    this.foregroundborderRightColor,
    this.foregroundborderBottomColor,
    this.foregroundborderLeftColor,

    // decoration
    this.foregroundDecoration,
    this.decoration,

    // boxShape
    this.boxShape = BoxShape.rectangle,
    this.foregroundboxShape = BoxShape.rectangle,

    // touchEffect
    this.touchEffect,

    // blendMode
    this.backgroundBlendMode,
    this.foregroundBlendMode,

    // box gradient
    this.boxGradient,
    this.foregroundboxGradient,

    // image
    this.foregroundImage,
    this.backgroundImage,
  });

  CommonContainerModel copyWith({
    double? width,
    double? height,
    double? minWidth,
    double? minHieght,
    double? maxWidth,
    double? maxHieght,
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
    double? shadowSpreadRadius,
    double? shadowbBlurRadius,
    double? shadowOffsetDX,
    double? shadowOffsetDY,
    double? shadowOpacity,
    double? foregroundshadowSpreadRadius,
    double? foregroundshadowbBlurRadius,
    double? foregroundshadowOffsetDX,
    double? foregroundshadowOffsetDY,
    double? foregroundshadowOpacity,
    double? bottomLeftRadius,
    double? bottomRightRadius,
    double? topLeftRadius,
    double? topRightRadius,
    double? borderRaduis,
    double? borderWidth,
    double? borderTopWidth,
    double? borderBottomWidth,
    double? borderRightWidth,
    double? borderLeftWidth,
    double? foregroundbottomLeftRadius,
    double? foregroundbottomRightRadius,
    double? foregroundtopLeftRadius,
    double? foregroundtopRightRadius,
    double? foregroundborderRaduis,
    double? foregroundborderWidth,
    double? foregroundborderTopWidth,
    double? foregroundborderBottomWidth,
    double? foregroundborderRightWidth,
    double? foregroundborderLeftWidth,
    int? raduisColor,
    int? shadowColor,
    int? backgroundColor,
    int? borderColor,
    int? borderTopColor,
    int? borderBottomColor,
    int? borderRightColor,
    int? borderLeftColor,
    int? loadingColor,
    int? foregroundraduisColor,
    int? foregroundshadowColor,
    int? foregroundColor,
    int? foregroundborderColor,
    int? foregroundborderTopColor,
    int? foregroundborderBottomColor,
    int? foregroundborderRightColor,
    int? foregroundborderLeftColor,
    Alignment? alignment,
    Alignment? transformAlignment,
    Clip? clipBehavior,
    Matrix4? transform,
    BorderStyle? borderStyle,
    BorderStyle? borderTopStyle,
    BorderStyle? borderBottomStyle,
    BorderStyle? borderRightStyle,
    BorderStyle? borderLeftStyle,
    BorderStyle? foregroundborderStyle,
    BorderStyle? foregroundborderTopStyle,
    BorderStyle? foregroundborderBottomStyle,
    BorderStyle? foregroundborderRightStyle,
    BorderStyle? foregroundborderLeftStyle,
    Decoration? foregroundDecoration,
    Decoration? decoration,
    BoxShape? boxShape,
    BoxShape? foregroundboxShape,
    TouchableEffect? touchEffect,
    BlendMode? backgroundBlendMode,
    BlendMode? foregroundBlendMode,
    LinearGradient? boxGradient,
    LinearGradient? foregroundboxGradient,
    DecorationImage? backgroundImage,
    DecorationImage? foregroundImage,
  }) {
    return CommonContainerModel(
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      minHieght: minHieght ?? this.minHieght,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHieght: maxHieght ?? this.maxHieght,
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
      shadowSpreadRadius: shadowSpreadRadius ?? this.shadowSpreadRadius,
      shadowbBlurRadius: shadowbBlurRadius ?? this.shadowbBlurRadius,
      shadowOffsetDX: shadowOffsetDX ?? this.shadowOffsetDX,
      shadowOffsetDY: shadowOffsetDY ?? this.shadowOffsetDY,
      shadowOpacity: shadowOpacity ?? this.shadowOpacity,
      foregroundshadowSpreadRadius:
          foregroundshadowSpreadRadius ?? this.foregroundshadowSpreadRadius,
      foregroundshadowbBlurRadius:
          foregroundshadowbBlurRadius ?? this.foregroundshadowbBlurRadius,
      foregroundshadowOffsetDX:
          foregroundshadowOffsetDX ?? this.foregroundshadowOffsetDX,
      foregroundshadowOffsetDY:
          foregroundshadowOffsetDY ?? this.foregroundshadowOffsetDY,
      foregroundshadowOpacity:
          foregroundshadowOpacity ?? this.foregroundshadowOpacity,
      bottomLeftRadius: bottomLeftRadius ?? this.bottomLeftRadius,
      bottomRightRadius: bottomRightRadius ?? this.bottomRightRadius,
      topLeftRadius: topLeftRadius ?? this.topLeftRadius,
      topRightRadius: topRightRadius ?? this.topRightRadius,
      borderRaduis: borderRaduis ?? this.borderRaduis,
      borderWidth: borderWidth ?? this.borderWidth,
      borderTopWidth: borderTopWidth ?? this.borderTopWidth,
      borderBottomWidth: borderBottomWidth ?? this.borderBottomWidth,
      borderRightWidth: borderRightWidth ?? this.borderRightWidth,
      borderLeftWidth: borderLeftWidth ?? this.borderLeftWidth,
      foregroundbottomLeftRadius:
          foregroundbottomLeftRadius ?? this.foregroundbottomLeftRadius,
      foregroundbottomRightRadius:
          foregroundbottomRightRadius ?? this.foregroundbottomRightRadius,
      foregroundtopLeftRadius:
          foregroundtopLeftRadius ?? this.foregroundtopLeftRadius,
      foregroundtopRightRadius:
          foregroundtopRightRadius ?? this.foregroundtopRightRadius,
      foregroundborderRaduis:
          foregroundborderRaduis ?? this.foregroundborderRaduis,
      foregroundborderWidth:
          foregroundborderWidth ?? this.foregroundborderWidth,
      foregroundborderTopWidth:
          foregroundborderTopWidth ?? this.foregroundborderTopWidth,
      foregroundborderBottomWidth:
          foregroundborderBottomWidth ?? this.foregroundborderBottomWidth,
      foregroundborderRightWidth:
          foregroundborderRightWidth ?? this.foregroundborderRightWidth,
      foregroundborderLeftWidth:
          foregroundborderLeftWidth ?? this.foregroundborderLeftWidth,
      raduisColor: raduisColor ?? this.raduisColor,
      shadowColor: shadowColor ?? this.shadowColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderTopColor: borderTopColor ?? this.borderTopColor,
      borderBottomColor: borderBottomColor ?? this.borderBottomColor,
      borderRightColor: borderRightColor ?? this.borderRightColor,
      borderLeftColor: borderLeftColor ?? this.borderLeftColor,
      loadingColor: loadingColor ?? this.loadingColor,
      foregroundraduisColor:
          foregroundraduisColor ?? this.foregroundraduisColor,
      foregroundshadowColor:
          foregroundshadowColor ?? this.foregroundshadowColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundborderColor:
          foregroundborderColor ?? this.foregroundborderColor,
      foregroundborderTopColor:
          foregroundborderTopColor ?? this.foregroundborderTopColor,
      foregroundborderBottomColor:
          foregroundborderBottomColor ?? this.foregroundborderBottomColor,
      foregroundborderRightColor:
          foregroundborderRightColor ?? this.foregroundborderRightColor,
      foregroundborderLeftColor:
          foregroundborderLeftColor ?? this.foregroundborderLeftColor,
      alignment: alignment ?? this.alignment,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      transform: transform ?? this.transform,
      borderStyle: borderStyle ?? this.borderStyle,
      borderTopStyle: borderTopStyle ?? this.borderTopStyle,
      borderBottomStyle: borderBottomStyle ?? this.borderBottomStyle,
      borderRightStyle: borderRightStyle ?? this.borderRightStyle,
      borderLeftStyle: borderLeftStyle ?? this.borderLeftStyle,
      foregroundborderStyle:
          foregroundborderStyle ?? this.foregroundborderStyle,
      foregroundborderTopStyle:
          foregroundborderTopStyle ?? this.foregroundborderTopStyle,
      foregroundborderBottomStyle:
          foregroundborderBottomStyle ?? this.foregroundborderBottomStyle,
      foregroundborderRightStyle:
          foregroundborderRightStyle ?? this.foregroundborderRightStyle,
      foregroundborderLeftStyle:
          foregroundborderLeftStyle ?? this.foregroundborderLeftStyle,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      decoration: decoration ?? this.decoration,
      boxShape: boxShape ?? this.boxShape,
      foregroundboxShape: foregroundboxShape ?? this.foregroundboxShape,
      touchEffect: touchEffect ?? this.touchEffect,
      backgroundBlendMode: backgroundBlendMode ?? this.backgroundBlendMode,
      foregroundBlendMode: foregroundBlendMode ?? this.foregroundBlendMode,
      boxGradient: boxGradient ?? this.boxGradient,
      foregroundboxGradient:
          foregroundboxGradient ?? this.foregroundboxGradient,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      foregroundImage: foregroundImage ?? this.foregroundImage,
    );
  }
}
