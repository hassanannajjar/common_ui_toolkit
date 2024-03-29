import 'dart:ui';

import '../../common_ui_toolkit.dart';

class CommonTextModel {
  const CommonTextModel({
    ///sizes
    this.height,
    this.letterSpacing,
    this.wordSpacing,
    this.fontSize,
    this.decorationThickness,
    this.maxLines,
    this.textScaleFactor,

    /// colors
    this.fontColor,
    this.backgroundColor,
    this.decorationColor,
    this.decoration,
    this.textDirection,
    this.overflow,
    this.softWrap,
    this.strutStyle,
    this.textHeightBehavior,
    this.textWidthBasis,

    // -------------------
    this.fontWeight,
    this.fontFamily,
    this.fontStyle,
    this.textAlign,
    this.textBaseline,
    this.leadingDistribution,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.fontFeatures,
    this.columnCrossAxisAlignment,
    this.columnMainAxisAlignment,
    this.columnMainAxisSize,
    this.rowCrossAxisAlignment,
    this.rowMainAxisSize,
    this.rowMainAxisAlignment,
    this.decorationStyle,
    this.debugLabel,
    this.fontFamilyFallback,
    this.inherit = true,
    this.package,
    this.semanticsLabel,
    this.margin,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,
    this.marginHorizontal,
  });

  ///
  /// sizes
  ///
  final double? height;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? decorationThickness;
  final double? fontSize;
  final double? textScaleFactor;
  final int? maxLines;

  ///
  /// colors
  ///
  final dynamic fontColor;
  final dynamic backgroundColor;
  final dynamic decorationColor;

  ///
  /// decoration
  ///
  final TextDecoration? decoration;

  ///
  /// text direction
  ///
  final TextDirection? textDirection;

  ///
  /// overflow default  TextOverflow.clip
  ///
  final TextOverflow? overflow;

  ///
  /// soft wrap default true
  ///
  final bool? softWrap;

  ///
  /// strut style
  ///
  final StrutStyle? strutStyle;

  ///
  /// text height behavior
  ///
  final TextHeightBehavior? textHeightBehavior;

  ///
  /// text width basis default => [TextWidthBasis.parent]
  ///
  final TextWidthBasis? textWidthBasis;

  ///
  /// decoration style
  ///
  final TextDecorationStyle? decorationStyle;

  ///
  /// font weight
  ///
  final FontWeight? fontWeight;

  ///
  /// text align default => [TextAlign.center]
  ///
  final TextAlign? textAlign;

  ///
  /// font style
  ///
  final FontStyle? fontStyle;

  ///
  /// text base line
  ///
  final TextBaseline? textBaseline;

  ///
  /// leading distribution
  ///
  final TextLeadingDistribution? leadingDistribution;

  ///
  /// column Cross Axis Alignment default => [CrossAxisAlignment.center]
  ///
  final CrossAxisAlignment? columnCrossAxisAlignment;

  ///
  /// column main Axis Alignment default => [MainAxisAlignment.start]
  ///
  final MainAxisAlignment? columnMainAxisAlignment;

  ///
  /// column main Axis size default => [MainAxisSize.min]
  ///
  final MainAxisSize? columnMainAxisSize;

  ///
  /// row cross Axis Alignment default => [CrossAxisAlignment.center]
  ///
  final CrossAxisAlignment? rowCrossAxisAlignment;

  ///
  /// row main Axis Alignment default => [ MainAxisAlignment.start]
  ///
  final MainAxisAlignment? rowMainAxisAlignment;

  ///
  /// row main Axis size
  ///
  final MainAxisSize? rowMainAxisSize;

  ///
  /// locale
  ///
  final Locale? locale;

  ///
  /// foreground
  ///
  final Paint? foreground;

  ///
  /// background
  ///
  final Paint? background;

  ///
  /// shadows
  ///
  final List<Shadow>? shadows;

  ///
  /// font features
  ///
  final List<FontFeature>? fontFeatures;

  ///
  /// font family fallback
  ///
  final List<String>? fontFamilyFallback;

  ///
  /// font family
  ///
  final String? fontFamily;

  ///
  /// debug label
  ///
  final String? debugLabel;

  ///
  /// inherit
  ///
  final bool? inherit;

  ///
  /// package
  ///
  final String? package;

