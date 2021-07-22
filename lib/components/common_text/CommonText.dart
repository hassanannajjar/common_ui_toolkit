import 'package:flutter_svg/flutter_svg.dart';

import '../../index.dart';

class CommonText extends StatelessWidget {
  CommonTextStyle? style;
  Styles? iconStyle;

  Function? onPress;

  String? text, iconPath;

  CommonText({
    this.text,
    this.onPress,
    this.iconPath,
    this.style,
    this.iconStyle,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonTextStyles().defaultStyle;
    iconStyle = iconStyle ?? IconStyles().defaultStyle;
    return GestureDetector(
      onTap: () {
        if (onPress != null) onPress!();
      },
      child: Padding(
        padding: getMarginEdgeInsets(style),
        child: Container(
          padding: getPaddingEdgeInsets(style),
          decoration: getBoxDecoration(),
          child: RichText(
            textAlign: style!.textAlign,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: getIcon(),
                ),
                TextSpan(
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  getBoxDecoration() {
    if (style!.customUnderlined!) {
      return BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(style!.underLineColor!),
            width: style!.underlineThikness!,
          ),
        ),
      );
    }
    return null;
  }

  getIcon() {
    if (iconPath != null) {
      return Padding(
        padding: EdgeInsets.only(
          right: iconStyle!.paddingRight!,
          left: iconStyle!.paddingLeft!,
        ),
        child: iconPath!.contains('png')
            ? Image.asset(iconPath!)
            : SvgPicture.asset(
                iconPath!,
                width: iconStyle!.width,
                height: iconStyle!.height,
                color: iconStyle!.backgroundColor.runtimeType == int
                    ? Color(iconStyle!.color!)
                    : null,
              ),
      );
    } else {
      return Padding(padding: EdgeInsets.zero);
    }
  }
}
