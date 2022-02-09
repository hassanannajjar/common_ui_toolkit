import '../../index.dart';

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
  final CommonContainerModel? style;

  ///
  /// handel the data after loading and check if the data null or not.
  ///
  final bool? isLoading;

  ///
  /// handel opPress function
  ///
  final Function? onPress;

  const CommonContainer({
    this.style,
    this.onPress,
    this.child,
    this.loadingWidget,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    CommonContainerModel? defaultContainerStyle = CommonContainerModel();

    ///
    /// handel default style if the style null.
    ///

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
      touchEffect:
          (style ?? defaultContainerStyle).touchEffect ?? TouchableEffect(),
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
                  color: getColorType(
                      (style ?? defaultContainerStyle).loadingColor!),
                ))

            ///
            /// the default value if loading false will be center widget.
            ///
            : (child ?? Center()),

        ///
        /// get the width.
        ///
        width: (style ?? defaultContainerStyle).getWidth(),

        ///
        /// get the height.
        ///
        height: (style ?? defaultContainerStyle).getHeight(),

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
        alignment: (style ?? defaultContainerStyle).alignment,

        ///
        /// get the foreground decoration or
        ///  you can customer foregroundDecoration as you want.
        ///
        foregroundDecoration: (style ?? defaultContainerStyle)
                .foregroundDecoration ??
            BoxDecoration(
              image: (style ?? defaultContainerStyle).foregroundImage,
              gradient: (style ?? defaultContainerStyle).foregroundboxGradient,
              backgroundBlendMode:
                  (style ?? defaultContainerStyle).foregroundBlendMode,
              shape: (style ?? defaultContainerStyle).foregroundboxShape!,
              border: (style ?? defaultContainerStyle).getforegroundBorder(),
              borderRadius:
                  (style ?? defaultContainerStyle).getForegroundBorderRadius(),
              color: getColorType(
                  (style ?? defaultContainerStyle).foregroundColor!),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: getColorType((style ?? defaultContainerStyle)
                                  .foregroundshadowColor!)
                              .runtimeType ==
                          MaterialColor
                      ? getColorType((style ?? defaultContainerStyle)
                          .foregroundshadowColor!)
                      : getColorType((style ?? defaultContainerStyle)
                              .foregroundshadowColor!)
                          .withOpacity((style ?? defaultContainerStyle)
                              .foregroundshadowOpacity!),
                  spreadRadius: (style ?? defaultContainerStyle)
                      .foregroundshadowSpreadRadius!,
                  blurRadius: (style ?? defaultContainerStyle)
                      .foregroundshadowbBlurRadius!,
                  offset: Offset(
                    (style ?? defaultContainerStyle).foregroundshadowOffsetDX!,
                    (style ?? defaultContainerStyle).foregroundshadowOffsetDY!,
                  ),
                )
              ],
            ),

        ///
        /// render minwidth, minheight, maxwidth and maxhight.
        ///
        constraints: BoxConstraints(
          minWidth: (style ?? defaultContainerStyle).getResponsiveMinWidth(),
          minHeight: (style ?? defaultContainerStyle).getResponsiveMinHieght(),
          maxWidth: (style ?? defaultContainerStyle).getResponsiveMaxWidth(),
          maxHeight: (style ?? defaultContainerStyle).getResponsiveMaxHieght(),
        ),

        ///
        /// transofrm alignment for content.
        ///
        transformAlignment: (style ?? defaultContainerStyle).transformAlignment,

        ///
        /// transofrm  for content.
        ///
        transform: (style ?? defaultContainerStyle).transform,

        ///
        /// clipBehavior alignment for content.
        ///
        clipBehavior: (style ?? defaultContainerStyle).clipBehavior!,

        ///
        /// get the (decoration || backdecoration) decoration or
        ///  you can customer (decoration || backdecoration) as you want.
        ///
        decoration: (style ?? defaultContainerStyle).decoration ??
            BoxDecoration(
              image: (style ?? defaultContainerStyle).backgroundImage,
              gradient: (style ?? defaultContainerStyle).boxGradient,
              backgroundBlendMode:
                  (style ?? defaultContainerStyle).backgroundBlendMode,
              shape: (style ?? defaultContainerStyle).boxShape!,
              border: (style ?? defaultContainerStyle).getBorder(),
              borderRadius: (style ?? defaultContainerStyle).getBorderRadius(),
              color: getColorType(
                  (style ?? defaultContainerStyle).backgroundColor!),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: getColorType(
                                  (style ?? defaultContainerStyle).shadowColor!)
                              .runtimeType ==
                          MaterialColor
                      ? getColorType(
                          (style ?? defaultContainerStyle).shadowColor!)
                      : getColorType(
                              (style ?? defaultContainerStyle).shadowColor!)
                          .withOpacity(
                              (style ?? defaultContainerStyle).shadowOpacity!),
                  spreadRadius:
                      (style ?? defaultContainerStyle).shadowSpreadRadius!,
                  blurRadius:
                      (style ?? defaultContainerStyle).shadowbBlurRadius!,
                  offset: Offset(
                    (style ?? defaultContainerStyle).shadowOffsetDX!,
                    (style ?? defaultContainerStyle).shadowOffsetDY!,
                  ),
                )
              ],
            ),
      ),
    );
  }
}
