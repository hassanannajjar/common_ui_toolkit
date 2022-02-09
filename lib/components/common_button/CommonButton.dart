import '../../index.dart';

class CommonButton extends StatelessWidget {
  final CommonButtonStyle? buttonStyle;
  final Function? onPress, onLongPress;
  final String? text;
  final Widget? child;

  const CommonButton({
    this.buttonStyle,
    this.text = 'Click',
    this.onPress,
    this.onLongPress,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    CommonButtonStyle? defaultButtonStyle = CommonButtonStyle();

    return CommonContainer(
      style: (buttonStyle ?? defaultButtonStyle).containerStyle,
      onPress: () {},
      child: ElevatedButton(
        onFocusChange: (buttonStyle ?? defaultButtonStyle).style!.onFocusChange,
        onHover: (buttonStyle ?? defaultButtonStyle).style!.onHover,
        autofocus: (buttonStyle ?? defaultButtonStyle).style!.autofocus,
        clipBehavior: (buttonStyle ?? defaultButtonStyle).style!.clipBehavior,
        focusNode: (buttonStyle ?? defaultButtonStyle).style!.focusNode,
        key: (buttonStyle ?? defaultButtonStyle).style!.key,
        onLongPress: ((buttonStyle ?? defaultButtonStyle).style!.isEnable &&
                onLongPress != null)
            ? () {
                onLongPress!();
              }
            : null,
        style: ButtonStyle(
          alignment: (buttonStyle ?? defaultButtonStyle).style!.alignment,
          animationDuration:
              (buttonStyle ?? defaultButtonStyle).style!.animationDuration,
          enableFeedback:
              (buttonStyle ?? defaultButtonStyle).style!.enableFeedback,
          fixedSize: (buttonStyle ?? defaultButtonStyle).style!.fixedSize,
          foregroundColor:
              (buttonStyle ?? defaultButtonStyle).style!.foregroundColor,
          maximumSize: (buttonStyle ?? defaultButtonStyle).style!.maximumSize,
          minimumSize: (buttonStyle ?? defaultButtonStyle).style!.minimumSize,
          mouseCursor: (buttonStyle ?? defaultButtonStyle).style!.mouseCursor,
          padding: (buttonStyle ?? defaultButtonStyle).style!.padding,
          shadowColor: (buttonStyle ?? defaultButtonStyle).style!.shadowColor,
          side: (buttonStyle ?? defaultButtonStyle).style!.side,
          splashFactory:
              (buttonStyle ?? defaultButtonStyle).style!.splashFactory,
          tapTargetSize:
              (buttonStyle ?? defaultButtonStyle).style!.tapTargetSize,
          textStyle: (buttonStyle ?? defaultButtonStyle).style!.textStyle,
          visualDensity:
              (buttonStyle ?? defaultButtonStyle).style!.visualDensity,
          elevation:
              (buttonStyle ?? defaultButtonStyle).style!.customElevation ??
                  MaterialStateProperty.all(
                    (buttonStyle ?? defaultButtonStyle).style!.elevation,
                  ),
          overlayColor:
              (buttonStyle ?? defaultButtonStyle).style!.customOverlayColor ??
                  MaterialStateProperty.resolveWith(
                    (states) {
                      return states.contains(MaterialState.pressed)
                          ? getColorType((buttonStyle ?? defaultButtonStyle)
                              .style!
                              .overlayColor)
                          : null;
                    },
                  ),
          backgroundColor:
              (buttonStyle ?? defaultButtonStyle).style!.cutomBackgroundColor ??
                  MaterialStateProperty.all(
                    (buttonStyle ?? defaultButtonStyle).style!.isEnable
                        ? getColorType((buttonStyle ?? defaultButtonStyle)
                            .style!
                            .backgroundColor!)
                        : getColorType((buttonStyle ?? defaultButtonStyle)
                            .style!
                            .disabledColor!),
                  ),
          shape: (buttonStyle ?? defaultButtonStyle).style!.shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: (buttonStyle ?? defaultButtonStyle)
                      .style!
                      .getBorderRadius(),
                ),
              ),
        ),
        // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
        onPressed: ((buttonStyle ?? defaultButtonStyle).style!.isEnable)
            ? () {
                if (onPress != null) {
                  onPress!();
                }
              }
            : null,
        child: child ??
            CommonText(
              containerStyle:
                  (buttonStyle ?? defaultButtonStyle).textContainerStyle,
              text: text,
              style: (buttonStyle ?? defaultButtonStyle).textStyle,
            ),
      ),
    );
  }
}
