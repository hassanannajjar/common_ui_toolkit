import 'package:flutter/widgets.dart';

import '../components/common_touchable/TouchableEffect.dart';
import '../utils/index.dart';

class CommonContainerModel {
  CommonContainerModel({
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
    this.foregroundRadiusColor = 0xFF000000,
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
    this.transform,
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
    this.backgroundImage,

    // responsive numbers
    this.isResponsive = true,
  });

  //sizes
  double? width;
  double? height;
  double? minWidth;
  double? minHeight;
  double? maxWidth;
  double? maxHeight;

  // padding
  double? padding;
  double? paddingTop;
  double? paddingBottom;
  double? paddingRight;
  double? paddingLeft;
  double? paddingVertical;
  double? paddingHorizontal;

  ///
  /// margin for all container
  ///
  ///
  double? margin;

  ///
  /// margin for top container
  ///
  double? marginTop;

  ///
  /// margin for bottom container
  ///
  double? marginBottom;

  ///
  /// margin for right container
  ///
  double? marginRight;

  ///
  /// margin for left container
  ///
  double? marginLeft;

  ///
  /// margin for (top and bottom|| Vertical)  container
  ///
  double? marginVertical;

  ///
  /// margin for (right and left || Horizontal) container
  ///
  double? marginHorizontal;

  // shadow
  double? shadowSpreadRadius;
  double? shadowBlurRadius;
  double? shadowOffsetDX;
  double? shadowOffsetDY;
  double? shadowOpacity;

  double? foregroundShadowSpreadRadius;
  double? foregroundShadowBlurRadius;
  double? foregroundShadowOffsetDX;
  double? foregroundShadowOffsetDY;
  double? foregroundShadowOpacity;

  // Radius
  double? bottomLeftRadius;
  double? bottomRightRadius;
  double? topLeftRadius;
  double? topRightRadius;
  double? borderRadius;
  double? borderWidth;
  double? borderTopWidth;
  double? borderBottomWidth;
  double? borderRightWidth;
  double? borderLeftWidth;

  double? foregroundBottomLeftRadius;
  double? foregroundBottomRightRadius;
  double? foregroundTopLeftRadius;
  double? foregroundTopRightRadius;
  double? foregroundBorderRadius;
  double? foregroundBorderWidth;
  double? foregroundBorderTopWidth;
  double? foregroundBorderBottomWidth;
  double? foregroundBorderRightWidth;
  double? foregroundBorderLeftWidth;

  // colors
  dynamic radiusColor;
  dynamic shadowColor;
  dynamic backgroundColor;
  dynamic borderColor;
  dynamic borderTopColor;
  dynamic borderBottomColor;
  dynamic borderRightColor;
  dynamic borderLeftColor;
  dynamic loadingColor;

  dynamic foregroundRadiusColor;
  dynamic foregroundShadowColor;
  dynamic foregroundColor;
  dynamic foregroundBorderColor;
  dynamic foregroundBorderTopColor;
  dynamic foregroundBorderBottomColor;
  dynamic foregroundBorderRightColor;
  dynamic foregroundBorderLeftColor;

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
  AlignmentGeometry? alignment;

  ///
  /// The alignment of the origin, relative to the size of the container, if [transform] is specified.
  ///
  /// When [transform] is null, the value of this property is ignored.
  ///
  /// See also:
  ///
  ///  * [Transform.alignment], which is set by this property.
  ///
  Alignment? transformAlignment;

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
  Clip? clipBehavior;

  ///
  /// The transformation matrix to apply before painting the container.
  ///
  Matrix4? transform;

  BorderStyle? borderStyle;
  BorderStyle? borderTopStyle;
  BorderStyle? borderBottomStyle;
  BorderStyle? borderRightStyle;
  BorderStyle? borderLeftStyle;

  BorderStyle? foregroundBorderStyle;
  BorderStyle? foregroundBorderTopStyle;
  BorderStyle? foregroundBorderBottomStyle;
  BorderStyle? foregroundBorderRightStyle;
  BorderStyle? foregroundBorderLeftStyle;

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
  Decoration? foregroundDecoration;

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
  Decoration? decoration;

  ///
  /// BoxShape
  /// default value its [BoxShape.rectangle]
  /// example :
  /// ```dart
  /// boxShape: BoxShape.circle
  BoxShape? boxShape;

  /// or
  /// foregroundBoxShape: BoxShape.circle
  BoxShape? foregroundBoxShape;

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
  TouchableEffect? touchEffect;

  ///
  /// BlendMode for background image
  ///
  BlendMode? backgroundBlendMode;

  ///
  /// BlendMode for foreground image
  ///
  BlendMode? foregroundBlendMode;

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
  LinearGradient? boxGradient;
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
  LinearGradient? foregroundBoxGradient;

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
  DecorationImage? backgroundImage;

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
  DecorationImage? foregroundImage;

  ///
  /// add true or false to enable or disable responsive numbers in the container.
  ///   default value is true
  ///
  bool? isResponsive;

