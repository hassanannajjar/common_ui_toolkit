import '../../../common_ui_toolkit.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    this.buttonStyle,
    this.containerStyle,
    this.text = 'Click',
    this.onPress,
    this.onLongPress,
    this.child,
    this.isEnable,
    this.autofocus,
    this.backgroundColor,
    this.customBackgroundColor,
    this.onFocusChange,
    this.onHover,
    this.disabledColor,
    this.overlayColor,
    this.customOverlayColor,
    this.customElevation,
    this.elevation,
    this.borderRadius,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.shape,
    this.fixedSize,
    this.enableFeedback,
    this.animationDuration,
    this.maximumSize,
    this.minimumSize,
    this.mouseCursor,
    this.padding,
    this.splashFactory,
    this.side,
    this.tapTargetSize,
    this.shadowColor,
    this.textStyle,
    this.visualDensity,
    this.focusNode,
    this.foregroundColor,
    this.clipBehavior,
    this.alignment,
    this.textContainerStyle,
    Key? key,
  }) : super(key: key);

  final CommonButtonStyle? buttonStyle;
  final CommonContainerModel? containerStyle;
  final CommonContainerModel? textContainerStyle;
  final CommonTextModel? textStyle;
  final Function? onPress;
  final Function? onLongPress;
  final String? text;
  final Widget? child;

  final bool? isEnable;

  /// The [autofocus] and [clipBehavior] arguments must not be null.
  final bool? autofocus;

  /// Colors
  final dynamic backgroundColor;
  final dynamic disabledColor;
  final dynamic overlayColor;

  /// The highlight color that's typically used to indicate that
  /// the button is focused, hovered, or pressed.
  final MaterialStateProperty<Color?>? customOverlayColor;

  /// You can customize The elevation of the button's [Material].
  final MaterialStateProperty<double?>? customElevation;

  /// The button's background fill color.
  final MaterialStateProperty<Color?>? customBackgroundColor;

  /// The shape of the button's underlying [Material].
  ///
  /// This shape is combined with [side] to create a shape decorated
  /// with an outline.
  final MaterialStateProperty<OutlinedBorder?>? shape;

  ///
  /// radius
  ///
  final double? bottomLeftRadius;
  final double? bottomRightRadius;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? borderRadius;

  ///
  /// default elevation
  ///
  final double? elevation;

  ///
  /// alignment
  ///
  final AlignmentGeometry? alignment;

  ///
  /// animationDuration
  ///
  final Duration? animationDuration;

  ///
  /// enableFeedback
  ///
  final bool? enableFeedback;

  ///
  /// fixedSize
  ///
  final MaterialStateProperty<Size?>? fixedSize;

  ///
  /// foregroundColor
  ///
  final MaterialStateProperty<Color?>? foregroundColor;

  ///
  /// maximumSize
  ///
  final MaterialStateProperty<Size?>? maximumSize;

  ///
  /// minimumSize
  ///
  final MaterialStateProperty<Size?>? minimumSize;

  ///
  /// mouseCursor
  ///
  final MaterialStateProperty<MouseCursor?>? mouseCursor;

  ///
  /// onFocusChange
  ///
  final ValueChanged<bool>? onFocusChange;

  ///
  /// onHover
  ///
  final ValueChanged<bool>? onHover;

  ///
  /// padding
  ///
  final MaterialStateProperty<EdgeInsetsGeometry?>? padding;

  ///
  /// shadowColor
  ///
  final MaterialStateProperty<Color?>? shadowColor;

  ///
  /// side
  ///
  final MaterialStateProperty<BorderSide?>? side;

  ///
  /// splashFactory
  ///
  final InteractiveInkFeatureFactory? splashFactory;

  ///
  /// tapTargetSize
  ///
  final MaterialTapTargetSize? tapTargetSize;

  ///
  /// visualDensity
  ///
  final VisualDensity? visualDensity;

  ///
  /// clipBehavior
  ///
  final Clip? clipBehavior;

  ///
  /// focusNode
  ///
  final FocusNode? focusNode;

  ///
  /// key
  ///

  ///
  /// get border Radius.
  ///
  dynamic getBorderRadius() => borderRadius == null
      ? null
      : BorderRadius.only(
          topRight:
              Radius.circular((topRightRadius ?? borderRadius!) * DEVICE_WIDTH),
          topLeft:
              Radius.circular(topLeftRadius ?? borderRadius! * DEVICE_WIDTH),
          bottomLeft:
              Radius.circular(bottomLeftRadius ?? borderRadius! * DEVICE_WIDTH),
          bottomRight: Radius.circular(
            bottomRightRadius ?? borderRadius! * DEVICE_WIDTH,
          ),
        );

  @override
  Widget build(BuildContext context) {
    final CommonButtonStyle currentStyle = buttonStyle ?? CommonButtonStyle();

    return CommonContainer(
      onPress: () {},
      style: containerStyle ?? currentStyle.containerStyle,
      child: ElevatedButton(
        onFocusChange: onFocusChange ?? currentStyle.style!.onFocusChange,
        onHover: onHover ?? currentStyle.style!.onHover,
        autofocus: autofocus ?? currentStyle.style!.autofocus,
        clipBehavior: clipBehavior ?? currentStyle.style!.clipBehavior,
        focusNode: focusNode ?? currentStyle.style!.focusNode,
        key: key ?? currentStyle.style!.key,
        onLongPress: (currentStyle.style!.isEnable)
            ? () {
                onLongPress?.call();
              }
            : null,
        style: ButtonStyle(
          alignment: alignment ?? currentStyle.style!.alignment,
          animationDuration:
              animationDuration ?? currentStyle.style!.animationDuration,
          enableFeedback: enableFeedback ?? currentStyle.style!.enableFeedback,
          fixedSize: fixedSize ?? currentStyle.style!.fixedSize,
          foregroundColor:
              foregroundColor ?? currentStyle.style!.foregroundColor,
          maximumSize: maximumSize ?? currentStyle.style!.maximumSize,
          minimumSize: minimumSize ?? currentStyle.style!.minimumSize,
          mouseCursor: mouseCursor ?? currentStyle.style!.mouseCursor,
          padding: padding ?? currentStyle.style!.padding,
          shadowColor: shadowColor ?? currentStyle.style!.shadowColor,
          side: side ?? currentStyle.style!.side,
          splashFactory: splashFactory ?? currentStyle.style!.splashFactory,
          tapTargetSize: tapTargetSize ?? currentStyle.style!.tapTargetSize,
          visualDensity: visualDensity ?? currentStyle.style!.visualDensity,
          elevation: customElevation ??
              currentStyle.style!.customElevation ??
              MaterialStateProperty.all(
                elevation ?? currentStyle.style!.elevation,
              ),
          overlayColor: customOverlayColor ??
              currentStyle.style!.customOverlayColor ??
              MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
                  return states.contains(MaterialState.pressed)
                      ? getColorType(
                          overlayColor ?? currentStyle.style!.overlayColor,
                        )
                      : null;
                },
              ),
          backgroundColor: customBackgroundColor ??
              currentStyle.style!.customBackgroundColor ??
              MaterialStateProperty.all(
                isEnable ?? currentStyle.style!.isEnable
                    ? getColorType(
                        backgroundColor ?? currentStyle.style!.backgroundColor!,
                      )
                    : getColorType(
                        disabledColor ?? currentStyle.style!.disabledColor!,
                      ),
              ),
          shape: shape ??
              currentStyle.style!.shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: getBorderRadius() ??
                      currentStyle.style!.getBorderRadius(),
                ),
              ),
        ),
        // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
        onPressed: (isEnable ?? currentStyle.style!.isEnable)
            ? () {
                onPress?.call();
              }
            : null,
        child: child ??
            CommonText(
              containerStyle:
                  textContainerStyle ?? currentStyle.textContainerStyle,
              text: text,
              style: textStyle ?? currentStyle.textStyle,
            ),
      ),
    );
  }
}
