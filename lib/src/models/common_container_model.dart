import 'package:flutter/widgets.dart';

import '../components/common_touchable/touchable_effect.dart';
import '../utils/index.dart';

class CommonContainerModel {
  const CommonContainerModel({
    //sizes
    this.width = 0.0,
    this.height = 0.0,
    this.minWidth = 0.0,
    this.minHeight = 0.0,
    this.maxWidth = double.infinity,
    this.maxHeight = double.infinity,

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
    this.padding = 0.0,
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.paddingLeft,
    this.paddingVertical,
    this.paddingHorizontal,

    ///
    /// Empty space to surround the [decoration] and [child].
    ///
    this.margin = 0.0,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,
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
    this.backgroundColor = COMMON_TRANSPARENT_COLOR,
    this.foregroundColor = COMMON_TRANSPARENT_COLOR,
    this.radiusColor = 0xFF000000,
    this.loadingColor = 0xFF1DD005,

    // shadow
    this.shadowSpreadRadius = 0.0,
    this.shadowBlurRadius = 0.0,
    this.shadowOffsetDX = 0.0,
    this.shadowOffsetDY = 0.0,
    this.shadowColor = 0xFF000000,
    this.shadowOpacity = 0.0,
    this.foregroundShadowSpreadRadius = 0.0,
    this.foregroundShadowBlurRadius = 0.0,
    this.foregroundShadowOffsetDX = 0.0,
    this.foregroundShadowOffsetDY = 0.0,
    this.foregroundShadowColor = 0xFF000000,
    this.foregroundShadowOpacity = 0.0,

    // Radius
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.borderRadius = 0.0,
    this.foregroundBottomLeftRadius,
    this.foregroundBottomRightRadius,
    this.foregroundTopLeftRadius,
    this.foregroundTopRightRadius,
    this.foregroundBorderRadius = 0.0,

    // clipBehavior
    this.clipBehavior = Clip.none,

    // transform
    ///
    /// * [Matrix4], the matrix to apply to the child.
    /// ex: Matrix4.skewX(-0.3)
    ///
    this.transform,

    // decoration
    ///
    /// * [Alignment], a class with convenient constants typically used to
    ///  specify an [AlignmentGeometry].
    /// * [AlignmentDirectional], like [Alignment] for specifying alignments
    /// relative to text direction.
    ///
    this.transformAlignment,

    // border
    this.borderStyle = BorderStyle.solid,
    this.borderTopStyle,
    this.borderRightStyle,
    this.borderBottomStyle,
    this.borderLeftStyle,
    this.borderWidth = 0.0,
    this.borderTopWidth,
    this.borderRightWidth,
    this.borderBottomWidth,
    this.borderLeftWidth,
    this.borderColor = 0xFF000000,
    this.borderTopColor,
    this.borderRightColor,
    this.borderBottomColor,
    this.borderLeftColor,
    this.foregroundBorderStyle = BorderStyle.solid,
    this.foregroundBorderTopStyle,
    this.foregroundBorderRightStyle,
    this.foregroundBorderBottomStyle,
    this.foregroundBorderLeftStyle,
    this.foregroundBorderWidth = 0.0,
    this.foregroundBorderTopWidth,
    this.foregroundBorderRightWidth,
    this.foregroundBorderBottomWidth,
    this.foregroundBorderLeftWidth,
    this.foregroundBorderColor = 0xFF000000,
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
    this.boxShape = BoxShape.rectangle,
    this.foregroundBoxShape = BoxShape.rectangle,

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

    // responsive numbers
    @Deprecated('We Used this just to use same width and height after version (0.3.5) you can use size property instead of width and height to use same with and height for')
        this.isResponsive = true,

    // size
    this.size,
  });

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
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  ///
  final AlignmentGeometry? alignment;

  ///
  /// The alignment of the origin, relative to the size of the container, if [transform] is specified.
  ///
  /// When [transform] is null, the value of this property is ignored.
  ///
  /// See also:
  ///
  ///  * [Transform.alignment], which is set by this property.
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

  ///backgroundImageDecoration image
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
  /// add true or false to enable or disable responsive numbers in the container.
  ///   default value is true
  ///
  final bool? isResponsive;

