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
  CommonTextModel? style;
  CommonContainerModel? containerStyle;

  /// handel opPress function
  Function? onPress;

  /// text
  String? text;

  List<InlineSpan>? inlineSpans;

  /// left, right, top and bottom children widgets around the common text
  Widget? leftChild, rightChild, topChild, bottomChild;

  CommonText({
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
    style = style ?? CommonTextModel();
    containerStyle = containerStyle ?? CommonContainerModel();
    return CommonContainer(
      onPress: onPress,
      style: containerStyle,
      child: Column(
        crossAxisAlignment: style!.columnCrossAxisAlignemnt,
        mainAxisSize: style!.columnMainAxisSize,
        mainAxisAlignment: style!.columnMainAxisAlignemnt,
        children: [
          if (topChild != null) topChild!,
          Row(
            mainAxisSize: style!.rowMainAxisSize,
            crossAxisAlignment: style!.rowCrossAxisAlignemnt,
            mainAxisAlignment: style!.rowMainAxisAlignemnt,
            children: [
              if (style!.prefixIcon != null) getIcon(style!.prefixIcon!),
              if (leftChild != null) leftChild!,
              Flexible(
                child: RichText(
                  maxLines: style!.maxlines,
                  textAlign: style!.textAlign,
                  textDirection: style!.textDirection,
                  overflow: style!.overflow,
                  softWrap: style!.softWrap,
                  strutStyle: style!.strutStyle,
                  textHeightBehavior: style!.textHeightBehavior,
                  textScaleFactor: style!.textScaleFactor,
                  textWidthBasis: style!.textWidthBasis,
                  text: TextSpan(
                    text: text,
                    children: inlineSpans,
                    style: TextStyle(
                      decoration: style!.decoration,
                      color: getColorType(style!.fontColor!),
                      decorationThickness: style!.decorationThickness,
                      fontWeight: style!.fontWeight,
                      fontSize: style!.fontSize,
                      fontFamily: style!.fontFamily,
                      wordSpacing: style!.wordSpacing,
                      fontStyle: style!.fontStyle,
                      letterSpacing: style!.letterSpacing,
                      backgroundColor: getColorType(style!.backgroundColor!),
                      height: style!.height,
                      textBaseline: style!.textBaseline,
                      leadingDistribution: style!.leadingDistribution,
                      locale: style!.locale,
                      foreground: style!.foreground,
                      background: style!.background,
                      shadows: style!.shadows,
                      fontFeatures: style!.fontFeatures,
                      decorationColor: getColorType(style!.decorationColor!),
                      decorationStyle: style!.decorationStyle,
                      debugLabel: style!.debugLabel,
                      fontFamilyFallback: style!.fontFamilyFallback,
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
