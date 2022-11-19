import 'dart:ui';

import '../../../common_ui_toolkit.dart';

class CommonText extends StatelessWidget {
  const CommonText(
    this.text, {
    this.style,
    this.onPress,
    this.height,
    this.letterSpacing,
    this.wordSpacing,
    this.fontSize,
    this.decorationThickness,

    /// colors
    this.fontColor,
    this.backgroundColor,
    this.decorationColor,
    this.decoration,
    this.overflow,

    // -------------------
    this.fontWeight,
    this.fontFamily,
    this.fontStyle,
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
    this.inherit,
    this.package,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    Key? key,
  }) : super(
          key: key,
        );

  /// to use it import the CommonTextModel or use defaults style from CommonTextStyles.
  /// example :
  /// using CommonTextStyles model
  /// ```dart
  ///  CommonTextStyles(
  ///   fontSize: 12,
  ///  fontFamily: 'Roboto',
  /// fontWeight: 'bold',
  /// fontStyle: 'italic',
  /// color: '#ff0000',
  /// textAlign: 'center',
  /// )
  /// ```
  /// using defaults style
  ///
  /// ```dart
  /// CommonTextStyles().h5Style
  /// or
  /// CommonTextStyles().bodyStyle
  /// or etc...
  /// ```
  final CommonTextModel? style;

  /// text
  final String? text;

  final Function? onPress;

  ///
  /// sizes
  ///
  final double? height;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? decorationThickness;
  final double? fontSize;

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
  /// overflow
  ///
  final TextOverflow? overflow;

  ///
  /// decoration style
  ///
  final TextDecorationStyle? decorationStyle;

  ///
  /// font weight
  ///
  final FontWeight? fontWeight;

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

  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final bool? softWrap;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  double _responsiveFontSize() => DEVICE_WIDTH * (fontSize! / 430);

  @override
  Widget build(BuildContext context) {
    final CommonTextModel currentTextStyle = style ?? const CommonTextModel();

    final Text textContainer = Text(
      text!,
      style: TextStyle(
        decoration: decoration ?? currentTextStyle.decoration,
        color: getColorType(fontColor ?? currentTextStyle.fontColor!),
        decorationThickness:
            decorationThickness ?? currentTextStyle.decorationThickness,
        fontSize: fontSize != null
            ? _responsiveFontSize()
            : currentTextStyle.responsiveFontSize(),
        fontWeight: fontWeight ?? currentTextStyle.fontWeight,
        fontFamily: fontFamily ?? currentTextStyle.fontFamily,
        wordSpacing: wordSpacing ?? currentTextStyle.wordSpacing,
        fontStyle: fontStyle ?? currentTextStyle.fontStyle,
        letterSpacing: letterSpacing ?? currentTextStyle.letterSpacing,
        backgroundColor:
            getColorType(backgroundColor ?? currentTextStyle.backgroundColor!),
        height: height ?? currentTextStyle.height,
        textBaseline: textBaseline ?? currentTextStyle.textBaseline,
        leadingDistribution:
            leadingDistribution ?? currentTextStyle.leadingDistribution,
        locale: locale ?? currentTextStyle.locale,
        foreground: foreground ?? currentTextStyle.foreground,
        background: background ?? currentTextStyle.background,
        shadows: shadows ?? currentTextStyle.shadows,
        fontFeatures: fontFeatures ?? currentTextStyle.fontFeatures,
        decorationColor:
            getColorType(decorationColor ?? currentTextStyle.decorationColor!),
        decorationStyle: decorationStyle ?? currentTextStyle.decorationStyle,
        debugLabel: debugLabel ?? currentTextStyle.debugLabel,
        fontFamilyFallback:
            fontFamilyFallback ?? currentTextStyle.fontFamilyFallback,
        overflow: overflow ?? currentTextStyle.overflow,
        inherit: inherit ?? currentTextStyle.inherit!,
        package: package ?? currentTextStyle.package,
      ),
      locale: locale ?? currentTextStyle.locale,
      strutStyle: strutStyle ?? currentTextStyle.strutStyle,
      textAlign: TextAlign.center,
      textDirection: textDirection ?? currentTextStyle.textDirection,
      softWrap: softWrap ?? currentTextStyle.softWrap,
      textScaleFactor: textScaleFactor ?? currentTextStyle.textScaleFactor,
      // maxLines: maxLines ?? currentTextStyle.maxLines,
      // semanticsLabel: semanticsLabel ?? currentTextStyle.semanticsLabel,
      // textWidthBasis: textWidthBasis ?? currentTextStyle.textWidthBasis,
      // textHeightBehavior:
      //     textHeightBehavior ?? currentTextStyle.textHeightBehavior,
      // overflow: overflow ?? currentTextStyle.overflow,
    );

    return onPress == null
        ? textContainer
        : CommonTouchable(
            onTap: onPress,
            child: textContainer,
          );
  }
}
