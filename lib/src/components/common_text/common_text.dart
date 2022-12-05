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
    this.margin,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,
    this.marginHorizontal,
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

  @override
  Widget build(BuildContext context) {
    final CommonTextModel currentTextStyle = style ?? const CommonTextModel();
    final CommonTextModel configModel = GLOBAL_CONFIG.textModel!;
    final CommonContainerModel currentContainerStyle =
        containerStyle ?? const CommonContainerModel();

    final double? currentMargin =
        margin ?? currentTextStyle.margin ?? configModel.margin;
    final double? currentMarginTop =
        marginTop ?? currentTextStyle.marginTop ?? configModel.marginTop;
    final double? currentMarginBottom =
        marginBottom ?? currentTextStyle.marginBottom ?? configModel.marginTop;
    final double? currentMarginRight =
        marginRight ?? currentTextStyle.marginRight;
    final double? currentMarginLeft =
        marginLeft ?? currentTextStyle.marginLeft ?? configModel.marginLeft;
    final double? currentMarginHorizontal = marginHorizontal ??
        currentTextStyle.marginHorizontal ??
        configModel.marginHorizontal;
    final double? currentMarginVertical = marginVertical ??
        currentTextStyle.marginVertical ??
        configModel.marginVertical;

    final TextDecoration? currentDecoration =
        decoration ?? currentTextStyle.decoration ?? configModel.decoration;
    final dynamic currentFontColor = fontColor ??
        currentTextStyle.fontColor ??
        configModel.fontColor ??
        COMMON_BLACK_COLOR;

    final bool withMargin = (currentMarginTop != null ||
        currentMarginBottom != null ||
        currentMarginLeft != null ||
        currentMarginRight != null ||
        currentMarginHorizontal != null ||
        currentMarginVertical != null ||
        currentMargin != null);

    final double? currentHeight =
        height ?? currentTextStyle.height ?? configModel.height;
    final double currentLetterSpacing = letterSpacing ??
        currentTextStyle.letterSpacing ??
        configModel.letterSpacing ??
        0.0;
    final double currentWordSpacing = wordSpacing ??
        currentTextStyle.wordSpacing ??
        configModel.wordSpacing ??
        0.0;
    final double? currentDecorationThickness = decorationThickness ??
        currentTextStyle.decorationThickness ??
        configModel.decorationThickness;
    final double currentFontSize = fontSize ??
        currentTextStyle.fontSize ??
        configModel.fontSize ??
        COMMON_H4_FONT;
    final double currentTextScaleFactor = textScaleFactor ??
        currentTextStyle.textScaleFactor ??
        configModel.textScaleFactor ??
        1.0;
    final int? currentMaxLines =
        maxLines ?? currentTextStyle.maxLines ?? configModel.maxLines;
    final TextDirection? currentTextDirection = textDirection ??
        currentTextStyle.textDirection ??
        configModel.textDirection;
    final TextOverflow currentOverflow = overflow ??
        currentTextStyle.overflow ??
        configModel.overflow ??
        TextOverflow.clip;
    final bool currentSoftWrap =
        softWrap ?? currentTextStyle.softWrap ?? configModel.softWrap ?? true;
    final StrutStyle? currentStrutStyle =
        strutStyle ?? currentTextStyle.strutStyle ?? configModel.strutStyle;
    final TextHeightBehavior? currentTextHeightBehavior = textHeightBehavior ??
        currentTextStyle.textHeightBehavior ??
        configModel.textHeightBehavior;
    final TextWidthBasis currentTextWidthBasis = textWidthBasis ??
        currentTextStyle.textWidthBasis ??
        configModel.textWidthBasis ??
        TextWidthBasis.parent;
    final TextDecorationStyle? currentDecorationStyle = decorationStyle ??
        currentTextStyle.decorationStyle ??
        configModel.decorationStyle;
    final FontWeight currentFontWeight = fontWeight ??
        currentTextStyle.fontWeight ??
        configModel.fontWeight ??
        FontWeight.normal;
    final TextAlign currentTextAlign = textAlign ??
        currentTextStyle.textAlign ??
        configModel.textAlign ??
        TextAlign.center;
    final FontStyle currentFontStyle = fontStyle ??
        currentTextStyle.fontStyle ??
        configModel.fontStyle ??
        FontStyle.normal;
    final TextBaseline? currentTextBaseline = textBaseline ??
        currentTextStyle.textBaseline ??
        configModel.textBaseline;
    final TextLeadingDistribution? currentLeadingDistribution =
        leadingDistribution ??
            currentTextStyle.leadingDistribution ??
            configModel.leadingDistribution;
    final CrossAxisAlignment currentColumnCrossAxisAlignment =
        columnCrossAxisAlignment ??
            currentTextStyle.columnCrossAxisAlignment ??
            configModel.columnCrossAxisAlignment ??
            CrossAxisAlignment.center;
    final MainAxisAlignment currentColumnMainAxisAlignment =
        columnMainAxisAlignment ??
            currentTextStyle.columnMainAxisAlignment ??
            configModel.columnMainAxisAlignment ??
            MainAxisAlignment.start;
    final MainAxisSize currentColumnMainAxisSize = columnMainAxisSize ??
        currentTextStyle.columnMainAxisSize ??
        configModel.columnMainAxisSize ??
        MainAxisSize.min;
    final CrossAxisAlignment currentRowCrossAxisAlignment =
        rowCrossAxisAlignment ??
            currentTextStyle.rowCrossAxisAlignment ??
            configModel.rowCrossAxisAlignment ??
            CrossAxisAlignment.center;
    final MainAxisAlignment currentRowMainAxisAlignment =
        rowMainAxisAlignment ??
            currentTextStyle.rowMainAxisAlignment ??
            configModel.rowMainAxisAlignment ??
            MainAxisAlignment.start;
    final MainAxisSize currentRowMainAxisSize = rowMainAxisSize ??
        currentTextStyle.rowMainAxisSize ??
        configModel.rowMainAxisSize ??
        MainAxisSize.min;
    final Locale? currentLocale =
        locale ?? currentTextStyle.locale ?? configModel.locale;
    final Paint? currentForeground =
        foreground ?? currentTextStyle.foreground ?? configModel.foreground;
    final Paint? currentBackground =
        background ?? currentTextStyle.background ?? configModel.background;
    final List<Shadow>? currentShadows =
        shadows ?? currentTextStyle.shadows ?? configModel.shadows;
    final bool? currentInherit =
        inherit ?? currentTextStyle.inherit ?? configModel.inherit;
    final String? currentPackage =
        package ?? currentTextStyle.package ?? configModel.package;
    final String? currentSemanticsLabel = semanticsLabel ??
        currentTextStyle.semanticsLabel ??
        configModel.semanticsLabel;
    final List<FontFeature>? currentFontFeatures = fontFeatures ??
        currentTextStyle.fontFeatures ??
        configModel.fontFeatures;
    final List<String>? currentFontFamilyFallback = fontFamilyFallback ??
        currentTextStyle.fontFamilyFallback ??
        configModel.fontFamilyFallback;
    final String? currentFontFamily =
        fontFamily ?? currentTextStyle.fontFamily ?? configModel.fontFamily;
    final String? currentDebugLabel =
        debugLabel ?? currentTextStyle.debugLabel ?? configModel.debugLabel;
    final dynamic currentDecorationColor = decorationColor ??
        currentTextStyle.decorationColor ??
        configModel.decorationColor ??
        COMMON_BLACK_COLOR;

    final dynamic currentBackgroundColor = backgroundColor ??
        currentTextStyle.backgroundColor ??
        configModel.backgroundColor ??
        COMMON_TRANSPARENT_COLOR;

    double _responsiveFontSize() => DEVICE_WIDTH * (currentFontSize / 430);

    // simple text
    final Text simpleText = Text(
      text!,
      style: TextStyle(
        decoration: currentDecoration,
        color: getColorType(currentFontColor),
        decorationThickness:
            decorationThickness ?? currentTextStyle.decorationThickness,
        fontSize: _responsiveFontSize(),
        fontWeight: fontWeight ?? configModel.fontWeight,
        // fontWeight: fontWeight ?? currentTextStyle.fontWeight,
        fontFamily: currentFontFamily,
        wordSpacing: currentWordSpacing,
        fontStyle: currentFontStyle,
        letterSpacing: currentLetterSpacing,
        backgroundColor: getColorType(currentBackground),
        height: currentHeight,
        textBaseline: currentTextBaseline,
        leadingDistribution: currentLeadingDistribution,
        locale: currentLocale,
        foreground: currentForeground,
        background: currentBackground,
        shadows: currentShadows,
        fontFeatures: currentFontFeatures,
        decorationColor: getColorType(currentDecorationColor),
        decorationStyle: currentDecorationStyle,
        debugLabel: currentDebugLabel,
        fontFamilyFallback: currentFontFamilyFallback,
        overflow: currentOverflow,
        inherit: currentInherit!,
        package: currentPackage,
      ),
      locale: currentLocale,
      strutStyle: currentStrutStyle,
      textAlign: currentTextAlign,
      textDirection: currentTextDirection,
      softWrap: currentSoftWrap,
      textScaleFactor: currentTextScaleFactor,
      maxLines: currentMaxLines,
      semanticsLabel: currentSemanticsLabel,
      textWidthBasis: currentTextWidthBasis,
      textHeightBehavior: currentTextHeightBehavior,
      overflow: currentOverflow,
    );

    final dynamic simpleTextContainer = withMargin
        ? Padding(
            padding: getMarginEdgeInsets(
              CommonButtonModel(
                marginTop: currentMarginTop,
                marginBottom: currentMarginBottom,
                marginLeft: currentMarginLeft,
                marginRight: currentMarginRight,
                marginHorizontal: currentMarginHorizontal,
                marginVertical: currentMarginVertical,
                margin: currentMargin ?? 0.0,
              ),
            ),
            child: simpleText,
          )
        : simpleText;

    // richtext with text span
    final Flexible flexibleText = Flexible(
      child: RichText(
        maxLines: currentMaxLines,
        textAlign: currentTextAlign,
        textDirection: currentTextDirection,
        overflow: currentOverflow,
        softWrap: currentSoftWrap,
        strutStyle: currentStrutStyle,
        textHeightBehavior: currentTextHeightBehavior,
        textScaleFactor: currentTextScaleFactor,
        textWidthBasis: currentTextWidthBasis,
        text: TextSpan(
          text: text,
          children: inlineSpans,
          style: TextStyle(
            decoration: currentDecoration,
            color: getColorType(currentFontColor!),
            decorationThickness: currentDecorationThickness,
            fontSize: _responsiveFontSize(),
            fontWeight: currentFontWeight,
            fontFamily: currentFontFamily,
            wordSpacing: currentWordSpacing,
            fontStyle: currentFontStyle,
            letterSpacing: currentLetterSpacing,
            backgroundColor: getColorType(currentBackgroundColor),
            height: currentHeight,
            textBaseline: currentTextBaseline,
            leadingDistribution: currentLeadingDistribution,
            locale: currentLocale,
            foreground: currentForeground,
            background: currentBackground,
            shadows: currentShadows,
            fontFeatures: currentFontFeatures,
            decorationColor: getColorType(currentDecorationColor!),
            decorationStyle: currentDecorationStyle,
            debugLabel: currentDebugLabel,
            fontFamilyFallback: currentFontFamilyFallback,
          ),
        ),
      ),
    );

    // check the text type should render
    final dynamic currentTextType =
        inlineSpans == null ? simpleTextContainer : flexibleText;

    // row container
    final Row row = Row(
      mainAxisSize: currentRowMainAxisSize,
      crossAxisAlignment: currentRowCrossAxisAlignment,
      mainAxisAlignment: currentRowMainAxisAlignment,
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
      crossAxisAlignment: currentColumnCrossAxisAlignment,
      mainAxisSize: currentColumnMainAxisSize,
      mainAxisAlignment: currentColumnMainAxisAlignment,
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

    final CommonTouchable commonTouchable = CommonTouchable(
      onTap: onPress,
      touchEffect: TouchableEffect(
        type: TouchTypes.opacity,
      ),
      child: simpleText,
    );

    if (isSimple) {
      return onPress == null
          ? simpleTextContainer
          : withMargin
              ? Padding(
                  padding: getMarginEdgeInsets(
                    CommonButtonModel(
                      marginTop: currentMarginTop,
                      marginBottom: currentMarginBottom,
                      marginLeft: currentMarginLeft,
                      marginRight: currentMarginRight,
                      marginHorizontal: currentMarginHorizontal,
                      marginVertical: currentMarginVertical,
                      margin: currentMargin ?? 0.0,
                    ),
                  ),
                  child: commonTouchable,
                )
              : commonTouchable;
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
