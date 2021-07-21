library common_ui_toolkit;

import 'package:flutter/material.dart';

import '../../models/Styles.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  Styles? style;

  CustomContainer({
    this.style,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (style == null) {
      style = Styles();
    }

    return Container(
      child: child ?? Center(),
      width: style!.getWidth(),
      height: style!.getHeight(),
      margin: style!.getMarginEdgeInsets(),
      padding: style!.getPaddingEdgeInsets(),
      alignment: style!.alignment!,
      // foregroundDecoration: ,
      // this.decoration,
      // this.foregroundDecoration,
      // BoxConstraints? constraints,
      // this.transform,
      // this.transformAlignment,
      // this.clipBehavior = Clip.none,
      decoration: BoxDecoration(
        borderRadius: style!.getBorderRaduis(),
        color: Color(style!.backgroundColor!),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:
                Color(style!.shadowColor!).withOpacity(style!.shadowOpacity!),
            ////spreadRadius attribute means how much space you want the shadow to take, in our case we used a minus value
            ///with increasing the value of the dy in the offset, which means that the shadow will move down depending on the dy value, and the shadow
            ///will take less space because we've used a minus value, use this trick whenever you want a shadow in just one side
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
