import '../../index.dart';

class CommonButton extends StatelessWidget {
  CommonButtonModel? style;
  CommonContainerModel? containerStyle;
  CommonContainerModel? textContainerStyle;
  CommonTextModel? textStyle;
  Function? onPress, onLongPress;
  String? text;
  Widget? child;

  CommonButton({
    this.style,
    this.containerStyle,
    this.textContainerStyle,
    this.textStyle,
    this.text = 'Click',
    this.onPress,
    this.onLongPress,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonButtonModel();
    containerStyle = containerStyle ?? CommonContainerModel();
    textContainerStyle = textContainerStyle ?? CommonContainerModel();
    textStyle = textStyle ?? CommonTextModel();

    return CommonContainer(
      style: containerStyle,
      onPress: () {},
      child: ElevatedButton(
        onFocusChange: style!.onFocusChange,
        onHover: style!.onHover,
        autofocus: style!.autofocus,
        clipBehavior: style!.clipBehavior,
        focusNode: style!.focusNode,
        key: style!.key,
        onLongPress: (style!.isEnable && onLongPress != null)
            ? () {
                onLongPress!();
              }
            : null,
        style: ButtonStyle(
          alignment: style!.alignment,
          animationDuration: style!.animationDuration,
          enableFeedback: style!.enableFeedback,
          fixedSize: style!.fixedSize,
          foregroundColor: style!.foregroundColor,
          maximumSize: style!.maximumSize,
          minimumSize: style!.minimumSize,
          mouseCursor: style!.mouseCursor,
          padding: style!.padding,
          shadowColor: style!.shadowColor,
          side: style!.side,
          splashFactory: style!.splashFactory,
          tapTargetSize: style!.tapTargetSize,
          textStyle: style!.textStyle,
          visualDensity: style!.visualDensity,
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
              containerStyle: textContainerStyle,
              text: text,
              style: textStyle,
            ),
      ),
    );
  }
}
