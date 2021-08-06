import 'package:flutter/widgets.dart';

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

  Alignment? alignment;
  Alignment? transformAlignment;

  Clip? clipBehavior;

  Matrix4? transform;

  BorderStyle? borderStyle;
  BorderStyle? borderTopStyle;
  BorderStyle? borderBottomStyle;
  BorderStyle? borderRightStyle;
  BorderStyle? borderLeftStyle;

  Border? customeBorder;

  Decoration? foregroundDecoration;
  Decoration? decoration;

  BoxShape? boxShape;

  bool withTapEffect;

  BlendMode? backgroundBlendMode;

  LinearGradient? boxGradient;

  DecorationImage? backgroundImage;

  /// check if the border is null or not.
  checkBorderNull() =>
      borderTopWidth != null ||
      borderBottomWidth != null ||
      borderRightWidth != null ||
      borderLeftWidth != null;

  /// get border Raduis.
  getBorderRaduis() => (boxShape == BoxShape.circle || checkBorderNull())
      ? null
      : (borderRaduis == 0
          ? BorderRadius.only(
              topRight: Radius.circular(topRightRadius!),
              topLeft: Radius.circular(topLeftRadius!),
              bottomLeft: Radius.circular(bottomLeftRadius!),
              bottomRight: Radius.circular(bottomRightRadius!),
            )
          : BorderRadius.all(
              Radius.circular(borderRaduis!),
            ));

  /// get border width and color.
  getBorder() => (borderWidth! > 0 || checkBorderNull())
      ? Border(
          top: BorderSide(
            color: Color(borderTopColor ?? borderColor!),
            width: borderTopWidth ?? borderWidth!,
            style: borderTopStyle ?? borderStyle!,
          ),
          right: BorderSide(
            color: Color(borderRightColor ?? borderColor!),
            width: borderRightWidth ?? borderWidth!,
            style: borderRightStyle ?? borderStyle!,
          ),
          bottom: BorderSide(
            color: Color(borderBottomColor ?? borderColor!),
            width: borderBottomWidth ?? borderWidth!,
            style: borderBottomStyle ?? borderStyle!,
          ),
          left: BorderSide(
            color: Color(borderLeftColor ?? borderColor!),
            width: borderLeftWidth ?? borderWidth!,
            style: borderLeftStyle ?? borderStyle!,
          ),
        )
      : null;

  /// handel container width.
  getWidth() => width! < 1.0 && width! > 0.0
      ? DEVICE_WIDTH * width!
      : width! > 1
          ? width!
          : null;

  /// handel container height.
  getHeight() => height! < 1.0 && height! > 0.0
      ? DEVICE_HEIGHT * height!
      : height! > 0.0
          ? height!
          : null;

  CommonContainerModel({
    //sizes
    this.width = 0.0,
    this.height = 0.0,
    this.minWidth = 0.0,
    this.minHieght = 0.0,
    this.maxWidth = double.infinity,
    this.maxHieght = double.infinity,
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
    this.backgroundColor = 0xFFFFFFFF,
    this.raduisColor = 0xFF000000,
    this.loadingColor = 0xFF1DD005,

    // shadow
    this.shadowSpreadRadius = 0.0,
    this.shadowbBlurRadius = 0.0,
    this.shadowOffsetDX = 0.0,
    this.shadowOffsetDY = 0.0,
    this.shadowColor = 0xFF000000,
    this.shadowOpacity = 0.0,
    // raduis
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.borderRaduis = 0.0,
    this.clipBehavior = Clip.none,
    this.transform,
    this.transformAlignment,
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
    this.customeBorder,
    this.foregroundDecoration,
    this.decoration,
    this.boxShape = BoxShape.rectangle,
    this.withTapEffect = true,
    this.backgroundBlendMode,
    this.boxGradient,
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
    int? raduisColor,
    int? shadowColor,
    int? backgroundColor,
    int? borderColor,
    int? borderTopColor,
    int? borderBottomColor,
    int? borderRightColor,
    int? borderLeftColor,
    int? loadingColor,
    Alignment? alignment,
    Alignment? transformAlignment,
    Clip? clipBehavior,
    Matrix4? transform,
    BorderStyle? borderStyle,
    BorderStyle? borderTopStyle,
    BorderStyle? borderBottomStyle,
    BorderStyle? borderRightStyle,
    BorderStyle? borderLeftStyle,
    Border? customeBorder,
    Decoration? foregroundDecoration,
    Decoration? decoration,
    BoxShape? boxShape,
    bool? withTapEffect,
    BlendMode? backgroundBlendMode,
    LinearGradient? boxGradient,
    DecorationImage? backgroundImage,
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
      raduisColor: raduisColor ?? this.raduisColor,
      shadowColor: shadowColor ?? this.shadowColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderTopColor: borderTopColor ?? this.borderTopColor,
      borderBottomColor: borderBottomColor ?? this.borderBottomColor,
      borderRightColor: borderRightColor ?? this.borderRightColor,
      borderLeftColor: borderLeftColor ?? this.borderLeftColor,
      alignment: alignment ?? this.alignment,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      transform: transform ?? this.transform,
      borderStyle: borderStyle ?? this.borderStyle,
      borderTopStyle: borderTopStyle ?? this.borderTopStyle,
      borderBottomStyle: borderBottomStyle ?? this.borderBottomStyle,
      borderRightStyle: borderRightStyle ?? this.borderRightStyle,
      borderLeftStyle: borderLeftStyle ?? this.borderLeftStyle,
      customeBorder: customeBorder ?? this.customeBorder,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      decoration: decoration ?? this.decoration,
      boxShape: boxShape ?? this.boxShape,
      withTapEffect: withTapEffect ?? this.withTapEffect,
      backgroundBlendMode: backgroundBlendMode ?? this.backgroundBlendMode,
      boxGradient: boxGradient ?? this.boxGradient,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      loadingColor: loadingColor ?? this.loadingColor,
    );
  }
}
