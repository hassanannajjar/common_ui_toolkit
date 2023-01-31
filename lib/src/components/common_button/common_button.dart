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
    this.disableFontColor,
    this.fontWeight,
    this.fontStyle,
    this.disableFontStyle,
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
  final double? borderStrokeAlign;
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
  final dynamic disableFontColor;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final FontStyle? disableFontStyle;

  ///
  /// get responsive border radius.
  ///
  dynamic _getResponsiveBorderRadius(num value) => DEVICE_WIDTH * value;

  @override
  Widget build(BuildContext context) {
    final CommonButtonModel currentStyle = style ?? const CommonButtonModel();
    final CommonButtonModel configModel =
        GLOBAL_CONFIG.buttonModel ?? const CommonButtonModel();

    final double currentWidth =
        width ?? currentStyle.width ?? configModel.width ?? 0.15;
    final double currentHeight =
        height ?? currentStyle.height ?? configModel.height ?? 0.04;
    final dynamic currentBackgroundColor = backgroundColor ??
        currentStyle.backgroundColor ??
        configModel.backgroundColor ??
        COMMON_WHITE_COLOR;
    final dynamic currentDisabledColor = disabledColor ??
        currentStyle.disabledColor ??
        configModel.disabledColor ??
        COMMON_DISABLED_COLOR;
    final dynamic currentOverlayColor = overlayColor ??
        currentStyle.overlayColor ??
        configModel.overlayColor ??
        Colors.white10;
    final MaterialStateProperty<OutlinedBorder?>? currentShape =
        shape ?? currentStyle.shape ?? configModel.shape;
    final double? currentBottomLeftRadius = bottomLeftRadius ??
        currentStyle.bottomLeftRadius ??
        configModel.bottomLeftRadius;
    final double? currentBottomRightRadius = bottomRightRadius ??
        currentStyle.bottomRightRadius ??
        configModel.bottomRightRadius;
    final double? currentTopLeftRadius = topLeftRadius ??
        currentStyle.topLeftRadius ??
        configModel.topLeftRadius;
    final double? currentTopRightRadius = topRightRadius ??
        currentStyle.topRightRadius ??
        configModel.topRightRadius;
    final double currentBorderRadius = borderRadius ??
        currentStyle.borderRadius ??
        configModel.borderRadius ??
        0.0;
    final double? currentElevation =
        elevation ?? currentStyle.elevation ?? configModel.elevation;
    final AlignmentGeometry currentAlignment = alignment ??
        currentStyle.alignment ??
        configModel.alignment ??
        Alignment.center;
    final Duration? currentAnimationDuration = animationDuration ??
        currentStyle.animationDuration ??
        configModel.animationDuration;
    final bool currentEnableFeedback = enableFeedback ??
        currentStyle.enableFeedback ??
        configModel.enableFeedback ??
        true;
    final MaterialStateProperty<Size?>? currentFixedSize =
        fixedSize ?? currentStyle.fixedSize ?? configModel.fixedSize;
    final MaterialStateProperty<Color?>? currentForegroundColor =
        foregroundColor ??
            currentStyle.foregroundColor ??
            configModel.foregroundColor;
    final MaterialStateProperty<Size?>? currentMaximumSize =
        maximumSize ?? currentStyle.maximumSize ?? configModel.maximumSize;
    final MaterialStateProperty<Size?>? currentMinimumSize =
        minimumSize ?? currentStyle.minimumSize ?? configModel.minimumSize;
    final MaterialStateProperty<MouseCursor?>? currentMouseCursor =
        mouseCursor ?? currentStyle.mouseCursor ?? configModel.mouseCursor;
    final MaterialStateProperty<BorderSide?>? currentSide =
        side ?? currentStyle.side ?? configModel.side;
    final double currentPadding =
        padding ?? currentStyle.padding ?? configModel.padding ?? 0.0;
    final double? currentPaddingTop =
        paddingTop ?? currentStyle.paddingTop ?? configModel.paddingTop;
    final double? currentPaddingBottom = paddingBottom ??
        currentStyle.paddingBottom ??
        configModel.paddingBottom;
    final double? currentPaddingRight =
        paddingRight ?? currentStyle.paddingRight ?? configModel.paddingRight;
    final double? currentPaddingLeft =
        paddingLeft ?? currentStyle.paddingLeft ?? configModel.paddingLeft;
    final double? currentPaddingVertical = paddingVertical ??
        currentStyle.paddingVertical ??
        configModel.paddingVertical;
    final double? currentPaddingHorizontal = paddingHorizontal ??
        currentStyle.paddingHorizontal ??
        configModel.paddingHorizontal;
    final dynamic currentShadowColor = shadowColor ??
        currentStyle.shadowColor ??
        configModel.shadowColor ??
        Colors.black;
    final InteractiveInkFeatureFactory? currentSplashFactory = splashFactory ??
        currentStyle.splashFactory ??
        configModel.splashFactory;
    final MaterialTapTargetSize? currentTapTargetSize = tapTargetSize ??
        currentStyle.tapTargetSize ??
        configModel.tapTargetSize;
    final VisualDensity? currentVisualDensity = visualDensity ??
        currentStyle.visualDensity ??
        configModel.visualDensity;
    final Clip currentClipBehavior = clipBehavior ??
        currentStyle.clipBehavior ??
        configModel.clipBehavior ??
        Clip.none;
    final double currentBorderWidth =
        borderWidth ?? currentStyle.borderWidth ?? configModel.borderWidth ?? 0;
    final dynamic currentBorderColor = borderColor ??
        currentStyle.borderColor ??
        configModel.borderColor ??
        const Color(0xFF000000);
    final BorderStyle currentBorderStyle = borderStyle ??
        currentStyle.borderStyle ??
        configModel.borderStyle ??
        BorderStyle.solid;
    final double currentBorderStrokeAlign = borderStrokeAlign ??
        currentStyle.borderStrokeAlign ??
        configModel.borderStrokeAlign ??
        0.0;
    final double? currentMargin =
        margin ?? currentStyle.margin ?? configModel.margin;
    final double? currentMarginTop =
        marginTop ?? currentStyle.marginTop ?? configModel.marginTop;
    final double? currentMarginBottom =
        marginBottom ?? currentStyle.marginBottom ?? configModel.marginBottom;
    final double? currentMarginRight =
        marginRight ?? currentStyle.marginRight ?? configModel.marginRight;
    final double? currentMarginLeft =
        marginLeft ?? currentStyle.marginLeft ?? configModel.marginLeft;
    final double? currentMarginVertical = marginVertical ??
        currentStyle.marginVertical ??
        configModel.marginVertical;
    final double? currentMarginHorizontal = marginHorizontal ??
        currentStyle.marginHorizontal ??
        configModel.marginHorizontal;
    final CommonTextModel? currentTextStyle =
        textStyle ?? currentStyle.textStyle ?? configModel.textStyle;
    final double? currentFontSize =
        fontSize ?? currentStyle.fontSize ?? configModel.fontSize;
    final String? currentFontFamily =
        fontFamily ?? currentStyle.fontFamily ?? configModel.fontFamily;
    final dynamic currentDisableFontColor = disableFontColor ??
        currentStyle.disableFontColor ??
        configModel.disableFontColor;
    final dynamic currentFontColor = enabled
        ? (fontColor ?? currentStyle.fontColor ?? configModel.fontColor)
        : currentDisableFontColor;
    final FontWeight? currentFontWeight =
        fontWeight ?? currentStyle.fontWeight ?? configModel.fontWeight;
    final FontStyle? currentDisableFontStyle = disableFontStyle ??
        currentStyle.disableFontStyle ??
        configModel.disableFontStyle;
    final FontStyle? currentFontStyle = enabled
        ? (fontStyle ?? currentStyle.fontStyle ?? configModel.fontStyle)
        : currentDisableFontStyle;

    ///
    /// get border Radius.
    ///
    BorderRadius? getBorderRadius() {
      final double borderTopRightRadius =
          currentTopRightRadius ?? currentBorderRadius;

      final double borderTopLeftRadius =
          currentTopLeftRadius ?? currentBorderRadius;

      final double borderBottomLeftRadius =
          currentBottomLeftRadius ?? currentBorderRadius;

      final double borderBottomRightRadius =
          currentBottomRightRadius ?? currentBorderRadius;

      ///
      /// check if the border is null or not.
      ///
      final bool isBorderNull = currentTopLeftRadius == null ||
          currentTopRightRadius == null ||
          currentBottomLeftRadius == null ||
          currentBottomRightRadius == null;

      return (currentBorderRadius != 0 || isBorderNull)
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

    final ElevatedButton elevatedButton = ElevatedButton(
      key: key,
      onFocusChange: onFocusChange?.call,
      onHover: enabled ? onHover?.call : null,
      autofocus: autofocus,
      clipBehavior: currentClipBehavior,
      focusNode: focusNode,
      onLongPress: enabled ? onLongPress?.call : null,
      onPressed: enabled ? onPress?.call : null,
      style: ButtonStyle(
        alignment: currentAlignment,
        animationDuration: currentAnimationDuration,
        enableFeedback: currentEnableFeedback,
        fixedSize: currentFixedSize,
        maximumSize: currentMaximumSize,
        minimumSize: currentMinimumSize ??
            MaterialStateProperty.all(
              Size(DEVICE_WIDTH * (currentWidth),
                  DEVICE_HEIGHT * (currentHeight)),
            ),
        mouseCursor: currentMouseCursor,
        padding: MaterialStateProperty.all(
          getPaddingEdgeInsets(
            CommonButtonModel(
              paddingTop: currentPaddingTop,
              paddingBottom: currentPaddingBottom,
              paddingLeft: currentPaddingLeft,
              paddingRight: currentPaddingRight,
              paddingHorizontal: currentPaddingHorizontal,
              paddingVertical: currentPaddingVertical,
              padding: currentPadding,
            ),
          ),
        ),
        side: currentSide ??
            (currentBorderWidth > 0
                ? MaterialStateProperty.all(
                    BorderSide(
                      color: getColorType(currentBorderColor!),
                      width: currentBorderWidth,
                      strokeAlign: currentBorderStrokeAlign,
                      style: currentBorderStyle,
                    ),
                  )
                : null),
        splashFactory: currentSplashFactory,
        tapTargetSize: currentTapTargetSize,
        visualDensity: currentVisualDensity,
        elevation: checkElevationType(
          currentElevation,
        ),
        shadowColor: getButtonColorType(
          currentShadowColor,
        ),
        overlayColor: getButtonColorType(
          currentOverlayColor,
          isOverLay: true,
        ),
        foregroundColor: getButtonColorType(
          enabled ? currentForegroundColor : currentDisabledColor!,
        ),
        backgroundColor: getButtonColorType(
          enabled ? currentBackgroundColor! : currentDisabledColor!,
        ),
        shape: currentShape ??
            MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: getBorderRadius()!,
              ),
            ),
      ),

      // The on press function is empty here because it's required in the ElevatedButton, we call the on press function in the container to enable touch effects
      child: child ??
          CommonText(
            text,
            fontSize: currentFontSize,
            fontFamily: currentFontFamily,
            fontColor:
                (currentFontColor is Color || currentFontColor is MaterialColor)
                    ? currentFontColor
                    : currentFontColor is int
                        ? Color(currentFontColor)
                        : null,
            fontWeight: currentFontWeight,
            fontStyle: currentFontStyle,
            style: currentTextStyle,
          ),
    );

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
