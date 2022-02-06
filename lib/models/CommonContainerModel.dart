import 'package:flutter/widgets.dart';

import 'package:common_ui_toolkit/components/common_touchable/TouchableEffect.dart';

import '../utils/index.dart';

class CommonContainerModel {
  //sizes
  double? width;
  double? height;
  double? minWidth;
  double? minHieght;
  double? maxWidth;
  double? maxHieght;

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
  double? shadowbBlurRadius;
  double? shadowOffsetDX;
  double? shadowOffsetDY;
  double? shadowOpacity;

  double? foregroundshadowSpreadRadius;
  double? foregroundshadowbBlurRadius;
  double? foregroundshadowOffsetDX;
  double? foregroundshadowOffsetDY;
  double? foregroundshadowOpacity;

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

  double? foregroundbottomLeftRadius;
  double? foregroundbottomRightRadius;
  double? foregroundtopLeftRadius;
  double? foregroundtopRightRadius;
  double? foregroundborderRadius;
  double? foregroundborderWidth;
  double? foregroundborderTopWidth;
  double? foregroundborderBottomWidth;
  double? foregroundborderRightWidth;
  double? foregroundborderLeftWidth;

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
  dynamic foregroundshadowColor;
  dynamic foregroundColor;
  dynamic foregroundborderColor;
  dynamic foregroundborderTopColor;
  dynamic foregroundborderBottomColor;
  dynamic foregroundborderRightColor;
  dynamic foregroundborderLeftColor;

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

  BorderStyle? foregroundborderStyle;
  BorderStyle? foregroundborderTopStyle;
  BorderStyle? foregroundborderBottomStyle;
  BorderStyle? foregroundborderRightStyle;
  BorderStyle? foregroundborderLeftStyle;

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
  /// foregroundboxShape: BoxShape.circle
  BoxShape? foregroundboxShape;

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
  ///foregroundboxGradient
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
  LinearGradient? foregroundboxGradient;

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
  checkBorderNull() =>
      borderTopWidth != null ||
      borderBottomWidth != null ||
      borderRightWidth != null ||
      borderLeftWidth != null;

  ///
  /// check if the foregroundborder is null or not.
  ///
  checkforegroundBorderNull() =>

      ///
      /// foreground border widths.
      ///
      foregroundborderTopWidth != null ||
      foregroundborderBottomWidth != null ||
      foregroundborderRightWidth != null ||
      foregroundborderLeftWidth != null;

  getResponsivBorderRadius(value) =>
      isResponsive! ? DEVICE_WIDTH * value : value;

  ///
  /// get border Radius.
  ///
  getBorderRadius() => (boxShape == BoxShape.circle || checkBorderNull())
      ? null
      : (borderRadius == 0

          ///
          /// return every single Radius.
          ///
          ? BorderRadius.only(
              topRight:
                  Radius.circular(getResponsivBorderRadius(topRightRadius!)),
              topLeft:
                  Radius.circular(getResponsivBorderRadius(topLeftRadius!)),
              bottomLeft:
                  Radius.circular(getResponsivBorderRadius(bottomLeftRadius!)),
              bottomRight:
                  Radius.circular(getResponsivBorderRadius(bottomRightRadius!)),
            )

          ///
          /// return all Radius.
          ///
          : BorderRadius.all(
              Radius.circular(getResponsivBorderRadius(borderRadius!)),
            ));

  ///
  /// get border Radius.
  ///
  getForegroundBorderRadius() =>
      (foregroundboxShape == BoxShape.circle || checkforegroundBorderNull())
          ? null
          : (foregroundborderRadius == 0

              ///
              /// return every single Radius.
              ///
              ? BorderRadius.only(
                  topRight: Radius.circular(
                      getResponsivBorderRadius(foregroundtopRightRadius!)),
                  topLeft: Radius.circular(
                      getResponsivBorderRadius(foregroundtopLeftRadius!)),
                  bottomLeft: Radius.circular(
                      getResponsivBorderRadius(foregroundbottomLeftRadius!)),
                  bottomRight: Radius.circular(
                      getResponsivBorderRadius(foregroundbottomRightRadius!)),
                )

              ///
              /// return all Radius.
              ///
              : BorderRadius.all(
                  Radius.circular(
                      getResponsivBorderRadius(foregroundborderRadius!)),
                ));

