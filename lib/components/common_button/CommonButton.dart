import '../../index.dart';

class CommonButton extends StatelessWidget {
  CommonButtonStyle? buttonStyle;
  Function? onPress, onLongPress;
  String? text;
  Widget? child;

  CommonButton({
    this.buttonStyle,
    this.text = 'Click',
    this.onPress,
    this.onLongPress,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    buttonStyle = buttonStyle ?? CommonButtonStyle();

    return CommonContainer(
      style: buttonStyle!.containerStyle,
      onPress: () {},
      child: ElevatedButton(
        onFocusChange: buttonStyle!.style!.onFocusChange,
        onHover: buttonStyle!.style!.onHover,
        autofocus: buttonStyle!.style!.autofocus,
        clipBehavior: buttonStyle!.style!.clipBehavior,
        focusNode: buttonStyle!.style!.focusNode,
        key: buttonStyle!.style!.key,
        onLongPress: (buttonStyle!.style!.isEnable && onLongPress != null)
            ? () {
                onLongPress!();
              }
            : null,
        style: ButtonStyle(
          alignment: buttonStyle!.style!.alignment,
          animationDuration: buttonStyle!.style!.animationDuration,
          enableFeedback: buttonStyle!.style!.enableFeedback,
          fixedSize: buttonStyle!.style!.fixedSize,
          foregroundColor: buttonStyle!.style!.foregroundColor,
          maximumSize: buttonStyle!.style!.maximumSize,
          minimumSize: buttonStyle!.style!.minimumSize,
          mouseCursor: buttonStyle!.style!.mouseCursor,
          padding: buttonStyle!.style!.padding,
          shadowColor: buttonStyle!.style!.shadowColor,
          side: buttonStyle!.style!.side,
          splashFactory: buttonStyle!.style!.splashFactory,
          tapTargetSize: buttonStyle!.style!.tapTargetSize,
          textStyle: buttonStyle!.style!.textStyle,
          visualDensity: buttonStyle!.style!.visualDensity,
          elevation: buttonStyle!.style!.customElevation ??
              MaterialStateProperty.all(
                buttonStyle!.style!.elevation,
              ),
          overlayColor: buttonStyle!.style!.customOverlayColor ??
              MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? getColorType(buttonStyle!.style!.overlayColor)
                      : null;
                },
              ),
          backgroundColor: buttonStyle!.style!.cutomBackgroundColor ??
              MaterialStateProperty.all(
                buttonStyle!.style!.isEnable
                    ? getColorType(buttonStyle!.style!.backgroundColor!)
                    : getColorType(buttonStyle!.style!.disabledColor!),
              ),
          shape: buttonStyle!.style!.shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: buttonStyle!.style!.getBorderRadius(),
                ),
              ),
        ),
        // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
        onPressed: (buttonStyle!.style!.isEnable)
            ? () {
                if (onPress != null) {
                  onPress!();
                }
              }
            : null,
        child: child ??
            CommonText(
              containerStyle: buttonStyle!.textContainerStyle,
              text: text,
              style: buttonStyle!.textStyle,
            ),
      ),
    );
  }
}
