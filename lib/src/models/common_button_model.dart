import '../../common_ui_toolkit.dart';

class CommonButtonModel {
  const CommonButtonModel({
    this.isEnable = true,
    this.autofocus = false,
    this.backgroundColor = COMMON_WHITE_COLOR,
    this.customBackgroundColor,
    this.onFocusChange,
    this.onHover,
    this.disabledColor = COMMON_DISABLED_COLOR,
    this.overlayColor = Colors.black12,
    this.customOverlayColor,
    this.customElevation,
    this.elevation,
    this.borderRadius = 0.0,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.shape,
    this.fixedSize,
    this.enableFeedback = true,
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
    this.key,
    this.clipBehavior = Clip.none,
    this.alignment = Alignment.center,
  });

  final bool isEnable;

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
  final AlignmentGeometry alignment;

  ///
  /// animationDuration
  ///
  final Duration? animationDuration;

  ///
  /// enableFeedback
  ///
  final bool enableFeedback;

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
  /// textStyle
  ///
  final MaterialStateProperty<TextStyle?>? textStyle;

  ///
  /// visualDensity
  ///
  final VisualDensity? visualDensity;

  ///
  /// clipBehavior
  ///
  final Clip clipBehavior;

  ///
  /// focusNode
  ///
  final FocusNode? focusNode;

  ///
  /// key
  ///
  final Key? key;

  ///
  /// get border Radius.
  ///
  BorderRadius getBorderRadius() => BorderRadius.only(
        topRight: Radius.circular(
          (topRightRadius ?? borderRadius!) * DEVICE_WIDTH,
        ),
        topLeft: Radius.circular(
          (topLeftRadius ?? borderRadius!) * DEVICE_WIDTH,
        ),
        bottomLeft: Radius.circular(
          (bottomLeftRadius ?? borderRadius!) * DEVICE_WIDTH,
        ),
        bottomRight: Radius.circular(
          (bottomRightRadius ?? borderRadius!) * DEVICE_WIDTH,
        ),
      );

  CommonButtonModel copyWith({
    bool? isEnable,
    bool? autofocus,
    dynamic backgroundColor,
    dynamic disabledColor,
    dynamic overlayColor,
    MaterialStateProperty<Color?>? customOverlayColor,
    MaterialStateProperty<double?>? customElevation,
    MaterialStateProperty<Color?>? customBackgroundColor,
    MaterialStateProperty<OutlinedBorder?>? shape,
    double? bottomLeftRadius,
    double? bottomRightRadius,
    double? topLeftRadius,
    double? topRightRadius,
    double? borderRadius,
    double? elevation,
    AlignmentGeometry? alignment,
    Duration? animationDuration,
    bool? enableFeedback,
    MaterialStateProperty<Size?>? fixedSize,
    MaterialStateProperty<Color?>? foregroundColor,
    MaterialStateProperty<Size?>? maximumSize,
    MaterialStateProperty<Size?>? minimumSize,
    MaterialStateProperty<MouseCursor?>? mouseCursor,
    ValueChanged<bool>? onFocusChange,
    ValueChanged<bool>? onHover,
    MaterialStateProperty<EdgeInsetsGeometry?>? padding,
    MaterialStateProperty<Color?>? shadowColor,
    MaterialStateProperty<BorderSide?>? side,
    InteractiveInkFeatureFactory? splashFactory,
    MaterialTapTargetSize? tapTargetSize,
    MaterialStateProperty<TextStyle?>? textStyle,
    VisualDensity? visualDensity,
    Clip? clipBehavior,
    FocusNode? focusNode,
    Key? key,
  }) {
    return CommonButtonModel(
      isEnable: isEnable ?? this.isEnable,
      autofocus: autofocus ?? this.autofocus,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      disabledColor: disabledColor ?? this.disabledColor,
      overlayColor: overlayColor ?? this.overlayColor,
      customOverlayColor: customOverlayColor ?? this.customOverlayColor,
      customElevation: customElevation ?? this.customElevation,
      customBackgroundColor:
          customBackgroundColor ?? this.customBackgroundColor,
      shape: shape ?? this.shape,
      bottomLeftRadius: bottomLeftRadius ?? this.bottomLeftRadius,
      bottomRightRadius: bottomRightRadius ?? this.bottomRightRadius,
      topLeftRadius: topLeftRadius ?? this.topLeftRadius,
      topRightRadius: topRightRadius ?? this.topRightRadius,
      borderRadius: borderRadius ?? this.borderRadius,
      elevation: elevation ?? this.elevation,
      alignment: alignment ?? this.alignment,
      animationDuration: animationDuration ?? this.animationDuration,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      fixedSize: fixedSize ?? this.fixedSize,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      maximumSize: maximumSize ?? this.maximumSize,
      minimumSize: minimumSize ?? this.minimumSize,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      onHover: onHover ?? this.onHover,
      padding: padding ?? this.padding,
      shadowColor: shadowColor ?? this.shadowColor,
      side: side ?? this.side,
      splashFactory: splashFactory ?? this.splashFactory,
      tapTargetSize: tapTargetSize ?? this.tapTargetSize,
      textStyle: textStyle ?? this.textStyle,
      visualDensity: visualDensity ?? this.visualDensity,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      focusNode: focusNode ?? this.focusNode,
      key: key ?? this.key,
    );
  }
}
