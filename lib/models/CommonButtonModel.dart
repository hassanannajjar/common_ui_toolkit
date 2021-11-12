import 'package:common_ui_toolkit/components/common_date_picker/index.dart';

import '../index.dart';

class CommonButtonModel {
  bool isEnable;

  /// The [autofocus] and [clipBehavior] arguments must not be null.
  bool autofocus;

  /// Colors
  dynamic backgroundColor;
  dynamic disabledColor;
  dynamic overlayColor;

  /// The highlight color that's typically used to indicate that
  /// the button is focused, hovered, or pressed.
  final MaterialStateProperty<Color?>? customOverlayColor;

  /// You can customize The elevation of the button's [Material].
  final MaterialStateProperty<double?>? customElevation;

  /// The button's background fill color.
  final MaterialStateProperty<Color?>? cutomBackgroundColor;

  /// The shape of the button's underlying [Material].
  ///
  /// This shape is combined with [side] to create a shape decorated
  /// with an outline.
  final MaterialStateProperty<OutlinedBorder?>? shape;

  ///
  /// radius
  ///
  double? bottomLeftRadius;
  double? bottomRightRadius;
  double? topLeftRadius;
  double? topRightRadius;
  double? borderRadius;

  ///
  /// default elevation
  ///
  double elevation;

  ///
  /// alignment
  ///
  AlignmentGeometry alignment;

  ///
  /// animationDuration
  ///
  Duration? animationDuration;

  ///
  /// enableFeedback
  ///
  bool enableFeedback;

  ///
  /// fixedSize
  ///
  MaterialStateProperty<Size?>? fixedSize;

  ///
  /// foregroundColor
  ///
  MaterialStateProperty<Color?>? foregroundColor;

  ///
  /// maximumSize
  ///
  MaterialStateProperty<Size?>? maximumSize;

  ///
  /// minimumSize
  ///
  MaterialStateProperty<Size?>? minimumSize;

  ///
  /// mouseCursor
  ///
  MaterialStateProperty<MouseCursor?>? mouseCursor;

  ///
  /// padding
  ///
  MaterialStateProperty<EdgeInsetsGeometry?>? padding;

  ///
  /// shadowColor
  ///
  MaterialStateProperty<Color?>? shadowColor;

  ///
  /// side
  ///
  MaterialStateProperty<BorderSide?>? side;

  ///
  /// splashFactory
  ///
  InteractiveInkFeatureFactory? splashFactory;

  ///
  /// tapTargetSize
  ///
  MaterialTapTargetSize? tapTargetSize;

  ///
  /// textStyle
  ///
  MaterialStateProperty<TextStyle?>? textStyle;

  ///
  /// visualDensity
  ///
  VisualDensity? visualDensity;

  ///
  /// clipBehavior
  ///
  Clip clipBehavior;

  ///
  /// focusNode
  ///
  FocusNode? focusNode;

  ///
  /// key
  ///
  Key? key;

  CommonButtonModel({
    this.isEnable = true,
    this.autofocus = false,
    this.backgroundColor = COMMON_WHITE_COLOR,
    this.cutomBackgroundColor,
    this.disabledColor = COMMON_DISABLED_COLOR,
    this.overlayColor = Colors.black12,
    this.customOverlayColor,
    this.customElevation,
    this.elevation = 0.0,
    this.borderRadius = 0.0,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
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

  ///
  /// get border Radius.
  ///
  getBorderRadius() => borderRadius == 0

      ///
      /// return every single Radius.
      ///
      ? BorderRadius.only(
          topRight: Radius.circular(topRightRadius!),
          topLeft: Radius.circular(topLeftRadius!),
          bottomLeft: Radius.circular(bottomLeftRadius!),
          bottomRight: Radius.circular(bottomRightRadius!),
        )

      ///
      /// return all Radius.
      ///
      : BorderRadius.all(
          Radius.circular(borderRadius!),
        );

  CommonButtonModel copyWith({
    bool? isEnable,
    bool? autofocus,
    dynamic backgroundColor,
    dynamic disabledColor,
    dynamic overlayColor,
    MaterialStateProperty<Color?>? customOverlayColor,
    MaterialStateProperty<double?>? customElevation,
    MaterialStateProperty<Color?>? cutomBackgroundColor,
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
      cutomBackgroundColor: cutomBackgroundColor ?? this.cutomBackgroundColor,
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
