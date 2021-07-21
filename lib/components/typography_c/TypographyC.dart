import 'package:flutter_svg/flutter_svg.dart';

import '../../index.dart';

class TypographyC extends StatelessWidget {
  TypographyStyle? style;
  Styles? iconStyle;

  Function? onPress;

  String? text, iconPath;

  TypographyC({
    this.text,
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
      onTap: () {
        if (onPress != null) onPress!();
      },
      child: Padding(
        padding: style!.getMarginEdgeInsets(),
        child: Container(
          padding: style!.getPaddingEdgeInsets(),
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
                    decorationThickness: 3,
                    fontWeight: style!.fontweight,
                    fontSize: style!.fontSize,
                    fontFamily: style!.fontFamily,
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
      return Center();
    }
  }
}
