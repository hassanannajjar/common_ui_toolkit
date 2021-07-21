import 'package:flutter_svg/flutter_svg.dart';

import '../../index.dart';

class TypographyC extends StatelessWidget {
  Function onPress;

  String text;
  String iconPath;

  Styles style;
  Styles iconStyle;

  TypographyC({
    @required this.text,
    this.onPress,
    this.iconPath,
    this.style,
    this.iconStyle,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? TypographyCStyles().defaultStyle;
    iconStyle = iconStyle ?? IconStyles().defaultStyle;

    return GestureDetector(
      onTap: onPress,
      child: Padding(
          padding: style.getMarginEdgeInsets(),
          child: Container(
            padding: style.getPaddingEdgeInsets(),
            decoration: getBoxDecoration(),
            child: RichText(
              textAlign: style.textAlign,
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
                      decoration: style.textDecoration,
                      color: Color(style.fontColor),
                      decorationThickness: 3,
                      fontWeight: style.fontweight,
                      fontSize: style.fontSize,
                      fontFamily: style.fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  BoxDecoration getBoxDecoration() {
    if (style.customUnderlined) {
      return BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Color(style.underLineColor),
        width: style.underlineThikness, // Underline thickness
      )));
    }
    return null;
  }

  Widget getIcon() {
    if (iconPath != null) {
      return Padding(
        padding: EdgeInsets.only(
            right: iconStyle.iconPaddingRight, left: iconStyle.iconPaddingLeft),
        child: iconPath.contains('png')
            ? Image.asset(iconPath)
            : SvgPicture.asset(
                iconPath,
                width: iconStyle.width ?? iconStyle.width,
                height: iconStyle.height ?? iconStyle.height,
                color: iconStyle.svgColor.runtimeType == int
                    ? Color(iconStyle.svgColor)
                    : null,
              ),
      );
    } else {
      return Padding(padding: EdgeInsets.zero);
    }
  }
}