  ///
  /// get border width and color.
  ///
  getBorder() => (borderWidth! > 0 || checkBorderNull())
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
  getforegroundBorder() =>
      (foregroundborderWidth! > 0 || checkforegroundBorderNull())
          ? Border(
              ///
              /// handel top border.
              ///
              top: BorderSide(
                color: getColorType(
                    foregroundborderTopColor ?? foregroundborderColor!),
                width: foregroundborderTopWidth ?? foregroundborderWidth!,
                style: foregroundborderTopStyle ?? foregroundborderStyle!,
              ),

              ///
              /// handel right border.
              ///
              right: BorderSide(
                color: getColorType(
                    foregroundborderRightColor ?? foregroundborderColor!),
                width: foregroundborderRightWidth ?? foregroundborderWidth!,
                style: foregroundborderRightStyle ?? foregroundborderStyle!,
              ),

              ///
              /// handel bottom border.
              ///
              bottom: BorderSide(
                color: getColorType(
                    foregroundborderBottomColor ?? foregroundborderColor!),
                width: foregroundborderBottomWidth ?? foregroundborderWidth!,
                style: foregroundborderBottomStyle ?? foregroundborderStyle!,
              ),

              ///
              /// handel left border.
              ///
              left: BorderSide(
                color: getColorType(
                    foregroundborderLeftColor ?? foregroundborderColor!),
                width: foregroundborderLeftWidth ?? foregroundborderWidth!,
                style: foregroundborderLeftStyle ?? foregroundborderStyle!,
              ),
            )

          ///
          /// or return null.
          ///
          : null;

  /// handel container width.
  /// and return the container width
  ///  like responsive design if the value smaller than 1.
  getWidth() => width! <= 0.0
      ? null
      : isResponsive!
          ? DEVICE_WIDTH * width!

          /// the defaul value for witdh is null
          ///  and this mean expanded as contet.
          : width!;

  /// handel container hight.
  /// and return the container hight
  ///  like responsive design if the value smaller than 1.
  getHeight() => height! <= 0.0
      ? null
      : isResponsive!
          ? DEVICE_HEIGHT * height!

          /// the defaul value for witdh is null
          ///  and this mean expanded as contet.
          : height!;

  getResponsiveMinWidth() =>
      isResponsive! ? DEVICE_WIDTH * minWidth! : minWidth!;
  getResponsiveMaxWidth() => isResponsive! && maxWidth != double.infinity
      ? DEVICE_WIDTH * maxWidth!
      : maxWidth!;
  getResponsiveMinHieght() =>
      isResponsive! ? DEVICE_HEIGHT * minHieght! : minHieght!;
  getResponsiveMaxHieght() => isResponsive! && maxHieght != double.infinity
      ? DEVICE_HEIGHT * maxHieght!
      : maxHieght!;

  CommonContainerModel({
    //sizes
    this.width = 0.0,
    this.height = 0.0,
    this.minWidth = 0.0,
    this.minHieght = 0.0,
    this.maxWidth = double.infinity,
    this.maxHieght = double.infinity,

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
    this.shadowbBlurRadius = 0.0,
    this.shadowOffsetDX = 0.0,
    this.shadowOffsetDY = 0.0,
    this.shadowColor = 0xFF000000,
    this.shadowOpacity = 0.0,
    this.foregroundshadowSpreadRadius = 0.0,
    this.foregroundshadowbBlurRadius = 0.0,
    this.foregroundshadowOffsetDX = 0.0,
    this.foregroundshadowOffsetDY = 0.0,
    this.foregroundshadowColor = 0xFF000000,
    this.foregroundshadowOpacity = 0.0,

    // Radius
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.borderRadius = 0.0,
    this.foregroundbottomLeftRadius = 0.0,
    this.foregroundbottomRightRadius = 0.0,
    this.foregroundtopLeftRadius = 0.0,
    this.foregroundtopRightRadius = 0.0,
    this.foregroundborderRadius = 0.0,

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
    this.foregroundborderStyle = BorderStyle.solid,
    this.foregroundborderTopStyle,
    this.foregroundborderRightStyle,
    this.foregroundborderBottomStyle,
    this.foregroundborderLeftStyle,
    this.foregroundborderWidth = 0.0,
    this.foregroundborderTopWidth,
    this.foregroundborderRightWidth,
    this.foregroundborderBottomWidth,
    this.foregroundborderLeftWidth,
    this.foregroundborderColor = 0xFF000000,
    this.foregroundborderTopColor,
    this.foregroundborderRightColor,
    this.foregroundborderBottomColor,
    this.foregroundborderLeftColor,

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
    this.foregroundboxShape = BoxShape.rectangle,

    // touchEffect
    this.touchEffect,

    // blendMode
    this.backgroundBlendMode,
    this.foregroundBlendMode,

    // box gradient
    this.boxGradient,
    this.foregroundboxGradient,

    // image
    this.foregroundImage,
    this.backgroundImage,

    // responsive numbers
    this.isResponsive = true,
  });