  ///
  /// check if the border is null or not.
  ///
  bool checkBorderNull() =>
      borderTopWidth != null ||
      borderBottomWidth != null ||
      borderRightWidth != null ||
      borderLeftWidth != null;

  ///
  /// check if the foregroundBorder is null or not.
  ///
  bool checkForegroundBorderNull() =>

      ///
      /// foreground border widths.
      ///
      foregroundBorderTopWidth != null ||
      foregroundBorderBottomWidth != null ||
      foregroundBorderRightWidth != null ||
      foregroundBorderLeftWidth != null;

  dynamic getResponsiveBorderRadius(num value) =>
      isResponsive! ? DEVICE_WIDTH * value : value;

  ///
  /// get border Radius.
  ///
  BorderRadius? getBorderRadius() =>
      (boxShape == BoxShape.circle || checkBorderNull())
          ? null
          : (BorderRadius.only(
              topRight: Radius.circular(
                getResponsiveBorderRadius(topRightRadius ?? borderRadius!),
              ),
              topLeft: Radius.circular(
                getResponsiveBorderRadius(topLeftRadius ?? borderRadius!),
              ),
              bottomLeft: Radius.circular(
                getResponsiveBorderRadius(bottomLeftRadius ?? borderRadius!),
              ),
              bottomRight: Radius.circular(
                getResponsiveBorderRadius(bottomRightRadius ?? borderRadius!),
              ),
            ));

  ///
  /// get border Radius.
  ///
  BorderRadius? getForegroundBorderRadius() =>
      (foregroundBoxShape == BoxShape.circle || checkForegroundBorderNull())
          ? null
          : (BorderRadius.only(
              topRight: Radius.circular(
                getResponsiveBorderRadius(
                    foregroundTopRightRadius ?? foregroundBorderRadius!),
              ),
              topLeft: Radius.circular(
                getResponsiveBorderRadius(
                    foregroundTopLeftRadius ?? foregroundBorderRadius!),
              ),
              bottomLeft: Radius.circular(
                getResponsiveBorderRadius(
                    foregroundBottomLeftRadius ?? foregroundBorderRadius!),
              ),
              bottomRight: Radius.circular(
                getResponsiveBorderRadius(
                    foregroundBottomRightRadius ?? foregroundBorderRadius!),
              ),
            ));

  ///
  /// get border width and color.
  ///
  Border? getBorder() => (borderWidth! > 0 || checkBorderNull())
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
      (foregroundBorderWidth! > 0 || checkForegroundBorderNull())
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
  double? getWidth() => width! <= 0.0
      ? null
      : isResponsive!
          ? DEVICE_WIDTH * width!

          /// the default value for width is null
          ///  and this mean expanded as content.
          : width!;

  /// handel container hight.
  /// and return the container hight
  ///  like responsive design if the value smaller than 1.
  double? getHeight() => height! <= 0.0
      ? null
      : isResponsive!
          ? DEVICE_HEIGHT * height!

          /// the default value for width is null
          ///  and this mean expanded as content.
          : height!;

  double getResponsiveMinWidth() =>
      isResponsive! ? DEVICE_WIDTH * minWidth! : minWidth!;
  double getResponsiveMaxWidth() => isResponsive! && maxWidth != double.infinity
      ? DEVICE_WIDTH * maxWidth!
      : maxWidth!;
  double getResponsiveMinHeight() =>
      isResponsive! ? DEVICE_HEIGHT * minHeight! : minHeight!;
  double getResponsiveMaxHeight() =>
      isResponsive! && maxHeight != double.infinity
          ? DEVICE_HEIGHT * maxHeight!
          : maxHeight!;

  CommonContainerModel copyWith({
    double? width,
    double? height,
    double? minWidth,
    double? minHeight,
    double? maxWidth,
    double? maxHeight,
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

    /// To use shadow opacity the color must be Color type not Material Color type
    /// Color Type
    /// (e.g. Color(0xFF000000))
    /// Material Color Type
    /// in material color type you can add your opacity with the color name like this
    /// (e.g. Colors.black87)
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
    dynamic foregroundRadiusColor,
    dynamic foregroundShadowColor,
    dynamic foregroundColor,
    dynamic foregroundBorderColor,
    dynamic foregroundBorderTopColor,
    dynamic foregroundBorderBottomColor,
    dynamic foregroundBorderRightColor,
    dynamic foregroundBorderLeftColor,
    AlignmentGeometry? alignment,
    Alignment? transformAlignment,
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
    DecorationImage? backgroundImage,
    DecorationImage? foregroundImage,
    bool? isResponsive,
  }) {
    return CommonContainerModel(
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      minHeight: minHeight ?? this.minHeight,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHeight: maxHeight ?? this.maxHeight,
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
      foregroundRadiusColor:
          foregroundRadiusColor ?? this.foregroundRadiusColor,
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
      backgroundImage: backgroundImage ?? this.backgroundImage,
      foregroundImage: foregroundImage ?? this.foregroundImage,
      isResponsive: isResponsive ?? this.isResponsive,
    );
  }
}