  ///
  /// check if the border is null or not.
  ///
  bool _checkBorderNull() =>
      borderTopWidth != null ||
      borderBottomWidth != null ||
      borderRightWidth != null ||
      borderLeftWidth != null;

  ///
  /// check if the foregroundBorder is null or not.
  ///
  bool _checkForegroundBorderNull() =>

      ///
      /// foreground border widths.
      ///
      foregroundBorderTopWidth != null ||
      foregroundBorderBottomWidth != null ||
      foregroundBorderRightWidth != null ||
      foregroundBorderLeftWidth != null;

  dynamic _getResponsiveBorderRadius(num value) => DEVICE_WIDTH * value;

  ///
  /// get border Radius.
  ///
  BorderRadius? getBorderRadius() =>
      (boxShape == BoxShape.circle || _checkBorderNull())
          ? null
          : (BorderRadius.only(
              topRight: Radius.circular(
                _getResponsiveBorderRadius(topRightRadius ?? borderRadius!),
              ),
              topLeft: Radius.circular(
                _getResponsiveBorderRadius(topLeftRadius ?? borderRadius!),
              ),
              bottomLeft: Radius.circular(
                _getResponsiveBorderRadius(bottomLeftRadius ?? borderRadius!),
              ),
              bottomRight: Radius.circular(
                _getResponsiveBorderRadius(bottomRightRadius ?? borderRadius!),
              ),
            ));

  ///
  /// get border Radius.
  ///
  BorderRadius? getForegroundBorderRadius() =>
      (foregroundBoxShape == BoxShape.circle || _checkForegroundBorderNull())
          ? null
          : (BorderRadius.only(
              topRight: Radius.circular(
                _getResponsiveBorderRadius(
                    foregroundTopRightRadius ?? foregroundBorderRadius!),
              ),
              topLeft: Radius.circular(
                _getResponsiveBorderRadius(
                    foregroundTopLeftRadius ?? foregroundBorderRadius!),
              ),
              bottomLeft: Radius.circular(
                _getResponsiveBorderRadius(
                    foregroundBottomLeftRadius ?? foregroundBorderRadius!),
              ),
              bottomRight: Radius.circular(
                _getResponsiveBorderRadius(
                    foregroundBottomRightRadius ?? foregroundBorderRadius!),
              ),
            ));

  ///
  /// get border width and color.
  ///
  Border? getBorder() => (borderWidth! > 0 || _checkBorderNull())
      ? Border(
          ///
          /// handel top border.
          ///
          top: ((borderTopWidth ?? borderWidth!) > 0)
              ? BorderSide(
                  color: getColorType(borderTopColor ?? borderColor!),
                  width: borderTopWidth ?? borderWidth!,
                  style: borderTopStyle ?? borderStyle!,
                )
              : BorderSide(color: getColorType(COMMON_TRANSPARENT_COLOR)),

          // ///
          // /// handel right border.
          // ///
          right: ((borderRightWidth ?? borderWidth!) > 0)
              ? BorderSide(
                  color: getColorType(borderRightColor ?? borderColor!),
                  width: borderRightWidth ?? borderWidth!,
                  style: borderRightStyle ?? borderStyle!,
                )
              : BorderSide(color: getColorType(COMMON_TRANSPARENT_COLOR)),

          ///
          /// handel bottom border.
          ///
          bottom: ((borderBottomWidth ?? borderWidth!) > 0)
              ? BorderSide(
                  color: getColorType(borderBottomColor ?? borderColor!),
                  width: borderBottomWidth ?? borderWidth!,
                  style: borderBottomStyle ?? borderStyle!,
                )
              : BorderSide(color: getColorType(COMMON_TRANSPARENT_COLOR)),

          ///
          /// handel left border.
          // ///
          left: ((borderLeftWidth ?? borderWidth!) > 0)
              ? BorderSide(
                  color: getColorType(borderLeftColor ?? borderColor!),
                  width: borderLeftWidth ?? borderWidth!,
                  style: borderLeftStyle ?? borderStyle!,
                )
              : BorderSide(color: getColorType(COMMON_TRANSPARENT_COLOR)),
        )

      ///
      /// or return null.
      ///
      : null;