  CommonContainerModel copyWith({
    double? width,
    double? height,
    double? minWidth,
    double? minHieght,
    double? maxWidth,
    double? maxHieght,
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
    double? shadowbBlurRadius,
    double? shadowOffsetDX,
    double? shadowOffsetDY,

    /// To use shadow opacity the color must be Color type not Material Color type
    /// Color Type
    /// (e.g. Color(0xFF000000))
    /// Material Color Type
    /// in material color type you can add your opacity with the color name like this
    /// (e.g. Colors.black87)
    double? shadowOpacity,
    double? foregroundshadowSpreadRadius,
    double? foregroundshadowbBlurRadius,
    double? foregroundshadowOffsetDX,
    double? foregroundshadowOffsetDY,
    double? foregroundshadowOpacity,
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
    double? foregroundbottomLeftRadius,
    double? foregroundbottomRightRadius,
    double? foregroundtopLeftRadius,
    double? foregroundtopRightRadius,
    double? foregroundborderRadius,
    double? foregroundborderWidth,
    double? foregroundborderTopWidth,
    double? foregroundborderBottomWidth,
    double? foregroundborderRightWidth,
    double? foregroundborderLeftWidth,
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
    dynamic foregroundshadowColor,
    dynamic foregroundColor,
    dynamic foregroundborderColor,
    dynamic foregroundborderTopColor,
    dynamic foregroundborderBottomColor,
    dynamic foregroundborderRightColor,
    dynamic foregroundborderLeftColor,
    AlignmentGeometry? alignment,
    Alignment? transformAlignment,
    Clip? clipBehavior,
    Matrix4? transform,
    BorderStyle? borderStyle,
    BorderStyle? borderTopStyle,
    BorderStyle? borderBottomStyle,
    BorderStyle? borderRightStyle,
    BorderStyle? borderLeftStyle,
    BorderStyle? foregroundborderStyle,
    BorderStyle? foregroundborderTopStyle,
    BorderStyle? foregroundborderBottomStyle,
    BorderStyle? foregroundborderRightStyle,
    BorderStyle? foregroundborderLeftStyle,
    Decoration? foregroundDecoration,
    Decoration? decoration,
    BoxShape? boxShape,
    BoxShape? foregroundboxShape,
    TouchableEffect? touchEffect,
    BlendMode? backgroundBlendMode,
    BlendMode? foregroundBlendMode,
    LinearGradient? boxGradient,
    LinearGradient? foregroundboxGradient,
    DecorationImage? backgroundImage,
    DecorationImage? foregroundImage,
    bool? isResponsive,
  }) {
    return CommonContainerModel(
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      minHieght: minHieght ?? this.minHieght,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHieght: maxHieght ?? this.maxHieght,
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
      shadowbBlurRadius: shadowbBlurRadius ?? this.shadowbBlurRadius,
      shadowOffsetDX: shadowOffsetDX ?? this.shadowOffsetDX,
      shadowOffsetDY: shadowOffsetDY ?? this.shadowOffsetDY,
      shadowOpacity: shadowOpacity ?? this.shadowOpacity,
      foregroundshadowSpreadRadius:
          foregroundshadowSpreadRadius ?? this.foregroundshadowSpreadRadius,
      foregroundshadowbBlurRadius:
          foregroundshadowbBlurRadius ?? this.foregroundshadowbBlurRadius,
      foregroundshadowOffsetDX:
          foregroundshadowOffsetDX ?? this.foregroundshadowOffsetDX,
      foregroundshadowOffsetDY:
          foregroundshadowOffsetDY ?? this.foregroundshadowOffsetDY,
      foregroundshadowOpacity:
          foregroundshadowOpacity ?? this.foregroundshadowOpacity,
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
      foregroundbottomLeftRadius:
          foregroundbottomLeftRadius ?? this.foregroundbottomLeftRadius,
      foregroundbottomRightRadius:
          foregroundbottomRightRadius ?? this.foregroundbottomRightRadius,
      foregroundtopLeftRadius:
          foregroundtopLeftRadius ?? this.foregroundtopLeftRadius,
      foregroundtopRightRadius:
          foregroundtopRightRadius ?? this.foregroundtopRightRadius,
      foregroundborderRadius:
          foregroundborderRadius ?? this.foregroundborderRadius,
      foregroundborderWidth:
          foregroundborderWidth ?? this.foregroundborderWidth,
      foregroundborderTopWidth:
          foregroundborderTopWidth ?? this.foregroundborderTopWidth,
      foregroundborderBottomWidth:
          foregroundborderBottomWidth ?? this.foregroundborderBottomWidth,
      foregroundborderRightWidth:
          foregroundborderRightWidth ?? this.foregroundborderRightWidth,
      foregroundborderLeftWidth:
          foregroundborderLeftWidth ?? this.foregroundborderLeftWidth,
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
      foregroundshadowColor:
          foregroundshadowColor ?? this.foregroundshadowColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundborderColor:
          foregroundborderColor ?? this.foregroundborderColor,
      foregroundborderTopColor:
          foregroundborderTopColor ?? this.foregroundborderTopColor,
      foregroundborderBottomColor:
          foregroundborderBottomColor ?? this.foregroundborderBottomColor,
      foregroundborderRightColor:
          foregroundborderRightColor ?? this.foregroundborderRightColor,
      foregroundborderLeftColor:
          foregroundborderLeftColor ?? this.foregroundborderLeftColor,
      alignment: alignment ?? this.alignment,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      transform: transform ?? this.transform,
      borderStyle: borderStyle ?? this.borderStyle,
      borderTopStyle: borderTopStyle ?? this.borderTopStyle,
      borderBottomStyle: borderBottomStyle ?? this.borderBottomStyle,
      borderRightStyle: borderRightStyle ?? this.borderRightStyle,
      borderLeftStyle: borderLeftStyle ?? this.borderLeftStyle,
      foregroundborderStyle:
          foregroundborderStyle ?? this.foregroundborderStyle,
      foregroundborderTopStyle:
          foregroundborderTopStyle ?? this.foregroundborderTopStyle,
      foregroundborderBottomStyle:
          foregroundborderBottomStyle ?? this.foregroundborderBottomStyle,
      foregroundborderRightStyle:
          foregroundborderRightStyle ?? this.foregroundborderRightStyle,
      foregroundborderLeftStyle:
          foregroundborderLeftStyle ?? this.foregroundborderLeftStyle,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      decoration: decoration ?? this.decoration,
      boxShape: boxShape ?? this.boxShape,
      foregroundboxShape: foregroundboxShape ?? this.foregroundboxShape,
      touchEffect: touchEffect ?? this.touchEffect,
      backgroundBlendMode: backgroundBlendMode ?? this.backgroundBlendMode,
      foregroundBlendMode: foregroundBlendMode ?? this.foregroundBlendMode,
      boxGradient: boxGradient ?? this.boxGradient,
      foregroundboxGradient:
          foregroundboxGradient ?? this.foregroundboxGradient,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      foregroundImage: foregroundImage ?? this.foregroundImage,
      isResponsive: isResponsive ?? this.isResponsive,
    );
  }
}
