import '../../index.dart';

class CommonText extends StatelessWidget {
  CommonTextModel? style;
  Function? onPress;
  String? text, iconPath;

  CommonText({
    this.text,
    this.onPress,
    this.iconPath,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonTextModel();
    return GestureDetector(
      onTap: () {
        if (onPress != null) onPress!();
      },
      child: Container(
        padding: getPaddingEdgeInsets(style),
        margin: getMarginEdgeInsets(style),
        decoration: style!.decoration,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            getIcon(iconPath, style),
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
                  style: TextStyle(
                    decoration: style!.textDecoration,
                    color: Color(style!.fontColor!),
                    decorationThickness: style!.decorationThickness,
                    fontWeight: style!.fontweight,
                    fontSize: style!.fontSize,
                    fontFamily: style!.fontFamily,
                    wordSpacing: style!.wordSpacing,
                    fontStyle: style!.fontStyle,
                    letterSpacing: style!.letterSpacing,
                    backgroundColor: Color(style!.backgroundColor!),
                    height: style!.height,
                    textBaseline: style!.textBaseline,
                    leadingDistribution: style!.leadingDistribution,
                    locale: style!.locale,
                    foreground: style!.foreground,
                    background: style!.background,
                    shadows: style!.shadows,
                    fontFeatures: style!.fontFeatures,
                    decorationColor: Color(style!.decorationColor!),
                    decorationStyle: style!.decorationStyle,
                    debugLabel: style!.debugLabel,
                    fontFamilyFallback: style!.fontFamilyFallback,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}