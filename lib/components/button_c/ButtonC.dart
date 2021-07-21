import '../../index.dart';

class ButtonC extends StatelessWidget {
  Styles style;
  Function onPress;
  String text;
  ButtonController buttonController;

  ButtonC({
    this.style,
    this.buttonController,
    this.text = "Test",
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? ButtonCStyles().defaultStyle;
    buttonController = buttonController ?? ButtonController();

    return GetBuilder<ButtonController>(
      init: buttonController,
      global: false,
      builder: (controller) => Padding(
        padding: style.getMarginEdgeInsets(),
        child: SizedBox(
          width: style.width,
          child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                overlayColor: style.withEffect
                    ? MaterialStateProperty.resolveWith(
                        (states) {
                          return states.contains(MaterialState.pressed)
                              ? Colors.black12
                              : null;
                        },
                      )
                    : null,
                backgroundColor: MaterialStateProperty.all(Color(
                    controller.isEnabled
                        ? style.backgroundColor
                        : DISABLED_COLOR)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(style.borderRaduis),
                  side: BorderSide(
                      color: Color(controller.isEnabled
                          ? style.raduisColor
                          : DISABLED_COLOR)),
                ))),
            onPressed: controller.isEnabled
                ? () {
                    if (onPress != null) {
                      onPress();
                    }
                  }
                : null,
            child: Padding(
              padding: style.getPaddingEdgeInsets(),
              child: TypographyC(
                style: TypographyCStyles().defaultStyle.copyWith(
                    fontSize: style.fontSize, fontColor: style.fontColor),
                text: text,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
