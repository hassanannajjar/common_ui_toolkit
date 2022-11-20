import 'dart:ui';

import '../../../common_ui_toolkit.dart';

class CommonText extends StatelessWidget {
  const CommonText(
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
    this.prefixIcon,
    this.inherit,
    this.package,
    this.semanticsLabel,
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
  /// color: '#ff55bb',
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
    final CommonTextModel currentTextStyle = style ?? const CommonTextModel();
    final CommonContainerModel currentContainerStyle =
        containerStyle ?? const CommonContainerModel();

    // simple text
    final Text simpleText = Text(
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
        // package: package ?? currentTextStyle.package,
      ),
      locale: locale ?? currentTextStyle.locale,
      strutStyle: strutStyle ?? currentTextStyle.strutStyle,
      textAlign: TextAlign.center,
      textDirection: textDirection ?? currentTextStyle.textDirection,
      softWrap: softWrap ?? currentTextStyle.softWrap,
      textScaleFactor: textScaleFactor ?? currentTextStyle.textScaleFactor,
      maxLines: maxLines ?? currentTextStyle.maxLines,
      semanticsLabel: semanticsLabel ?? currentTextStyle.semanticsLabel,
      textWidthBasis: textWidthBasis ?? currentTextStyle.textWidthBasis,
      textHeightBehavior:
          textHeightBehavior ?? currentTextStyle.textHeightBehavior,
      overflow: overflow ?? currentTextStyle.overflow,
    );

    // richtext with text span
    final Flexible flexibleText = Flexible(
      child: RichText(
        maxLines: maxLines ?? currentTextStyle.maxLines,
        textAlign: textAlign ?? currentTextStyle.textAlign,
        textDirection: textDirection ?? currentTextStyle.textDirection,
        overflow: overflow ?? currentTextStyle.overflow,
        softWrap: softWrap ?? currentTextStyle.softWrap,
        strutStyle: strutStyle ?? currentTextStyle.strutStyle,
        textHeightBehavior:
            textHeightBehavior ?? currentTextStyle.textHeightBehavior,
        textScaleFactor: textScaleFactor ?? currentTextStyle.textScaleFactor,
        textWidthBasis: textWidthBasis ?? currentTextStyle.textWidthBasis,
        text: TextSpan(
          text: text,
          children: inlineSpans,
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
            backgroundColor: getColorType(
                backgroundColor ?? currentTextStyle.backgroundColor!),
            height: height ?? currentTextStyle.height,
            textBaseline: textBaseline ?? currentTextStyle.textBaseline,
            leadingDistribution:
                leadingDistribution ?? currentTextStyle.leadingDistribution,
            locale: locale ?? currentTextStyle.locale,
            foreground: foreground ?? currentTextStyle.foreground,
            background: background ?? currentTextStyle.background,
            shadows: shadows ?? currentTextStyle.shadows,
            fontFeatures: fontFeatures ?? currentTextStyle.fontFeatures,
            decorationColor: getColorType(
                decorationColor ?? currentTextStyle.decorationColor!),
            decorationStyle:
                decorationStyle ?? currentTextStyle.decorationStyle,
            debugLabel: debugLabel ?? currentTextStyle.debugLabel,
            fontFamilyFallback:
                fontFamilyFallback ?? currentTextStyle.fontFamilyFallback,
          ),
        ),
      ),
    );

    // check the text type should render
    final dynamic currentTextType =
        inlineSpans == null ? simpleText : flexibleText;

    // row container
    final Row row = Row(
      mainAxisSize: rowMainAxisSize ?? currentTextStyle.rowMainAxisSize,
      crossAxisAlignment:
          columnCrossAxisAlignment ?? currentTextStyle.columnCrossAxisAlignment,
      mainAxisAlignment:
          rowMainAxisAlignment ?? currentTextStyle.rowMainAxisAlignment,
      children: <Widget>[
        if ((prefixIcon ?? currentTextStyle.prefixIcon) != null)
          getIcon(prefixIcon ?? currentTextStyle.prefixIcon!),
        if (leftChild != null) leftChild!,
        currentTextType,
        if (rightChild != null) rightChild!,
      ],
    );

    // column container
    final Column column = Column(
      crossAxisAlignment:
          columnCrossAxisAlignment ?? currentTextStyle.columnCrossAxisAlignment,
      mainAxisSize: columnMainAxisSize ?? currentTextStyle.columnMainAxisSize,
      mainAxisAlignment:
          columnMainAxisAlignment ?? currentTextStyle.columnMainAxisAlignment,
      children: <Widget>[
        if (topChild != null) topChild!,
        if (rightChild == null && leftChild == null) currentTextType else row,
        if (bottomChild != null) bottomChild!,
      ],
    );

    // check the what container type should render
    final dynamic isColumOrRow =
        topChild == null && bottomChild == null ? row : column;

    final bool isSimple = containerStyle == null &&
        inlineSpans == null &&
        topChild == null &&
        bottomChild == null &&
        rightChild == null &&
        leftChild == null;

    if (isSimple) {
      return onPress == null
          ? simpleText
          : CommonTouchable(
              onTap: onPress,
              touchEffect: TouchableEffect(
                type: TouchTypes.opacity,
              ),
              child: simpleText,
            );
    } else {
      return containerStyle == null
          ? isColumOrRow
          : CommonContainer(
              onPress: onPress,
              style: currentContainerStyle,
              child: isColumOrRow,
            );
    }
  }
}
