import '../../../common_ui_toolkit.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    this.buttonStyle,
    this.containerStyle,
    this.text = 'Click',
    this.onPress,
    this.onLongPress,
    this.child,
    this.disable = false,
    this.autofocus = false,
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
    @Deprecated('Use disable ') this.isEnable,
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

  final bool disable;
  final bool? isEnable;

  /// The [autofocus] and [clipBehavior] arguments must not be null.
  final bool autofocus;

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
  /// check if the border is null or not.
  ///
  bool _checkBorderNull() {
    const CommonButtonModel currentStyle = CommonButtonModel();

    return (topLeftRadius ?? currentStyle.topLeftRadius) != null ||
        (topRightRadius ?? currentStyle.topRightRadius) != null ||
        (bottomLeftRadius ?? currentStyle.bottomLeftRadius) != null ||
        (bottomRightRadius ?? currentStyle.bottomRightRadius) != null;
  }

  ///
  /// get responsive border radius.
  ///
  dynamic _getResponsiveBorderRadius(num value) => DEVICE_WIDTH * value;

  ///
  /// get border Radius.
  ///
  BorderRadius? _getBorderRadius() {
    const CommonButtonModel currentStyle = CommonButtonModel();
    final double getBorderRadius = borderRadius ?? currentStyle.borderRadius!;

    final double borderTopRightRadius = topRightRadius ??
        borderRadius ??
        currentStyle.topRightRadius ??
        currentStyle.borderRadius!;

    final double borderTopLeftRadius = topLeftRadius ??
        borderRadius ??
        currentStyle.topLeftRadius ??
        currentStyle.borderRadius!;

    final double borderBottomLeftRadius = bottomLeftRadius ??
        borderRadius ??
        currentStyle.bottomLeftRadius ??
        currentStyle.borderRadius!;

    final double borderBottomRightRadius = bottomRightRadius ??
        borderRadius ??
        currentStyle.bottomRightRadius ??
        currentStyle.borderRadius!;

    return (getBorderRadius != 0 || _checkBorderNull())
        ? (BorderRadius.only(
            topRight: Radius.circular(
              _getResponsiveBorderRadius(borderTopRightRadius),
            ),
            topLeft: Radius.circular(
              _getResponsiveBorderRadius(borderTopLeftRadius),
            ),
            bottomLeft: Radius.circular(
              _getResponsiveBorderRadius(borderBottomLeftRadius),
            ),
            bottomRight: Radius.circular(
              _getResponsiveBorderRadius(borderBottomRightRadius),
            ),
          ))
        : null;
  }

  @override
  Widget build(BuildContext context) {
    final CommonButtonStyle currentStyle = buttonStyle ?? CommonButtonStyle();

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: ElevatedButton(
        onFocusChange: onFocusChange?.call,
        onHover: !disable ? onHover?.call : null,
        autofocus: autofocus,
        clipBehavior: clipBehavior ?? currentStyle.style!.clipBehavior,
        focusNode: focusNode ?? currentStyle.style!.focusNode,
        key: key ?? currentStyle.style!.key,
        onLongPress: !disable ? () => onLongPress?.call() : null,
        style: ButtonStyle(
          // alignment: AlignmentDirectional.topStart,
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
                elevation ?? currentStyle.style?.elevation,
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
                getColorType(
                  !disable
                      ? backgroundColor ?? currentStyle.style!.backgroundColor!
                      : disabledColor ?? currentStyle.style!.disabledColor!,
                ),
              ),
          shape: shape ??
              currentStyle.style!.shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: _getBorderRadius() ??
                      currentStyle.style!.getBorderRadius(),
                ),
              ),
        ),
        // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
        onPressed: !disable ? () => onPress?.call() : null,
        child: CommonContainer(
          width: 0.8,
          height: 0.05,
          alignment: AlignmentDirectional.center,
          child: child ??
              CommonText(
                text,
                style: textStyle ?? currentStyle.textStyle,
                textAlign: TextAlign.center,
              ),
        ),
      ),
    );
  }
}