  ///
  /// get border width and color.
  ///
  Border? getForegroundBorder() =>
      (foregroundBorderWidth! > 0 || _checkForegroundBorderNull())
          ? Border(
              ///
              /// handel top border.
              ///
              top: BorderSide(
                color: getColorType(
                    foregroundBorderTopColor ?? foregroundBorderColor!),
                width: foregroundBorderTopWidth ?? foregroundBorderWidth!,
                style: foregroundBorderTopStyle ?? foregroundBorderStyle!,
              ),

              ///
              /// handel right border.
              ///
              right: BorderSide(
                color: getColorType(
                    foregroundBorderRightColor ?? foregroundBorderColor!),
                width: foregroundBorderRightWidth ?? foregroundBorderWidth!,
                style: foregroundBorderRightStyle ?? foregroundBorderStyle!,
              ),

              ///
              /// handel bottom border.
              ///
              bottom: BorderSide(
                color: getColorType(
                    foregroundBorderBottomColor ?? foregroundBorderColor!),
                width: foregroundBorderBottomWidth ?? foregroundBorderWidth!,
                style: foregroundBorderBottomStyle ?? foregroundBorderStyle!,
              ),

              ///
              /// handel left border.
              ///
              left: BorderSide(
                color: getColorType(
                    foregroundBorderLeftColor ?? foregroundBorderColor!),
                width: foregroundBorderLeftWidth ?? foregroundBorderWidth!,
                style: foregroundBorderLeftStyle ?? foregroundBorderStyle!,
              ),
            )

          ///
          /// or return null.
          ///
          : null;

  /// handel container width.
  /// and return the container width
  ///  like responsive design if the value smaller than 1.
  double? getWidth() => size != null
      ? (DEVICE_WIDTH * size!)
      : width! <= 0.0
          ? null
          : (DEVICE_WIDTH * width!);

  /// handel container hight.
  /// and return the container hight
  ///  like responsive design if the value smaller than 1.
  double? getHeight() => size != null
      ? (DEVICE_WIDTH * size!)
      : height! <= 0.0
          ? null
          : (DEVICE_HEIGHT * height!);

  double getResponsiveMinWidth() => DEVICE_WIDTH * minWidth!;
  double getResponsiveMaxWidth() => DEVICE_WIDTH * maxWidth!;
  double getResponsiveMinHeight() => DEVICE_HEIGHT * minHeight!;
  double getResponsiveMaxHeight() => DEVICE_HEIGHT * maxHeight!;

