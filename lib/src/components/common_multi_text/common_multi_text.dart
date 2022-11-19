import 'dart:ui';

import '../../../common_ui_toolkit.dart';

class CommonMultiText extends StatelessWidget {
  const CommonMultiText(
    this.text, {
    this.onPress,
    this.leftChild,
    this.rightChild,
    this.topChild,
    this.bottomChild,
    this.inlineSpans,
    this.style,
    this.containerStyle,

    ///sizes
    this.height,
    this.letterSpacing,
    this.wordSpacing,
    this.fontSize,
    this.decorationThickness,
    this.maxlines,
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
    this.prefixIcon,
    Key? key,
  }) : super(
          key: key,
        );

  /// to use it import the CommonMultiTextModel or use defaults style from CommonMultiTextStyles.
  /// example :
  /// using CommonMultiTextStyles model
  /// ```dart
  ///  CommonMultiTextStyles(
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
  /// CommonMultiTextStyles().h5Style
  /// or
  /// CommonMultiTextStyles().bodyStyle
  /// or etc...
  /// ```
  final CommonTextModel? style;
  final CommonContainerModel? containerStyle;

  /// handel opPress function
  final Function? onPress;

  /// text
  final String? text;

  final List<InlineSpan>? inlineSpans;

  /// left, right, top and bottom children widgets around the common text
  final Widget? leftChild;
  final Widget? rightChild;
  final Widget? topChild;
  final Widget? bottomChild;

  ///
  /// sizes
  ///
  final double? height;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? decorationThickness;
  final double? fontSize;
  final double? textScaleFactor;
  final int? maxlines;

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
  /// overflow
  ///
  final TextOverflow? overflow;

  ///
  /// soft wrap
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
  /// text width basis
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
  /// text align
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
  /// column Cross Axis Alignment
  ///
  final CrossAxisAlignment? columnCrossAxisAlignment;

  ///
  /// column main Axis Alignment
  ///
  final MainAxisAlignment? columnMainAxisAlignment;

  ///
  /// column main Axis size
  ///
  final MainAxisSize? columnMainAxisSize;

  ///
  /// row cross Axis Alignment
  ///
  final CrossAxisAlignment? rowCrossAxisAlignment;

  ///
  /// row main Axis Alignment
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

  /// prefix icon
  final CommonIcon? prefixIcon;

  double _responsiveFontSize() => DEVICE_WIDTH * (fontSize! / 430);

  @override
  Widget build(BuildContext context) {
    final CommonTextModel currentStyle = style ?? const CommonTextModel();
    final CommonContainerModel currentContainerStyle =
        containerStyle ?? const CommonContainerModel();

    return CommonContainer(
      onPress: onPress,
      style: currentContainerStyle,
      child: Column(
        crossAxisAlignment:
            columnCrossAxisAlignment ?? currentStyle.columnCrossAxisAlignment,
        mainAxisSize: columnMainAxisSize ?? currentStyle.columnMainAxisSize,
        mainAxisAlignment:
            columnMainAxisAlignment ?? currentStyle.columnMainAxisAlignment,
        children: <Widget>[
          if (topChild != null) topChild!,
          Row(
            mainAxisSize: rowMainAxisSize ?? currentStyle.rowMainAxisSize,
            crossAxisAlignment: columnCrossAxisAlignment ??
                currentStyle.columnCrossAxisAlignment,
            mainAxisAlignment:
                rowMainAxisAlignment ?? currentStyle.rowMainAxisAlignment,
            children: <Widget>[
              if ((prefixIcon ?? currentStyle.prefixIcon) != null)
                getIcon(prefixIcon ?? currentStyle.prefixIcon!),
              if (leftChild != null) leftChild!,
              Flexible(
                child: RichText(
                  maxLines: maxlines ?? currentStyle.maxlines,
                  textAlign: textAlign ?? currentStyle.textAlign,
                  textDirection: textDirection ?? currentStyle.textDirection,
                  overflow: overflow ?? currentStyle.overflow,
                  softWrap: softWrap ?? currentStyle.softWrap,
                  strutStyle: strutStyle ?? currentStyle.strutStyle,
                  textHeightBehavior:
                      textHeightBehavior ?? currentStyle.textHeightBehavior,
                  textScaleFactor:
                      textScaleFactor ?? currentStyle.textScaleFactor,
                  textWidthBasis: textWidthBasis ?? currentStyle.textWidthBasis,
                  text: TextSpan(
                    text: text,
                    children: inlineSpans,
                    style: TextStyle(
                      decoration: decoration ?? currentStyle.decoration,
                      color: getColorType(fontColor ?? currentStyle.fontColor!),
                      decorationThickness: decorationThickness ??
                          currentStyle.decorationThickness,
                      fontSize: fontSize != null
                          ? _responsiveFontSize()
                          : currentStyle.responsiveFontSize(),
                      fontWeight: fontWeight ?? currentStyle.fontWeight,
                      fontFamily: fontFamily ?? currentStyle.fontFamily,
                      wordSpacing: wordSpacing ?? currentStyle.wordSpacing,
                      fontStyle: fontStyle ?? currentStyle.fontStyle,
                      letterSpacing:
                          letterSpacing ?? currentStyle.letterSpacing,
                      backgroundColor: getColorType(
                          backgroundColor ?? currentStyle.backgroundColor!),
                      height: height ?? currentStyle.height,
                      textBaseline: textBaseline ?? currentStyle.textBaseline,
                      leadingDistribution: leadingDistribution ??
                          currentStyle.leadingDistribution,
                      locale: locale ?? currentStyle.locale,
                      foreground: foreground ?? currentStyle.foreground,
                      background: background ?? currentStyle.background,
                      shadows: shadows ?? currentStyle.shadows,
                      fontFeatures: fontFeatures ?? currentStyle.fontFeatures,
                      decorationColor: getColorType(
                          decorationColor ?? currentStyle.decorationColor!),
                      decorationStyle:
                          decorationStyle ?? currentStyle.decorationStyle,
                      debugLabel: debugLabel ?? currentStyle.debugLabel,
                      fontFamilyFallback:
                          fontFamilyFallback ?? currentStyle.fontFamilyFallback,
                    ),
                  ),
                ),
              ),
              if (rightChild != null) rightChild!,
            ],
          ),
          if (bottomChild != null) bottomChild!,
        ],
      ),
    );
  }
}