  ///
  /// semantics label
  ///
  final String? semanticsLabel;

  ///
  /// margin for all container
  ///
  ///
  final double? margin;

  ///
  /// margin for top container
  ///
  final double? marginTop;

  ///
  /// margin for bottom container
  ///
  final double? marginBottom;

  ///
  /// margin for right container
  ///
  final double? marginRight;

  ///
  /// margin for left container
  ///
  final double? marginLeft;

  ///
  /// margin for (top and bottom|| Vertical)  container
  ///
  final double? marginVertical;

  ///
  /// margin for (right and left || Horizontal) container
  ///
  final double? marginHorizontal;

  CommonTextModel copyWith({
    double? height,
    double? letterSpacing,
    double? wordSpacing,
    double? decorationThickness,
    double? fontSize,
    double? textScaleFactor,
    int? maxLines,
    dynamic fontColor,
    dynamic backgroundColor,
    dynamic decorationColor,
    TextDecoration? decoration,
    TextDirection? textDirection,
    TextOverflow? overflow,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextHeightBehavior? textHeightBehavior,
    TextWidthBasis? textWidthBasis,
    TextDecorationStyle? decorationStyle,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    FontStyle? fontStyle,
    TextBaseline? textBaseline,
    TextLeadingDistribution? leadingDistribution,
    CrossAxisAlignment? columnCrossAxisAlignment,
    MainAxisAlignment? columnMainAxisAlignment,
    MainAxisSize? columnMainAxisSize,
    CrossAxisAlignment? rowCrossAxisAlignment,
    MainAxisAlignment? rowMainAxisAlignment,
    MainAxisSize? rowMainAxisSize,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<String>? fontFamilyFallback,
    String? fontFamily,
    String? debugLabel,
    bool? inherit,
    String? package,
    String? semanticsLabel,
    double? margin,
    double? marginTop,
    double? marginBottom,
    double? marginRight,
    double? marginLeft,
    double? marginVertical,
    double? marginHorizontal,
  }) {
    return CommonTextModel(
      height: height ?? this.height,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      fontSize: fontSize ?? this.fontSize,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      maxLines: maxLines ?? this.maxLines,
      fontColor: fontColor ?? this.fontColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      decorationColor: decorationColor ?? this.decorationColor,
      decoration: decoration ?? this.decoration,
      textDirection: textDirection ?? this.textDirection,
      overflow: overflow ?? this.overflow,
      softWrap: softWrap ?? this.softWrap,
      strutStyle: strutStyle ?? this.strutStyle,
      textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      fontWeight: fontWeight ?? this.fontWeight,
      textAlign: textAlign ?? this.textAlign,
      fontStyle: fontStyle ?? this.fontStyle,
      textBaseline: textBaseline ?? this.textBaseline,
      leadingDistribution: leadingDistribution ?? this.leadingDistribution,
      columnCrossAxisAlignment:
          columnCrossAxisAlignment ?? this.columnCrossAxisAlignment,
      columnMainAxisAlignment:
          columnMainAxisAlignment ?? this.columnMainAxisAlignment,
      columnMainAxisSize: columnMainAxisSize ?? this.columnMainAxisSize,
      rowCrossAxisAlignment:
          rowCrossAxisAlignment ?? this.rowCrossAxisAlignment,
      rowMainAxisAlignment: rowMainAxisAlignment ?? this.rowMainAxisAlignment,
      rowMainAxisSize: rowMainAxisSize ?? this.rowMainAxisSize,
      locale: locale ?? this.locale,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      shadows: shadows ?? this.shadows,
      fontFeatures: fontFeatures ?? this.fontFeatures,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontFamily: fontFamily ?? this.fontFamily,
      debugLabel: debugLabel ?? this.debugLabel,
      inherit: inherit ?? this.inherit,
      package: package ?? this.package,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      margin: margin ?? this.margin,
      marginTop: marginTop ?? this.marginTop,
      marginBottom: marginBottom ?? this.marginBottom,
      marginRight: marginRight ?? this.marginRight,
      marginLeft: marginLeft ?? this.marginLeft,
      marginVertical: marginVertical ?? this.marginVertical,
      marginHorizontal: marginHorizontal ?? this.marginHorizontal,
    );
  }
}
