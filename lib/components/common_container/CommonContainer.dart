import 'package:flutter/material.dart';

import '../../index.dart';
import '../../utils/Helper.dart';
import '../../models/CommonContainerModel.dart';

class CommonContainer extends StatelessWidget {
  /// child widget.
  final Widget? child;

  /// custome loading widget.
  final Widget? loadingWidget;

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
  /// CommonContainer().bottomShadow
  /// or
  /// CommonContainer().fullShadow
  /// ```
  CommonContainerModel? style;

  /// handel the data after loading and check if the data null or not.
  bool? isLoading;

  /// handel opPress function
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
    style = style ?? CommonContainerModel();

    return CommonTouchable(
      onTap: onPress,
      child: Container(
        child: isLoading!
            ? (loadingWidget ??
                CircularProgressIndicator(
                  color: Color(style!.loadingColor!),
                ))
            : (child ?? Center()),
        width: style!.getWidth(),
        height: style!.getHeight(),
        margin: getMarginEdgeInsets(style),
        padding: getPaddingEdgeInsets(style),
        alignment: style!.alignment,
        foregroundDecoration: style!.foregroundDecoration,
        constraints: BoxConstraints(
          minWidth: style!.minWidth!,
          minHeight: style!.minHieght!,
          maxWidth: style!.maxWidth!,
          maxHeight: style!.maxHieght!,
        ),
        transformAlignment: style!.transformAlignment,
        transform: style!.transform,
        clipBehavior: style!.clipBehavior!,
        decoration: style!.decoration ??
            BoxDecoration(
              image: style!.backgroundImage,
              gradient: style!.boxGradient,
              backgroundBlendMode: style!.backgroundBlendMode,
              shape: style!.boxShape!,
              border: style!.getBorder(),
              borderRadius: style!.getBorderRaduis(),
              color: Color(style!.backgroundColor!),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(style!.shadowColor!)
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
