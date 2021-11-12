import '../../index.dart';

class CommonButton extends StatelessWidget {
  CommonButtonModel? style;
  CommonContainerModel? containerStyle;
  CommonTextModel? textStyle;
  Function? onPress;
  String? text;
  Widget? child;

  CommonButton({
    this.style,
    this.containerStyle,
    this.textStyle,
    this.text = 'Click',
    this.onPress,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonButtonModel();
    containerStyle = containerStyle ?? CommonContainerModel();
    textStyle = textStyle ?? CommonTextModel();

    return CommonContainer(
      style: containerStyle,
      onPress: () {},
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: style!.customElevation ??
              MaterialStateProperty.all(
                style!.elevation,
              ),
          overlayColor: style!.customOverlayColor ??
              MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? getColorType(style!.overlayColor)
                      : null;
                },
              ),
          backgroundColor: style!.cutomBackgroundColor ??
              MaterialStateProperty.all(
                style!.isEnable
                    ? getColorType(style!.backgroundColor!)
                    : getColorType(style!.disabledColor!),
              ),
          shape: style!.shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: style!.getBorderRadius(),
                ),
              ),
        ),
        // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
        onPressed: (style!.isEnable)
            ? () {
                if (onPress != null) {
                  onPress!();
                }
              }
            : null,
        child: child ??
            CommonText(
              text: text,
              style: textStyle,
            ),
      ),
    );
  }
}
