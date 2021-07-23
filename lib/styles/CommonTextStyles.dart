import '../index.dart';

class CommonTextStyles {
  CommonTextStyle defaultStyle() => CommonTextStyle(
        fontColor: BLACK_COLOR,
        fontSize: H4_FONT,
        fontweight: FontWeight.normal,
        textDecoration: TextDecoration.none,
        iconWidth: 20.0,
        iconHeight: 20.0,
        iconMarginHorizontal: 10.0,
        iconColor: BLACK_COLOR,
      );

  CommonTextStyle largeStyle() => CommonTextStyle(
        fontSize: H2_FONT,
        fontweight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      );

  CommonTextStyle decoratedStyle() => CommonTextStyle(
        padding: 12.0,
        decoration: BoxDecoration(
          color: Color(RED_COLOR),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      );
}