  CommonContainerModel copyWith({
    double? width,
    double? height,
    double? minWidth,
    double? minHeight,
    double? maxWidth,
    double? maxHeight,
    double? size,
    double? padding,
    double? paddingTop,
    double? paddingBottom,
    double? paddingRight,
    double? paddingLeft,
    double? paddingVertical,
    double? paddingHorizontal,
    double? margin,
    double? marginTop,
    double? marginBottom,
    double? marginRight,
    double? marginLeft,
    double? marginVertical,
    double? marginHorizontal,
    double? shadowSpreadRadius,
    double? shadowBlurRadius,
    double? shadowOffsetDX,
    double? shadowOffsetDY,
    double? shadowOpacity,
    double? foregroundShadowSpreadRadius,
    double? foregroundShadowBlurRadius,
    double? foregroundShadowOffsetDX,
    double? foregroundShadowOffsetDY,
    double? foregroundShadowOpacity,
    double? bottomLeftRadius,
    double? bottomRightRadius,
    double? topLeftRadius,
    double? topRightRadius,
    double? borderRadius,
    double? borderWidth,
    double? borderTopWidth,
    double? borderBottomWidth,
    double? borderRightWidth,
    double? borderLeftWidth,
    double? foregroundBottomLeftRadius,
    double? foregroundBottomRightRadius,
    double? foregroundTopLeftRadius,
    double? foregroundTopRightRadius,
    double? foregroundBorderRadius,
    double? foregroundBorderWidth,
    double? foregroundBorderTopWidth,
    double? foregroundBorderBottomWidth,
    double? foregroundBorderRightWidth,
    double? foregroundBorderLeftWidth,
    dynamic radiusColor,
    dynamic shadowColor,
    dynamic backgroundColor,
    dynamic borderColor,
    dynamic borderTopColor,
    dynamic borderBottomColor,
    dynamic borderRightColor,
    dynamic borderLeftColor,
    dynamic loadingColor,
    dynamic foregroundShadowColor,
    dynamic foregroundColor,
    dynamic foregroundBorderColor,
    dynamic foregroundBorderTopColor,
    dynamic foregroundBorderBottomColor,
    dynamic foregroundBorderRightColor,
    dynamic foregroundBorderLeftColor,
    AlignmentGeometry? alignment,
    AlignmentGeometry? transformAlignment,
    Clip? clipBehavior,
    Matrix4? transform,
    BorderStyle? borderStyle,
    BorderStyle? borderTopStyle,
    BorderStyle? borderBottomStyle,
    BorderStyle? borderRightStyle,
    BorderStyle? borderLeftStyle,
    BorderStyle? foregroundBorderStyle,
    BorderStyle? foregroundBorderTopStyle,
    BorderStyle? foregroundBorderBottomStyle,
    BorderStyle? foregroundBorderRightStyle,
    BorderStyle? foregroundBorderLeftStyle,
    Decoration? foregroundDecoration,
    Decoration? decoration,
    BoxShape? boxShape,
    BoxShape? foregroundBoxShape,
    TouchableEffect? touchEffect,
    BlendMode? backgroundBlendMode,
    BlendMode? foregroundBlendMode,
    LinearGradient? boxGradient,
    LinearGradient? foregroundBoxGradient,
    DecorationImage? backgroundImageDecoration,
    String? backgroundImage,
    DecorationImage? foregroundImage,
  }) {
    return CommonContainerModel(
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      minHeight: minHeight ?? this.minHeight,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHeight: maxHeight ?? this.maxHeight,
      size: size ?? this.size,
      padding: padding ?? this.padding,
      paddingTop: paddingTop ?? this.paddingTop,
      paddingBottom: paddingBottom ?? this.paddingBottom,
      paddingRight: paddingRight ?? this.paddingRight,
      paddingLeft: paddingLeft ?? this.paddingLeft,
      paddingVertical: paddingVertical ?? this.paddingVertical,
      paddingHorizontal: paddingHorizontal ?? this.paddingHorizontal,
      margin: margin ?? this.margin,
      marginTop: marginTop ?? this.marginTop,
      marginBottom: marginBottom ?? this.marginBottom,
      marginRight: marginRight ?? this.marginRight,
      marginLeft: marginLeft ?? this.marginLeft,
      marginVertical: marginVertical ?? this.marginVertical,
      marginHorizontal: marginHorizontal ?? this.marginHorizontal,
      shadowSpreadRadius: shadowSpreadRadius ?? this.shadowSpreadRadius,
      shadowBlurRadius: shadowBlurRadius ?? this.shadowBlurRadius,
      shadowOffsetDX: shadowOffsetDX ?? this.shadowOffsetDX,
      shadowOffsetDY: shadowOffsetDY ?? this.shadowOffsetDY,
      shadowOpacity: shadowOpacity ?? this.shadowOpacity,
      foregroundShadowSpreadRadius:
          foregroundShadowSpreadRadius ?? this.foregroundShadowSpreadRadius,
      foregroundShadowBlurRadius:
          foregroundShadowBlurRadius ?? this.foregroundShadowBlurRadius,
      foregroundShadowOffsetDX:
          foregroundShadowOffsetDX ?? this.foregroundShadowOffsetDX,
      foregroundShadowOffsetDY:
          foregroundShadowOffsetDY ?? this.foregroundShadowOffsetDY,
      foregroundShadowOpacity:
          foregroundShadowOpacity ?? this.foregroundShadowOpacity,
      bottomLeftRadius: bottomLeftRadius ?? this.bottomLeftRadius,
      bottomRightRadius: bottomRightRadius ?? this.bottomRightRadius,
      topLeftRadius: topLeftRadius ?? this.topLeftRadius,
      topRightRadius: topRightRadius ?? this.topRightRadius,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      borderTopWidth: borderTopWidth ?? this.borderTopWidth,
      borderBottomWidth: borderBottomWidth ?? this.borderBottomWidth,
      borderRightWidth: borderRightWidth ?? this.borderRightWidth,
      borderLeftWidth: borderLeftWidth ?? this.borderLeftWidth,
      foregroundBottomLeftRadius:
          foregroundBottomLeftRadius ?? this.foregroundBottomLeftRadius,
      foregroundBottomRightRadius:
          foregroundBottomRightRadius ?? this.foregroundBottomRightRadius,
      foregroundTopLeftRadius:
          foregroundTopLeftRadius ?? this.foregroundTopLeftRadius,
      foregroundTopRightRadius:
          foregroundTopRightRadius ?? this.foregroundTopRightRadius,
      foregroundBorderRadius:
          foregroundBorderRadius ?? this.foregroundBorderRadius,
      foregroundBorderWidth:
          foregroundBorderWidth ?? this.foregroundBorderWidth,
      foregroundBorderTopWidth:
          foregroundBorderTopWidth ?? this.foregroundBorderTopWidth,
      foregroundBorderBottomWidth:
          foregroundBorderBottomWidth ?? this.foregroundBorderBottomWidth,
      foregroundBorderRightWidth:
          foregroundBorderRightWidth ?? this.foregroundBorderRightWidth,
      foregroundBorderLeftWidth:
          foregroundBorderLeftWidth ?? this.foregroundBorderLeftWidth,
      radiusColor: radiusColor ?? this.radiusColor,
      shadowColor: shadowColor ?? this.shadowColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderTopColor: borderTopColor ?? this.borderTopColor,
      borderBottomColor: borderBottomColor ?? this.borderBottomColor,
      borderRightColor: borderRightColor ?? this.borderRightColor,
      borderLeftColor: borderLeftColor ?? this.borderLeftColor,
      loadingColor: loadingColor ?? this.loadingColor,
      foregroundShadowColor:
          foregroundShadowColor ?? this.foregroundShadowColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundBorderColor:
          foregroundBorderColor ?? this.foregroundBorderColor,
      foregroundBorderTopColor:
          foregroundBorderTopColor ?? this.foregroundBorderTopColor,
      foregroundBorderBottomColor:
          foregroundBorderBottomColor ?? this.foregroundBorderBottomColor,
      foregroundBorderRightColor:
          foregroundBorderRightColor ?? this.foregroundBorderRightColor,
      foregroundBorderLeftColor:
          foregroundBorderLeftColor ?? this.foregroundBorderLeftColor,
      alignment: alignment ?? this.alignment,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      transform: transform ?? this.transform,
      borderStyle: borderStyle ?? this.borderStyle,
      borderTopStyle: borderTopStyle ?? this.borderTopStyle,
      borderBottomStyle: borderBottomStyle ?? this.borderBottomStyle,
      borderRightStyle: borderRightStyle ?? this.borderRightStyle,
      borderLeftStyle: borderLeftStyle ?? this.borderLeftStyle,
      foregroundBorderStyle:
          foregroundBorderStyle ?? this.foregroundBorderStyle,
      foregroundBorderTopStyle:
          foregroundBorderTopStyle ?? this.foregroundBorderTopStyle,
      foregroundBorderBottomStyle:
          foregroundBorderBottomStyle ?? this.foregroundBorderBottomStyle,
      foregroundBorderRightStyle:
          foregroundBorderRightStyle ?? this.foregroundBorderRightStyle,
      foregroundBorderLeftStyle:
          foregroundBorderLeftStyle ?? this.foregroundBorderLeftStyle,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      decoration: decoration ?? this.decoration,
      boxShape: boxShape ?? this.boxShape,
      foregroundBoxShape: foregroundBoxShape ?? this.foregroundBoxShape,
      touchEffect: touchEffect ?? this.touchEffect,
      backgroundBlendMode: backgroundBlendMode ?? this.backgroundBlendMode,
      foregroundBlendMode: foregroundBlendMode ?? this.foregroundBlendMode,
      boxGradient: boxGradient ?? this.boxGradient,
      foregroundBoxGradient:
          foregroundBoxGradient ?? this.foregroundBoxGradient,
      backgroundImageDecoration:
          backgroundImageDecoration ?? this.backgroundImageDecoration,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      foregroundImage: foregroundImage ?? this.foregroundImage,
    );
  }
}
