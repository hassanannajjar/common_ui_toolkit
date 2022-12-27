import '../../common_ui_toolkit.dart';

class CommonButtonModel {
  const CommonButtonModel({
    this.width,
    this.height,
    this.backgroundColor,
    this.disabledColor,
    this.overlayColor,
    this.shadowColor,
    this.onFocusChange,
    this.onHover,
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
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.paddingLeft,
    this.paddingVertical,
    this.paddingHorizontal,
    this.splashFactory,
    this.side,
    this.tapTargetSize,
    this.textStyle,
    this.visualDensity,
    this.foregroundColor,
    this.clipBehavior,
    this.alignment,
    this.borderWidth,
    this.borderColor,
    this.borderStrokeAlign,
    this.borderStyle,

    ///
    /// Empty space to surround the [decoration] and [child].
    ///
    this.margin,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,
    this.marginHorizontal,
    this.fontSize,
    this.fontFamily,
    this.fontColor,
    this.disableFontColor,
    this.fontWeight,
    this.fontStyle,
    this.disableFontStyle,
  });

  final double? width;
  final double? height;

  /// Colors
  final dynamic backgroundColor;
  final dynamic disabledColor;
  final dynamic overlayColor;

  final double? borderWidth;
  final dynamic borderColor;
  final StrokeAlign? borderStrokeAlign;
  final BorderStyle? borderStyle;

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
  final double? padding;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingRight;
  final double? paddingLeft;

  ///
  /// container padding right and left to be same.
  ///
  final double? paddingVertical;
  final double? paddingHorizontal;

  ///
  /// shadowColor
  ///
  final dynamic shadowColor;

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
  final CommonTextModel? textStyle;

  ///
  /// visualDensity
  ///
  final VisualDensity? visualDensity;

  ///
  /// clipBehavior
  ///
  final Clip? clipBehavior;

  ///
  /// margin for all container
  ///
  ///
  final double? margin;

  ///
  /// margin for top container
  ///
  final double? marginTop;

  ///
  /// margin for bottom container
  ///
  final double? marginBottom;

  ///
  /// margin for right container
  ///
  final double? marginRight;

  ///
  /// margin for left container
  ///
  final double? marginLeft;

  ///
  /// margin for (top and bottom|| Vertical)  container
  ///
  final double? marginVertical;

  ///
  /// margin for (right and left || Horizontal) container
  ///
  final double? marginHorizontal;

  final double? fontSize;
  final String? fontFamily;
  final dynamic fontColor;
  final dynamic disableFontColor;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final FontStyle? disableFontStyle;

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
    double? width,
    double? height,
    dynamic backgroundColor,
    dynamic disabledColor,
    dynamic overlayColor,
    double? borderWidth,
    dynamic borderColor,
    StrokeAlign? borderStrokeAlign,
    BorderStyle? borderStyle,
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
    double? padding,
    double? paddingTop,
    double? paddingBottom,
    double? paddingRight,
    double? paddingLeft,
    double? paddingVertical,
    double? paddingHorizontal,
    dynamic shadowColor,
    MaterialStateProperty<BorderSide?>? side,
    InteractiveInkFeatureFactory? splashFactory,
    MaterialTapTargetSize? tapTargetSize,
    CommonTextModel? textStyle,
    VisualDensity? visualDensity,
    Clip? clipBehavior,
    double? margin,
    double? marginTop,
    double? marginBottom,
    double? marginRight,
    double? marginLeft,
    double? marginVertical,
    double? marginHorizontal,
    double? fontSize,
    String? fontFamily,
    dynamic fontColor,
    dynamic disableFontColor,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    FontStyle? disableFontStyle,
  }) {
    return CommonButtonModel(
      width: width ?? this.width,
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      disabledColor: disabledColor ?? this.disabledColor,
      overlayColor: overlayColor ?? this.overlayColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderColor: borderColor ?? this.borderColor,
      borderStrokeAlign: borderStrokeAlign ?? this.borderStrokeAlign,
      borderStyle: borderStyle ?? this.borderStyle,
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
      paddingTop: paddingTop ?? this.paddingTop,
      paddingBottom: paddingBottom ?? this.paddingBottom,
      paddingRight: paddingRight ?? this.paddingRight,
      paddingLeft: paddingLeft ?? this.paddingLeft,
      paddingVertical: paddingVertical ?? this.paddingVertical,
      paddingHorizontal: paddingHorizontal ?? this.paddingHorizontal,
      shadowColor: shadowColor ?? this.shadowColor,
      side: side ?? this.side,
      splashFactory: splashFactory ?? this.splashFactory,
      tapTargetSize: tapTargetSize ?? this.tapTargetSize,
      textStyle: textStyle ?? this.textStyle,
      visualDensity: visualDensity ?? this.visualDensity,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      margin: margin ?? this.margin,
      marginTop: marginTop ?? this.marginTop,
      marginBottom: marginBottom ?? this.marginBottom,
      marginRight: marginRight ?? this.marginRight,
      marginLeft: marginLeft ?? this.marginLeft,
      marginVertical: marginVertical ?? this.marginVertical,
      marginHorizontal: marginHorizontal ?? this.marginHorizontal,
      fontSize: fontSize ?? this.fontSize,
      fontFamily: fontFamily ?? this.fontFamily,
      fontColor: fontColor ?? this.fontColor,
      disableFontColor: disableFontColor ?? this.disableFontColor,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      disableFontStyle: disableFontStyle ?? this.disableFontStyle,
    );
  }
}
