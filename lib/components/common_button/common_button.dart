import '../../common_ui_toolkit.dart';

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
    final CommonButtonStyle defaultButtonStyle = CommonButtonStyle();

    return CommonContainer(
      onPress: () {},
      style:
          containerStyle ?? (buttonStyle ?? defaultButtonStyle).containerStyle,
      child: ElevatedButton(
        onFocusChange: onFocusChange ??
            (buttonStyle ?? defaultButtonStyle).style!.onFocusChange,
        onHover: onHover ?? (buttonStyle ?? defaultButtonStyle).style!.onHover,
        autofocus:
            autofocus ?? (buttonStyle ?? defaultButtonStyle).style!.autofocus,
        clipBehavior: clipBehavior ??
            (buttonStyle ?? defaultButtonStyle).style!.clipBehavior,
        focusNode:
            focusNode ?? (buttonStyle ?? defaultButtonStyle).style!.focusNode,
        key: key ?? (buttonStyle ?? defaultButtonStyle).style!.key,
        onLongPress: ((buttonStyle ?? defaultButtonStyle).style!.isEnable)
            ? () {
                onLongPress?.call();
              }
            : null,
        style: ButtonStyle(
          alignment:
              alignment ?? (buttonStyle ?? defaultButtonStyle).style!.alignment,
          animationDuration: animationDuration ??
              (buttonStyle ?? defaultButtonStyle).style!.animationDuration,
          enableFeedback: enableFeedback ??
              (buttonStyle ?? defaultButtonStyle).style!.enableFeedback,
          fixedSize:
              fixedSize ?? (buttonStyle ?? defaultButtonStyle).style!.fixedSize,
          foregroundColor: foregroundColor ??
              (buttonStyle ?? defaultButtonStyle).style!.foregroundColor,
          maximumSize: maximumSize ??
              (buttonStyle ?? defaultButtonStyle).style!.maximumSize,
          minimumSize: minimumSize ??
              (buttonStyle ?? defaultButtonStyle).style!.minimumSize,
          mouseCursor: mouseCursor ??
              (buttonStyle ?? defaultButtonStyle).style!.mouseCursor,
          padding:
              padding ?? (buttonStyle ?? defaultButtonStyle).style!.padding,
          shadowColor: shadowColor ??
              (buttonStyle ?? defaultButtonStyle).style!.shadowColor,
          side: side ?? (buttonStyle ?? defaultButtonStyle).style!.side,
          splashFactory: splashFactory ??
              (buttonStyle ?? defaultButtonStyle).style!.splashFactory,
          tapTargetSize: tapTargetSize ??
              (buttonStyle ?? defaultButtonStyle).style!.tapTargetSize,
          visualDensity: visualDensity ??
              (buttonStyle ?? defaultButtonStyle).style!.visualDensity,
          elevation: customElevation ??
              (buttonStyle ?? defaultButtonStyle).style!.customElevation ??
              MaterialStateProperty.all(
                elevation ??
                    (buttonStyle ?? defaultButtonStyle).style!.elevation,
              ),
          overlayColor: customOverlayColor ??
              (buttonStyle ?? defaultButtonStyle).style!.customOverlayColor ??
              MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
                  return states.contains(MaterialState.pressed)
                      ? getColorType(
                          overlayColor ??
                              (buttonStyle ?? defaultButtonStyle)
                                  .style!
                                  .overlayColor,
                        )
                      : null;
                },
              ),
          backgroundColor: customBackgroundColor ??
              (buttonStyle ?? defaultButtonStyle)
                  .style!
                  .customBackgroundColor ??
              MaterialStateProperty.all(
                isEnable ?? (buttonStyle ?? defaultButtonStyle).style!.isEnable
                    ? getColorType(
                        backgroundColor ??
                            (buttonStyle ?? defaultButtonStyle)
                                .style!
                                .backgroundColor!,
                      )
                    : getColorType(
                        disabledColor ??
                            (buttonStyle ?? defaultButtonStyle)
                                .style!
                                .disabledColor!,
                      ),
              ),
          shape: shape ??
              (buttonStyle ?? defaultButtonStyle).style!.shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: getBorderRadius() ??
                      (buttonStyle ?? defaultButtonStyle)
                          .style!
                          .getBorderRadius(),
                ),
              ),
        ),
        // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
        onPressed:
            (isEnable ?? (buttonStyle ?? defaultButtonStyle).style!.isEnable)
                ? () {
                    onPress?.call();
                  }
                : null,
        child: child ??
            CommonText(
              containerStyle: textContainerStyle ??
                  (buttonStyle ?? defaultButtonStyle).textContainerStyle,
              text: text,
              style: textStyle ?? (buttonStyle ?? defaultButtonStyle).textStyle,
            ),
      ),
    );
  }
}
