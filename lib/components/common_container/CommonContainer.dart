import 'package:common_ui_toolkit/utils/Helper.dart';
import 'package:flutter/material.dart';

import '../../models/ContainerStyle.dart';

class CommonContainer extends StatelessWidget {
  final Widget? child;
  final Widget? loadingWidget;
  ContainerStyle? style;
  bool? isLoading;

  CommonContainer({
    this.style,
    this.child,
    this.loadingWidget,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (style == null) style = ContainerStyle();

    return Container(
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
      alignment: style!.alignment!,
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
    );
  }
}
