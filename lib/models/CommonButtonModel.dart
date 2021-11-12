import 'package:common_ui_toolkit/components/common_date_picker/index.dart';

import '../index.dart';

class CommonButtonModel {
  bool isEnable;

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

  CommonButtonModel({
    this.isEnable = true,
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
}
