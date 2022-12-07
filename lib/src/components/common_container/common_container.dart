import '../../../common_ui_toolkit.dart';

const CommonContainerModel _defaultContainerStyle = CommonContainerModel();

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    Key? key,
    this.style,
    this.onPress,
    this.child,
    this.loadingWidget,
    this.isLoading = false,

    //sizes
    this.width,
    this.height,
    this.minWidth,
    this.minHeight,
    this.maxWidth,
    this.maxHeight,

    ///
    ///  * [Alignment], a class with convenient constants typically used to
    ///    specify an [AlignmentGeometry].
    ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
    ///    relative to text direction.
    ///
    this.alignment,

    ///
    /// Empty space to inscribe inside the [decoration]. The [child], if any, is
    /// placed inside this padding.
    ///
    /// This padding is in addition to any padding inherent in the [decoration];
    /// see [Decoration.padding].
    ///
    this.padding,
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.paddingLeft,
    this.paddingVertical,

    ///
    /// container padding top and bottom to be same.
    ///
    this.paddingHorizontal,

    ///
    /// Empty space to surround the [decoration] and [child].
    ///
    this.margin,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,

    ///
    /// container margin top and bottom to be same.
    ///
    this.marginHorizontal,

    ///
    /// The color to paint behind the [child].
    ///
    /// This property should be preferred when the background is a simple color.
    /// For other cases, such as gradients or images, use the [decoration]
    /// property.
    ///
    /// If the [decoration] is used, this property must be null. A background
    /// color may still be painted by the [decoration] even if this property is
    /// null.
    ///
    this.backgroundColor,
    this.foregroundColor,
    this.radiusColor,
    this.loadingColor,

    // shadow
    this.shadowSpreadRadius,
    this.shadowBlurRadius,
    this.shadowOffsetDX,
    this.shadowOffsetDY,
    this.shadowColor,
    this.shadowOpacity,
    this.foregroundShadowSpreadRadius,
    this.foregroundShadowBlurRadius,
    this.foregroundShadowOffsetDX,
    this.foregroundShadowOffsetDY,
    this.foregroundShadowColor,
    this.foregroundShadowOpacity,

    // Radius
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.borderRadius,
    this.foregroundBottomLeftRadius,
    this.foregroundBottomRightRadius,
    this.foregroundTopLeftRadius,
    this.foregroundTopRightRadius,
    this.foregroundBorderRadius,

    // clipBehavior
    this.clipBehavior,

    // transform
    this.transform,
    this.transformAlignment,

    // border
    this.borderStyle,
    this.borderTopStyle,
    this.borderRightStyle,
    this.borderBottomStyle,
    this.borderLeftStyle,
    this.borderWidth,
    this.borderTopWidth,
    this.borderRightWidth,
    this.borderBottomWidth,
    this.borderLeftWidth,
    this.borderColor,
    this.borderTopColor,
    this.borderRightColor,
    this.borderBottomColor,
    this.borderLeftColor,
    this.foregroundBorderStyle,
    this.foregroundBorderTopStyle,
    this.foregroundBorderRightStyle,
    this.foregroundBorderBottomStyle,
    this.foregroundBorderLeftStyle,
    this.foregroundBorderWidth,
    this.foregroundBorderTopWidth,
    this.foregroundBorderRightWidth,
    this.foregroundBorderBottomWidth,
    this.foregroundBorderLeftWidth,
    this.foregroundBorderColor,
    this.foregroundBorderTopColor,
    this.foregroundBorderRightColor,
    this.foregroundBorderBottomColor,
    this.foregroundBorderLeftColor,

    ///
    /// The decoration to paint in front of the [child].
    ///
    this.foregroundDecoration,

    ///
    /// The decoration to paint behind the [child].
    ///
    /// Use the [color] property to specify a simple solid color.
    ///
    /// The [child] is not clipped to the decoration. To clip a child to the shape
    /// of a particular [ShapeDecoration], consider using a [ClipPath] widget.
    ///
    this.decoration,

    // boxShape
    this.boxShape,
    this.foregroundBoxShape,

    // touchEffect
    this.touchEffect,

    // blendMode
    this.backgroundBlendMode,
    this.foregroundBlendMode,

    // box gradient
    this.boxGradient,
    this.foregroundBoxGradient,

    // image
    this.foregroundImage,
    this.backgroundImageDecoration,
    this.backgroundImage,

    // size
    this.size,
  }) : super(key: key);

  ///
  /// child widget.
  ///
  final Widget? child;

  ///
  /// custom loading widget.
  ///
  final Widget? loadingWidget;

  ///
  /// to use it import the CommonContainerModel or use defaults style from CommonContainerStyle.
  /// example :
  /// using CommonContainerModel
  /// ```dart
  ///  CommonContainerModel(
  ///   alignment: Alignment.center,
  ///   loadingColor: 0xff123155,
  /// )
  /// ```
  /// using defaults style
  ///
  /// ```dart
  /// CommonContainerStyle()!.bottomShadow
  /// or
  /// CommonContainerStyle()!.fullShadow
  /// ```
  ///
  final CommonContainerModel? style;

  ///
  /// handel the data after loading and check if the data null or not.
  ///
  final bool isLoading;

  ///
  /// handel opPress function
  ///
  final Function? onPress;

  //sizes
  final double? width;
  final double? height;
  final double? minWidth;
  final double? minHeight;
  final double? maxWidth;
  final double? maxHeight;

  ///
  /// Size of the container it's used for responsive design to get square container and responsive container
  /// and we used this property to get same width and height for responsive container
  ///
  final double? size;

  // padding
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

  // shadow
  final double? shadowSpreadRadius;
  final double? shadowBlurRadius;
  final double? shadowOffsetDX;
  final double? shadowOffsetDY;
  final double? shadowOpacity;

  final double? foregroundShadowSpreadRadius;
  final double? foregroundShadowBlurRadius;
  final double? foregroundShadowOffsetDX;
  final double? foregroundShadowOffsetDY;
  final double? foregroundShadowOpacity;

  // Radius
  final double? bottomLeftRadius;
  final double? bottomRightRadius;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? borderRadius;
  final double? borderWidth;
  final double? borderTopWidth;
  final double? borderBottomWidth;
  final double? borderRightWidth;
  final double? borderLeftWidth;

  final double? foregroundBottomLeftRadius;
  final double? foregroundBottomRightRadius;
  final double? foregroundTopLeftRadius;
  final double? foregroundTopRightRadius;
  final double? foregroundBorderRadius;
  final double? foregroundBorderWidth;
  final double? foregroundBorderTopWidth;
  final double? foregroundBorderBottomWidth;
  final double? foregroundBorderRightWidth;
  final double? foregroundBorderLeftWidth;

  // colors
  final dynamic radiusColor;
  final dynamic shadowColor;
  final dynamic backgroundColor;
  final dynamic borderColor;
  final dynamic borderTopColor;
  final dynamic borderBottomColor;
  final dynamic borderRightColor;
  final dynamic borderLeftColor;
  final dynamic loadingColor;

  final dynamic foregroundShadowColor;
  final dynamic foregroundColor;
  final dynamic foregroundBorderColor;
  final dynamic foregroundBorderTopColor;
  final dynamic foregroundBorderBottomColor;
  final dynamic foregroundBorderRightColor;
  final dynamic foregroundBorderLeftColor;

  ///
  /// Align the [child] within the container.
  ///
  /// If non-null, the container will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  ///
  /// ex: AlignmentDirectional.center,
  ///
  /// See also:
  /// if you want to change the alignment of the container
  /// you can use the [transformAlignment]
  /// ex: transformAlignment: AlignmentDirectional.center,
  ///
  final AlignmentGeometry? alignment;

  ///
  /// The alignment of the origin, relative to the size of the container, if [transform] is specified.
  ///
  /// When [transform] is null, the value of this property is ignored.
  ///
  /// See also:
  ///
  ///  ex: AlignmentDirectional.center,
  ///
  final AlignmentGeometry? transformAlignment;

  ///
  ///  /// The clip behavior when [Container.decoration] is not null.
  ///
  /// Defaults to [Clip.none]. Must be [Clip.none] if [decoration] is null.
  ///
  /// If a clip is to be applied, the [Decoration.getClipPath] method
  /// for the provided decoration must return a clip path. (This is not
  /// supported by all decorations; the default implementation of that
  /// method throws an [UnsupportedError].)
  ///
  final Clip? clipBehavior;

  ///
  /// The transformation matrix to apply before painting the container.
  ///
  final Matrix4? transform;

  final BorderStyle? borderStyle;
  final BorderStyle? borderTopStyle;
  final BorderStyle? borderBottomStyle;
  final BorderStyle? borderRightStyle;
  final BorderStyle? borderLeftStyle;

  final BorderStyle? foregroundBorderStyle;
  final BorderStyle? foregroundBorderTopStyle;
  final BorderStyle? foregroundBorderBottomStyle;
  final BorderStyle? foregroundBorderRightStyle;
  final BorderStyle? foregroundBorderLeftStyle;

  ///
  /// this is for custom Decoration as you want.
  ///
  /// example :
  /// ```dart
  // BoxDecoration(
  //             image: image,
  //             gradient: gradient,
  //             backgroundBlendMode: backgroundBlendMode,
  //             shape: shape,
  //             border: border,
  //             borderRadius: borderRadius,
  //             color: color,
  //             boxShadow: <BoxShadow>[
  //               BoxShadow(
  //                 color: color,
  //                 spreadRadius: spreadRadius,
  //                 blurRadius: blurRadius,
  //                 offset:offset,
  //               )
  //             ],
  //           ),
  /// ```
  ///
  final Decoration? foregroundDecoration;

  ///
  /// this is for custom Decoration as you want.
  ///
  /// example :
  /// ```dart
  // BoxDecoration(
  //             image: image,
  //             gradient: gradient,
  //             backgroundBlendMode: backgroundBlendMode,
  //             shape: shape,
  //             border: border,
  //             borderRadius: borderRadius,
  //             color: color,
  //             boxShadow: <BoxShadow>[
  //               BoxShadow(
  //                 color: color,
  //                 spreadRadius: spreadRadius,
  //                 blurRadius: blurRadius,
  //                 offset:offset,
  //               )
  //             ],
  //           ),
  /// ```
  ///
  final Decoration? decoration;

  ///
  /// BoxShape
  /// default value its [BoxShape.rectangle]
  /// example :
  /// ```dart
  /// boxShape: BoxShape.circle
  final BoxShape? boxShape;

  /// or
  /// foregroundBoxShape: BoxShape.circle
  final BoxShape? foregroundBoxShape;

  /// ```
  ///

  ///
  /// render the touchEffect when press the container.
  /// and you must use onPress function to use touchEffect.
  /// example :
  /// ```dart
  /// touchEffect: TouchEffect(
  ///  type: TouchTypes.scaleAndFade,
  ///  duration: 50,
  ///  lowerBound:0.9,
  ///  upperBound:1.3,
  ///  scaleValue:1.3,
  /// )
  /// ```
  ///
  final TouchableEffect? touchEffect;

  ///
  /// BlendMode for background image
  ///
  final BlendMode? backgroundBlendMode;

  ///
  /// BlendMode for foreground image
  ///
  final BlendMode? foregroundBlendMode;

  ///
  ///boxGradient
  ///
  ///```dart
  ///LinearGradient(
  /// begin: FractionalOffset.topCenter,
  /// end: FractionalOffset.bottomCenter,
  /// colors: [
  ///   Color(0x3F000000),
  ///   Color(0x3F000000),
  ///   Color(0x3F000000),
  ///   Color(0x7C000000),
  ///   Color(0x3F000000),
  /// ],
  /// stops: [
  ///   0.0,
  ///   0.25,
  ///   0.5,
  ///   0.75,
  ///   1.0
  /// ]),
  /// ```
  ///
  final LinearGradient? boxGradient;
  //
  ///foregroundBoxGradient
  ///
  ///```dart
  ///LinearGradient(
  /// begin: FractionalOffset.topCenter,
  /// end: FractionalOffset.bottomCenter,
  /// colors: [
  ///   Color(0x3F000000),
  ///   Color(0x3F000000),
  ///   Color(0x3F000000),
  ///   Color(0x7C000000),
  ///   Color(0x3F000000),
  /// ],
  /// stops: [
  ///   0.0,
  ///   0.25,
  ///   0.5,
  ///   0.75,
  ///   1.0
  /// ]),
  /// ```
  ///
  final LinearGradient? foregroundBoxGradient;

  ///backgroundImage image
  /// - internet image
  ///```dart
  /// DecorationImage(
  //   image: NetworkImage(
  //     image,
  //   ),
  //   fit: BoxFit.fitWidth,
  // ),
  ///```
  ///
  ////// - local image
  ///```dart
  /// DecorationImage(
  //   image: AssetImage(
  //     image,
  //   ),
  //   fit: BoxFit.fitWidth,
  // ),
  ///```
  ///
  final DecorationImage? backgroundImageDecoration;

  ///
  /// you can add your image from assets or internet
  /// and we will handle it for you.
  /// example : backgroundImage: 'assets/images/image.png'
  /// or backgroundImage: 'https://image.png'
  ///
  final String? backgroundImage;

  ///foregroundImage image
  /// - internet image
  ///```dart
  /// DecorationImage(
  //   image: NetworkImage(
  //     image,
  //   ),
  //   fit: BoxFit.fitWidth,
  // ),
  ///```
  ///
  ////// - local image
  ///```dart
  /// DecorationImage(
  //   image: AssetImage(
  //     image,
  //   ),
  //   fit: BoxFit.fitWidth,
  // ),
  ///```
  ///
  final DecorationImage? foregroundImage;

  ///
  /// check if the border is null or not.
  ///
  bool _checkBorderNull() {
    final CommonContainerModel currentStyle = style ?? _defaultContainerStyle;

    return (borderTopWidth ?? currentStyle.borderTopWidth) != null ||
        (borderBottomWidth ?? currentStyle.borderBottomWidth) != null ||
        (borderRightWidth ?? currentStyle.borderRightWidth) != null ||
        (borderLeftWidth ?? currentStyle.borderLeftWidth) != null;
  }

  ///
  /// check if the foregroundBorder is null or not.
  ///
  bool _checkForegroundBorderNull() {
    final CommonContainerModel currentStyle = style ?? _defaultContainerStyle;

    ///
    /// foreground border widths.
    ///
    return (foregroundBorderTopWidth ??
                currentStyle.foregroundBorderTopWidth) !=
            null ||
        (foregroundBorderBottomWidth ??
                currentStyle.foregroundBorderBottomWidth) !=
            null ||
        (foregroundBorderRightWidth ??
                currentStyle.foregroundBorderRightWidth) !=
            null ||
        (foregroundBorderLeftWidth ?? currentStyle.foregroundBorderLeftWidth) !=
            null;
  }

  ///
  /// get responsive border radius.
  ///
  dynamic _getResponsiveBorderRadius(num value) => DEVICE_WIDTH * value;

  ///
  /// get border Radius.
  ///
  BorderRadius? _getBorderRadius() {
    final CommonContainerModel currentStyle = style ?? _defaultContainerStyle;

    final double borderTopRightRadius = topRightRadius ??
        currentStyle.topRightRadius ??
        borderRadius ??
        currentStyle.borderRadius!;

    final double borderTopLeftRadius = topLeftRadius ??
        currentStyle.topLeftRadius ??
        borderRadius ??
        currentStyle.borderRadius!;

    final double borderBottomLeftRadius = bottomLeftRadius ??
        currentStyle.bottomLeftRadius ??
        borderRadius ??
        currentStyle.borderRadius!;

    final double borderBottomRightRadius = bottomRightRadius ??
        currentStyle.bottomRightRadius ??
        borderRadius ??
        currentStyle.borderRadius!;

    return ((boxShape ?? currentStyle.boxShape) == BoxShape.circle ||
            _checkBorderNull())
        ? null
        : (BorderRadius.only(
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
          ));
  }

  ///
  /// get border Radius.
  ///
  BorderRadius? _getForegroundBorderRadius() {
    final CommonContainerModel currentStyle = style ?? _defaultContainerStyle;

    final double foregroundBorderTopRightRadius = foregroundTopRightRadius ??
        currentStyle.foregroundTopRightRadius ??
        foregroundBorderRadius ??
        currentStyle.foregroundBorderRadius!;

    final double foregroundBorderTopLeftRadius = foregroundTopLeftRadius ??
        currentStyle.foregroundTopLeftRadius ??
        foregroundBorderRadius ??
        currentStyle.foregroundBorderRadius!;

    final double foregroundBorderBottomLeftRadius =
        foregroundBottomLeftRadius ??
            currentStyle.foregroundBottomLeftRadius ??
            foregroundBorderRadius ??
            currentStyle.foregroundBorderRadius!;

    final double foregroundBorderBottomRightRadius =
        foregroundBottomRightRadius ??
            foregroundBorderRadius ??
            currentStyle.foregroundBottomRightRadius ??
            currentStyle.foregroundBorderRadius!;

    return ((foregroundBoxShape ?? currentStyle.foregroundBoxShape) ==
                BoxShape.circle ||
            _checkForegroundBorderNull())
        ? null
        : BorderRadius.only(
            topRight: Radius.circular(
              _getResponsiveBorderRadius(foregroundBorderTopRightRadius),
            ),
            topLeft: Radius.circular(
              _getResponsiveBorderRadius(foregroundBorderTopLeftRadius),
            ),
            bottomLeft: Radius.circular(
              _getResponsiveBorderRadius(foregroundBorderBottomLeftRadius),
            ),
            bottomRight: Radius.circular(
              _getResponsiveBorderRadius(foregroundBorderBottomRightRadius),
            ),
          );
  }

  ///
  /// get border width and color.
  ///
  Border? _getBorder() {
    final CommonContainerModel currentStyle = style ?? _defaultContainerStyle;

    // get border widths.

    final double currentBorderWidth = borderWidth ?? currentStyle.borderWidth!;

    final double currentTopWidth = borderTopWidth ??
        currentStyle.borderTopWidth ??
        borderWidth ??
        currentStyle.borderWidth!;

    final double currentRightWidth = borderRightWidth ??
        currentStyle.borderRightWidth ??
        borderWidth ??
        currentStyle.borderWidth!;

    final double currentBottomWidth = borderBottomWidth ??
        currentStyle.borderBottomWidth ??
        borderWidth ??
        currentStyle.borderWidth!;

    final double currentLeftWidth = borderLeftWidth ??
        currentStyle.borderLeftWidth ??
        borderWidth ??
        currentStyle.borderWidth!;

    // get border colors.

    final dynamic currentTopColor = borderTopColor ??
        currentStyle.borderTopColor ??
        borderColor ??
        currentStyle.borderColor!;

    final dynamic currentRightColor = borderRightColor ??
        currentStyle.borderRightColor ??
        borderColor ??
        currentStyle.borderColor!;

    final dynamic currentBottomColor = borderBottomColor ??
        currentStyle.borderBottomColor ??
        borderColor ??
        currentStyle.borderColor!;

    final dynamic currentLeftColor = borderLeftColor ??
        currentStyle.borderLeftColor ??
        borderColor ??
        currentStyle.borderColor!;

    // get border style.

    final BorderStyle currentTopStyle = borderTopStyle ??
        currentStyle.borderTopStyle ??
        borderStyle ??
        currentStyle.borderStyle!;

    final BorderStyle currentRightStyle = borderRightStyle ??
        currentStyle.borderRightStyle ??
        borderStyle ??
        currentStyle.borderStyle!;

    final BorderStyle currentBottomStyle = borderBottomStyle ??
        currentStyle.borderBottomStyle ??
        borderStyle ??
        currentStyle.borderStyle!;

    final BorderStyle currentLeftStyle = borderLeftStyle ??
        currentStyle.borderLeftStyle ??
        borderStyle ??
        currentStyle.borderStyle!;

    return (currentBorderWidth > 0 || _checkBorderNull())
        ? Border(
            ///
            /// handel top border.
            ///
            top: BorderSide(
              color: getColorType(currentTopWidth > 0
                  ? currentTopColor
                  : COMMON_TRANSPARENT_COLOR),
              width: currentTopWidth,
              style: currentTopStyle,
            ),

            // ///
            // /// handel right border.
            // ///
            right: BorderSide(
              color: getColorType(currentRightWidth > 0
                  ? currentRightColor
                  : COMMON_TRANSPARENT_COLOR),
              width: currentRightWidth,
              style: currentRightStyle,
            ),

            ///
            /// handel bottom border.
            ///
            bottom: BorderSide(
              color: getColorType(
                currentBottomWidth > 0
                    ? currentBottomColor
                    : COMMON_TRANSPARENT_COLOR,
              ),
              width: currentBottomWidth,
              style: currentBottomStyle,
            ),

            ///
            /// handel left border.
            // ///
            left: BorderSide(
              color: getColorType(
                currentLeftWidth > 0
                    ? currentLeftColor
                    : COMMON_TRANSPARENT_COLOR,
              ),
              width: currentLeftWidth,
              style: currentLeftStyle,
            ),
          )

        ///
        /// or return null.
        ///
        : null;
  }

  ///
  /// get border width and color.
  ///
  Border? _getForegroundBorder() {
    // get current style
    final CommonContainerModel currentStyle = style ?? _defaultContainerStyle;

    // Foreground border widths.

    final double foreBorderWidth =
        foregroundBorderWidth ?? currentStyle.foregroundBorderWidth!;

    final double foreTopBorderWidth = foregroundBorderTopWidth ??
        currentStyle.foregroundBorderTopWidth ??
        foregroundBorderWidth ??
        currentStyle.foregroundBorderWidth!;

    final double foreRightBorderWidth = foregroundBorderRightWidth ??
        currentStyle.foregroundBorderRightWidth ??
        foregroundBorderWidth ??
        currentStyle.foregroundBorderWidth!;

    final double forBorderBottomWidth = foregroundBorderBottomWidth ??
        currentStyle.foregroundBorderBottomWidth ??
        foregroundBorderWidth ??
        currentStyle.foregroundBorderWidth!;

    final double foreLeftBorderWidth = foregroundBorderLeftWidth ??
        currentStyle.foregroundBorderLeftWidth ??
        foregroundBorderWidth ??
        currentStyle.foregroundBorderWidth!;

    // Foreground border colors.

    final dynamic foreTopBorderColor = foregroundBorderTopColor ??
        currentStyle.foregroundBorderTopColor ??
        foregroundBorderColor ??
        currentStyle.foregroundBorderColor;

    final dynamic foreRightBorderColor = foregroundBorderRightColor ??
        currentStyle.foregroundBorderRightColor ??
        foregroundBorderColor ??
        currentStyle.foregroundBorderColor;

    final dynamic forBorderBottomColor = foregroundBorderBottomColor ??
        currentStyle.foregroundBorderBottomColor ??
        foregroundBorderColor ??
        currentStyle.foregroundBorderColor;

    final dynamic foreLeftBorderColor = foregroundBorderLeftColor ??
        currentStyle.foregroundBorderLeftColor ??
        foregroundBorderColor ??
        currentStyle.foregroundBorderColor;

    // Foreground border styles.

    final BorderStyle foreTopBorderStyle = foregroundBorderTopStyle ??
        currentStyle.foregroundBorderTopStyle ??
        foregroundBorderStyle ??
        currentStyle.foregroundBorderStyle!;

    final BorderStyle foreRightBorderStyle = foregroundBorderRightStyle ??
        currentStyle.foregroundBorderRightStyle ??
        foregroundBorderStyle ??
        currentStyle.foregroundBorderStyle!;

    final BorderStyle forBorderBottomStyle = foregroundBorderBottomStyle ??
        currentStyle.foregroundBorderBottomStyle ??
        foregroundBorderStyle ??
        currentStyle.foregroundBorderStyle!;

    final BorderStyle foreLeftBorderStyle = foregroundBorderLeftStyle ??
        currentStyle.foregroundBorderLeftStyle ??
        foregroundBorderStyle ??
        currentStyle.foregroundBorderStyle!;

    return ((foreBorderWidth > 0) || _checkForegroundBorderNull())
        ? Border(
            ///
            /// handel top border.
            ///
            top: BorderSide(
              color: getColorType(
                foreTopBorderWidth > 0
                    ? foreTopBorderColor
                    : COMMON_TRANSPARENT_COLOR,
              ),
              width: foreTopBorderWidth,
              style: foreTopBorderStyle,
            ),

            ///
            /// handel right border.
            ///
            right: BorderSide(
              color: getColorType(
                foreRightBorderWidth > 0
                    ? foreRightBorderColor
                    : COMMON_TRANSPARENT_COLOR,
              ),
              width: foreRightBorderWidth,
              style: foreRightBorderStyle,
            ),

            ///
            /// handel bottom border.
            ///
            bottom: BorderSide(
              color: getColorType(
                forBorderBottomWidth > 0
                    ? forBorderBottomColor
                    : COMMON_TRANSPARENT_COLOR,
              ),
              width: forBorderBottomWidth,
              style: forBorderBottomStyle,
            ),

            ///
            /// handel left border.
            ///
            left: BorderSide(
              color: getColorType(
                foreLeftBorderWidth > 0
                    ? foreLeftBorderColor
                    : COMMON_TRANSPARENT_COLOR,
              ),
              width: foreLeftBorderWidth,
              style: foreLeftBorderStyle,
            ),
          )

        ///
        /// or return null.
        ///
        : null;
  }

  /// handel container width.
  /// and return the container width
  ///  like responsive design if the value smaller than 1.
  double? _getWidth() => size != null
      ? (DEVICE_WIDTH * size!)
      : width! <= 0.0
          ? null
          : (DEVICE_WIDTH * width!);

  /// handel container hight.
  /// and return the container hight
  ///  like responsive design if the value smaller than 1.
  ///
  double? _getHeight() => size != null
      ? (DEVICE_WIDTH * size!)
      : height! <= 0.0
          ? null
          : (DEVICE_HEIGHT * height!);

  double _getResponsiveMinWidth() => DEVICE_WIDTH * minWidth!;
  double _getResponsiveMaxWidth() => DEVICE_WIDTH * maxWidth!;
  double _getResponsiveMinHeight() => DEVICE_HEIGHT * minHeight!;
  double _getResponsiveMaxHeight() => DEVICE_HEIGHT * maxHeight!;

  @override
  Widget build(BuildContext context) {
    ///
    /// handel default style if the style null.
    ///
    ///
    final CommonContainerModel currentStyle = style ?? _defaultContainerStyle;

    final Container container = Container(
      ///
      /// you can use loading condition to handel render error
      /// if data still null or you want wait the data from api.
      ///
      /// /// Align the [child] within the container.
      ///
      /// If non-null, the container will expand to fill its parent and position its
      /// child within itself according to the given value. If the incoming
      /// constraints are unbounded, then the child will be shrink-wrapped instead.
      ///
      /// Ignored if [child] is null.
      ///
      width: (width != null || size != null)
          ? _getWidth()
          : currentStyle.getWidth(),

      ///
      /// get the height.
      ///
      height: (height != null || size != null)
          ? _getHeight()
          : currentStyle.getHeight(),

      ///
      /// get the margin.
      ///
      margin: getMarginEdgeInsets(
        CommonContainerModel(
          marginTop: marginTop ?? currentStyle.marginTop,
          marginBottom: marginBottom ?? currentStyle.marginBottom,
          marginLeft: marginLeft ?? currentStyle.marginLeft,
          marginRight: marginRight ?? currentStyle.marginRight,
          marginHorizontal: marginHorizontal ?? currentStyle.marginHorizontal,
          marginVertical: marginVertical ?? currentStyle.marginVertical,
          margin: margin ?? currentStyle.margin,
        ),
      ),

      ///
      /// get the padding.
      ///
      padding: getPaddingEdgeInsets(
        CommonContainerModel(
          paddingTop: paddingTop ?? currentStyle.paddingTop,
          paddingBottom: paddingBottom ?? currentStyle.paddingBottom,
          paddingLeft: paddingLeft ?? currentStyle.paddingLeft,
          paddingRight: paddingRight ?? currentStyle.paddingRight,
          paddingHorizontal:
              paddingHorizontal ?? currentStyle.paddingHorizontal,
          paddingVertical: paddingVertical ?? currentStyle.paddingVertical,
          padding: padding ?? currentStyle.padding,
        ),
      ),

      ///
      /// get the alignment for content.
      ///
      alignment: alignment ?? currentStyle.alignment,

      ///
      /// get the foreground decoration or
      ///  you can customer foregroundDecoration as you want.
      ///
      foregroundDecoration: foregroundDecoration ??
          currentStyle.foregroundDecoration ??
          BoxDecoration(
            image: foregroundImage ?? currentStyle.foregroundImage,
            gradient:
                foregroundBoxGradient ?? currentStyle.foregroundBoxGradient,
            backgroundBlendMode:
                foregroundBlendMode ?? currentStyle.foregroundBlendMode,
            shape: foregroundBoxShape ?? currentStyle.foregroundBoxShape!,
            border: _getForegroundBorder(),
            borderRadius: _getForegroundBorderRadius(),
            color: getColorType(
              foregroundColor ?? currentStyle.foregroundColor!,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: getColorType(
                  foregroundShadowColor ?? currentStyle.foregroundShadowColor!,
                ).withOpacity(
                  foregroundShadowOpacity ??
                      currentStyle.foregroundShadowOpacity!,
                ),
                spreadRadius: foregroundShadowSpreadRadius ??
                    currentStyle.foregroundShadowSpreadRadius!,
                blurRadius: foregroundShadowBlurRadius ??
                    currentStyle.foregroundShadowBlurRadius!,
                offset: Offset(
                  foregroundShadowOffsetDX ??
                      currentStyle.foregroundShadowOffsetDX!,
                  foregroundShadowOffsetDY ??
                      currentStyle.foregroundShadowOffsetDY!,
                ),
              )
            ],
          ),

      ///
      /// render minWidth, minHeight, maxWidth and maxHight.
      ///
      constraints: BoxConstraints(
        minWidth: minWidth != null
            ? _getResponsiveMinWidth()
            : currentStyle.getResponsiveMinWidth(),
        minHeight: minHeight != null
            ? _getResponsiveMinHeight()
            : currentStyle.getResponsiveMinHeight(),
        maxWidth: maxWidth != null
            ? _getResponsiveMaxWidth()
            : currentStyle.getResponsiveMaxWidth(),
        maxHeight: maxHeight != null
            ? _getResponsiveMaxHeight()
            : currentStyle.getResponsiveMaxHeight(),
      ),

      ///
      /// transform alignment for content.
      ///
      transformAlignment: transformAlignment ?? currentStyle.transformAlignment,

      ///
      /// transform  for content.
      ///
      transform: transform ?? currentStyle.transform,

      ///
      /// clipBehavior alignment for content.
      ///
      clipBehavior: clipBehavior ?? currentStyle.clipBehavior!,

      ///
      /// get the (decoration || backgroundDecoration) decoration or
      ///  you can customer (decoration || backgroundDecoration) as you want.
      ///
      decoration: decoration ??
          currentStyle.decoration ??
          BoxDecoration(
            image: backgroundImageDecoration ??
                ((backgroundImage ?? currentStyle.backgroundImage) != null
                    ? DecorationImage(
                        image:
                            ((backgroundImage ?? currentStyle.backgroundImage!)
                                    .contains('assets/')
                                ? AssetImage(
                                    backgroundImage ??
                                        currentStyle.backgroundImage!,
                                  )
                                : NetworkImage(
                                    backgroundImage ??
                                        currentStyle.backgroundImage!,
                                  )) as ImageProvider,
                        // fit: BoxFit.fitWidth,
                      )
                    : currentStyle.backgroundImageDecoration),
            gradient: boxGradient ?? currentStyle.boxGradient,
            backgroundBlendMode:
                backgroundBlendMode ?? currentStyle.backgroundBlendMode,
            shape: boxShape ?? currentStyle.boxShape!,
            border: _getBorder(),
            borderRadius: _getBorderRadius(),
            color: getColorType(
              backgroundColor ?? currentStyle.backgroundColor!,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: getColorType(shadowColor ?? currentStyle.shadowColor!)
                    .withOpacity(
                  shadowOpacity ?? currentStyle.shadowOpacity!,
                ),
                spreadRadius:
                    shadowSpreadRadius ?? currentStyle.shadowSpreadRadius!,
                blurRadius: shadowBlurRadius ?? currentStyle.shadowBlurRadius!,
                offset: Offset(
                  shadowOffsetDX ?? currentStyle.shadowOffsetDX!,
                  shadowOffsetDY ?? currentStyle.shadowOffsetDY!,
                ),
              )
            ],
          ),

      ///
      /// you can use loading condition to handel render error
      /// if data still null or you want wait the data from api.
      ///
      /// /// Align the [child] within the container.
      ///
      /// If non-null, the container will expand to fill its parent and position its
      /// child within itself according to the given value. If the incoming
      /// constraints are unbounded, then the child will be shrink-wrapped instead.
      ///
      /// Ignored if [child] is null.
      ///
      child: isLoading

          ///
          /// you can render custom loading widget or use the default loading.
          ///
          ? (loadingWidget ??
              CircularProgressIndicator(
                color: getColorType(
                  loadingColor ?? currentStyle.loadingColor!,
                ),
              ))

          ///
          /// the default value if loading false will be center widget.
          ///
          : (child ?? const Center()),
    );

    return onPress != null
        ? CommonTouchable(
            ///
            /// render function you can set (){} just to enable touchEffect animation.
            ///
            onTap: onPress,

            ///
            /// render the touchEffect when press the container.
            /// and you must use onPress function to use touchEffect.
            /// example :
            /// ```dart
            /// touchEffect: TouchEffect(
            ///  type: TouchTypes.scaleAndFade,
            ///  duration: 50,
            ///  lowerBound:0.9,
            ///  upperBound:1.3,
            ///  scaleValue:1.3,
            /// )
            /// ```
            ///
            touchEffect:
                touchEffect ?? currentStyle.touchEffect ?? TouchableEffect(),
            child: container,
          )
        : container;
  }
}
