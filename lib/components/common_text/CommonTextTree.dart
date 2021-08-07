import '../../index.dart';

/// This function renders the children of the common text
renderCommonTextTree(
  topChild,
  rightChild,
  bottomChild,
  leftChild,
  iconPath,
  style,
  text,
  inlineSpans,
) =>
    Column(
      children: [
        if (topChild != null) topChild!,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            getIcon(iconPath, style),
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
            if (rightChild != null) rightChild!,
          ],
        ),
        if (bottomChild != null) bottomChild!,
      ],
    );
