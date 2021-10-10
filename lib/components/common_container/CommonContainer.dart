import 'package:flutter/material.dart';

import '../../index.dart';
import '../../utils/Helper.dart';
import '../../models/CommonContainerModel.dart';

class CommonContainer extends StatelessWidget {
  ///
  /// child widget.
  ///
  final Widget? child;

  ///
  /// custome loading widget.
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
  /// CommonContainerStyle().bottomShadow
  /// or
  /// CommonContainerStyle().fullShadow
  /// ```
  ///
  CommonContainerModel? style;

  ///
  /// handel the data after loading and check if the data null or not.
  ///
  bool? isLoading;

  ///
  /// handel opPress function
  ///
  Function? onPress;

  CommonContainer({
    this.style,
    this.onPress,
    this.child,
    this.loadingWidget,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    ///
    /// handel default style if the style null.
    ///
    style = style ?? CommonContainerModel();

    return CommonTouchable(
      ///
      /// render function you can set (){} just to ebable touchEffect animation.
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
      touchEffect: style!.touchEffect ?? TouchableEffect(),
      child: Container(
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
        child: isLoading!

            ///
            /// you can render custome loading widget or use the default loading.
            ///
            ? (loadingWidget ??
                CircularProgressIndicator(
                  color: getColorType(style!.loadingColor!),
                ))

            ///
            /// the default value if loading false will be center widget.
            ///
            : (child ?? Center()),

        ///
        /// get the width.
        ///
        width: style!.getWidth(),

        ///
        /// get the height.
        ///
        height: style!.getHeight(),

        ///
        /// get the margin.
        ///
        margin: getMarginEdgeInsets(style),

        ///
        /// get the padding.
        ///
        padding: getPaddingEdgeInsets(style),

        ///
        /// get the alignment for content.
        ///
        alignment: style!.alignment,

        ///
        /// get the foreground decoration or
        ///  you can customer foregroundDecoration as you want.
        ///
        foregroundDecoration: style!.foregroundDecoration ??
            BoxDecoration(
              image: style!.foregroundImage,
              gradient: style!.foregroundboxGradient,
              backgroundBlendMode: style!.foregroundBlendMode,
              shape: style!.foregroundboxShape!,
              border: style!.getforegroundBorder(),
              borderRadius: style!.getForegroundBorderRadius(),
              color: getColorType(style!.foregroundColor!),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color:
                      getColorType(style!.foregroundshadowColor!).runtimeType ==
                              MaterialColor
                          ? getColorType(style!.foregroundshadowColor!)
                          : getColorType(style!.foregroundshadowColor!)
                              .withOpacity(style!.foregroundshadowOpacity!),
                  spreadRadius: style!.foregroundshadowSpreadRadius!,
                  blurRadius: style!.foregroundshadowbBlurRadius!,
                  offset: Offset(
                    style!.foregroundshadowOffsetDX!,
                    style!.foregroundshadowOffsetDY!,
                  ),
                )
              ],
            ),

        ///
        /// render minwidth, minheight, maxwidth and maxhight.
        ///
        constraints: BoxConstraints(
          minWidth: style!.minWidth!,
          minHeight: style!.minHieght!,
          maxWidth: style!.maxWidth!,
          maxHeight: style!.maxHieght!,
        ),

        ///
        /// transofrm alignment for content.
        ///
        transformAlignment: style!.transformAlignment,

        ///
        /// transofrm  for content.
        ///
        transform: style!.transform,

        ///
        /// clipBehavior alignment for content.
        ///
        clipBehavior: style!.clipBehavior!,

        ///
        /// get the (decoration || backdecoration) decoration or
        ///  you can customer (decoration || backdecoration) as you want.
        ///
        decoration: style!.decoration ??
            BoxDecoration(
              image: style!.backgroundImage,
              gradient: style!.boxGradient,
              backgroundBlendMode: style!.backgroundBlendMode,
              shape: style!.boxShape!,
              border: style!.getBorder(),
              borderRadius: style!.getBorderRadius(),
              color: getColorType(style!.backgroundColor!),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: getColorType(style!.shadowColor!).runtimeType ==
                          MaterialColor
                      ? getColorType(style!.shadowColor!)
                      : getColorType(style!.shadowColor!)
                          .withOpacity(style!.shadowOpacity!),
                  spreadRadius: style!.shadowSpreadRadius!,
                  blurRadius: style!.shadowbBlurRadius!,
                  offset: Offset(
                    style!.shadowOffsetDX!,
                    style!.shadowOffsetDY!,
                  ),
                )
              ],
            ),
      ),
    );
  }
}
