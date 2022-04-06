import '../../index.dart';

class CommonText extends StatelessWidget {
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
  final CommonContainerModel? containerStyle;

  /// handel opPress function
  final Function? onPress;

  /// text
  final String? text;

  final List<InlineSpan>? inlineSpans;

  /// left, right, top and bottom children widgets around the common text
  final Widget? leftChild, rightChild, topChild, bottomChild;

  const CommonText({
    this.text,
    this.onPress,
    this.leftChild,
    this.rightChild,
    this.topChild,
    this.bottomChild,
    this.inlineSpans,
    this.style,
    this.containerStyle,
  });

  @override
  Widget build(BuildContext context) {
    CommonTextModel? defaultStyle = CommonTextModel();

    CommonContainerModel? defaultContainerStyle = CommonContainerModel();

    return CommonContainer(
      onPress: onPress,
      style: containerStyle ?? defaultContainerStyle,
      child: Column(
        crossAxisAlignment: (style ?? defaultStyle).columnCrossAxisAlignemnt,
        mainAxisSize: (style ?? defaultStyle).columnMainAxisSize,
        mainAxisAlignment: (style ?? defaultStyle).columnMainAxisAlignemnt,
        children: [
          if (topChild != null) topChild!,
          Row(
            mainAxisSize: (style ?? defaultStyle).rowMainAxisSize,
            crossAxisAlignment: (style ?? defaultStyle).rowCrossAxisAlignemnt,
            mainAxisAlignment: (style ?? defaultStyle).rowMainAxisAlignemnt,
            children: [
              if ((style ?? defaultStyle).prefixIcon != null)
                getIcon((style ?? defaultStyle).prefixIcon!),
              if (leftChild != null) leftChild!,
              Flexible(
                child: RichText(
                  maxLines: (style ?? defaultStyle).maxlines,
                  textAlign: (style ?? defaultStyle).textAlign,
                  textDirection: (style ?? defaultStyle).textDirection,
                  overflow: (style ?? defaultStyle).overflow,
                  softWrap: (style ?? defaultStyle).softWrap,
                  strutStyle: (style ?? defaultStyle).strutStyle,
                  textHeightBehavior:
                      (style ?? defaultStyle).textHeightBehavior,
                  textScaleFactor: (style ?? defaultStyle).textScaleFactor,
                  textWidthBasis: (style ?? defaultStyle).textWidthBasis,
                  text: TextSpan(
                    text: text,
                    children: inlineSpans,
                    style: TextStyle(
                      decoration: (style ?? defaultStyle).decoration,
                      color: getColorType((style ?? defaultStyle).fontColor!),
                      decorationThickness:
                          (style ?? defaultStyle).decorationThickness,
                      fontSize: (style ?? defaultStyle).responsiveFontSize(),
                      fontWeight: (style ?? defaultStyle).fontWeight,
                      fontFamily: (style ?? defaultStyle).fontFamily,
                      wordSpacing: (style ?? defaultStyle).wordSpacing,
                      fontStyle: (style ?? defaultStyle).fontStyle,
                      letterSpacing: (style ?? defaultStyle).letterSpacing,
                      backgroundColor: getColorType(
                          (style ?? defaultStyle).backgroundColor!),
                      height: (style ?? defaultStyle).height,
                      textBaseline: (style ?? defaultStyle).textBaseline,
                      leadingDistribution:
                          (style ?? defaultStyle).leadingDistribution,
                      locale: (style ?? defaultStyle).locale,
                      foreground: (style ?? defaultStyle).foreground,
                      background: (style ?? defaultStyle).background,
                      shadows: (style ?? defaultStyle).shadows,
                      fontFeatures: (style ?? defaultStyle).fontFeatures,
                      decorationColor: getColorType(
                          (style ?? defaultStyle).decorationColor!),
                      decorationStyle: (style ?? defaultStyle).decorationStyle,
                      debugLabel: (style ?? defaultStyle).debugLabel,
                      fontFamilyFallback:
                          (style ?? defaultStyle).fontFamilyFallback,
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
