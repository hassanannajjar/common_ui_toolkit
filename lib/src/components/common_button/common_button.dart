import '../../../common_ui_toolkit.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    this.style,
    this.text = '',
    this.width,
    this.height,
    this.onPress,
    this.onLongPress,
    this.onFocusChange,
    this.onHover,
    this.child,
    this.enabled = true,
    this.autofocus = false,
    this.backgroundColor,
    this.disabledColor,
    this.overlayColor,
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
    this.shadowColor,
    this.visualDensity,
    this.focusNode,
    this.foregroundColor,
    this.clipBehavior,
    this.alignment,
    this.borderWidth,
    this.borderColor,
    this.borderStrokeAlign,
    this.borderStyle,
    this.margin,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,
    this.marginHorizontal,
    this.textStyle,
    this.fontSize,
    this.fontFamily,
    this.fontColor,
    this.fontWeight,
    this.fontStyle,
    Key? key,
  }) : super(key: key);

  final CommonButtonModel? style;
  final String? text;
  final double? width;
  final double? height;
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;

  ///
  /// onFocusChange
  ///
  final ValueChanged<bool>? onFocusChange;

  ///
  /// onHover
  ///
  final ValueChanged<bool>? onHover;
  final Widget? child;

  final bool enabled;

  /// The [autofocus] and [clipBehavior] arguments must not be null.
  final bool autofocus;

  /// Colors
  final dynamic backgroundColor;
  final dynamic disabledColor;
  final dynamic overlayColor;

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

  final double? borderWidth;
  final dynamic borderColor;
  final StrokeAlign? borderStrokeAlign;
  final BorderStyle? borderStyle;

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

  final CommonTextModel? textStyle;
  final double? fontSize;
  final String? fontFamily;
  final dynamic fontColor;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;

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
    final CommonButtonModel currentStyle = style ?? const CommonButtonModel();
    final dynamic currentFontColor = fontColor ?? currentStyle.fontColor;

    final ElevatedButton elevatedButton = ElevatedButton(
      key: key,
      onFocusChange: onFocusChange?.call,
      onHover: enabled ? onHover?.call : null,
      autofocus: autofocus,
      clipBehavior: clipBehavior ?? currentStyle.clipBehavior,
      focusNode: focusNode,
      onLongPress: enabled ? onLongPress?.call : null,
      onPressed: enabled ? onPress?.call : null,
      style: ButtonStyle(
        alignment: alignment ?? currentStyle.alignment,
        animationDuration: animationDuration ?? currentStyle.animationDuration,
        enableFeedback: enableFeedback ?? currentStyle.enableFeedback,
        fixedSize: fixedSize ?? currentStyle.fixedSize,
        maximumSize: maximumSize ?? currentStyle.maximumSize,
        minimumSize: minimumSize ??
            currentStyle.minimumSize ??
            MaterialStateProperty.all(
              Size(DEVICE_WIDTH * (width ?? currentStyle.width!),
                  DEVICE_HEIGHT * (height ?? currentStyle.height!)),
            ),
        mouseCursor: mouseCursor ?? currentStyle.mouseCursor,
        padding: MaterialStateProperty.all(
          getPaddingEdgeInsets(
            CommonButtonModel(
              paddingTop: (paddingTop ?? currentStyle.paddingTop),
              paddingBottom: (paddingBottom ?? currentStyle.paddingBottom),
              paddingLeft: (paddingLeft ?? currentStyle.paddingLeft),
              paddingRight: (paddingRight ?? currentStyle.paddingRight),
              paddingHorizontal:
                  (paddingHorizontal ?? currentStyle.paddingHorizontal),
              paddingVertical:
                  (paddingVertical ?? currentStyle.paddingVertical),
              padding: (padding ?? currentStyle.padding) ?? 0.0,
            ),
          ),
        ),
        side: side ??
            currentStyle.side ??
            ((borderWidth ?? currentStyle.borderWidth!) > 0
                ? MaterialStateProperty.all(
                    BorderSide(
                      color: getColorType(
                          borderColor ?? currentStyle.borderColor!),
                      width: borderWidth ?? currentStyle.borderWidth!,
                      strokeAlign:
                          borderStrokeAlign ?? currentStyle.borderStrokeAlign!,
                      style: borderStyle ?? currentStyle.borderStyle!,
                    ),
                  )
                : null),
        splashFactory: splashFactory ?? currentStyle.splashFactory,
        tapTargetSize: tapTargetSize ?? currentStyle.tapTargetSize,
        visualDensity: visualDensity ?? currentStyle.visualDensity,
        elevation: checkElevationType(
          elevation ?? currentStyle.elevation,
        ),
        shadowColor: getButtonColorType(
          shadowColor ?? currentStyle.shadowColor,
        ),
        overlayColor: getButtonColorType(
          overlayColor ?? currentStyle.overlayColor,
          isOverLay: true,
        ),
        foregroundColor: getButtonColorType(
          enabled
              ? foregroundColor ?? currentStyle.foregroundColor
              : disabledColor ?? currentStyle.disabledColor!,
        ),
        backgroundColor: getButtonColorType(
          enabled
              ? backgroundColor ?? currentStyle.backgroundColor!
              : disabledColor ?? currentStyle.disabledColor!,
        ),
        shape: shape ??
            currentStyle.shape ??
            MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius:
                    _getBorderRadius() ?? currentStyle.getBorderRadius(),
              ),
            ),
      ),

      // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
      child: child ??
          CommonText(
            text,
            fontSize: fontSize ?? currentStyle.fontSize,
            fontFamily: fontFamily ?? currentStyle.fontFamily,
            fontColor:
                (currentFontColor is Color || currentFontColor is MaterialColor)
                    ? currentFontColor
                    : currentFontColor is int
                        ? Color(currentFontColor)
                        : null,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            style: textStyle ?? currentStyle.textStyle,
          ),
    );

    final double? currentMargin = margin ?? currentStyle.margin;
    final double? currentMarginTop = marginTop ?? currentStyle.marginTop;
    final double? currentMarginBottom =
        marginBottom ?? currentStyle.marginBottom;
    final double? currentMarginRight = marginRight ?? currentStyle.marginRight;
    final double? currentMarginLeft = marginLeft ?? currentStyle.marginLeft;
    final double? currentMarginHorizontal =
        marginHorizontal ?? currentStyle.marginHorizontal;
    final double? currentMarginVertical =
        marginVertical ?? currentStyle.marginVertical;

    final bool withMargin = (currentMarginTop != null ||
        currentMarginBottom != null ||
        currentMarginLeft != null ||
        currentMarginRight != null ||
        currentMarginHorizontal != null ||
        currentMarginVertical != null ||
        currentMargin != null);

    return withMargin
        ? Padding(
            padding: getMarginEdgeInsets(
              CommonButtonModel(
                marginTop: currentMarginTop,
                marginBottom: currentMarginBottom,
                marginLeft: currentMarginLeft,
                marginRight: currentMarginRight,
                marginHorizontal: currentMarginHorizontal,
                marginVertical: currentMarginVertical,
                margin: currentMargin ?? 0.0,
              ),
            ),
            child: elevatedButton,
          )
        : elevatedButton;
  }
}
