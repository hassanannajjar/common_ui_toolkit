import 'package:flutter_svg/svg.dart';

import '../index.dart';

/// handel margin, vertical, horizontal, top, bottom, left and right.
getMarginEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.marginLeft ?? style.marginHorizontal ?? style.margin,
      style.marginTop ?? style.marginVertical ?? style.margin,
      style.marginRight ?? style.marginHorizontal ?? style.margin,
      style.marginBottom ?? style.marginVertical ?? style.margin,
    );

/// handel padding, vertical, horizontal, left, right, top and bottom.
getPaddingEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.paddingLeft ?? style.paddingHorizontal ?? style.padding,
      style.paddingTop ?? style.paddingVertical ?? style.padding,
      style.paddingRight ?? style.paddingHorizontal ?? style.padding,
      style.paddingBottom ?? style.paddingVertical ?? style.padding,
    );

/// handel icon margin, vertical, horizontal, top, bottom, left and right.
getIconMarginEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.iconMarginLeft ?? style.iconMarginHorizontal ?? style.iconMargin,
      style.iconMarginTop ?? style.iconMarginVertical ?? style.iconMargin,
      style.iconMarginRight ?? style.iconMarginHorizontal ?? style.iconMargin,
      style.iconMarginBottom ?? style.iconMarginVertical ?? style.iconMargin,
    );

/// return the icon and style with custom function.
getIcon(path, style) {
  if (path != null) {
    return Container(
      width: style!.iconWidth,
      height: style!.iconHeight,
      margin: getIconMarginEdgeInsets(style),
      child: path!.contains('png') || path!.contains('jpg')
          ? Image.asset(path!)
          : SvgPicture.asset(
              path,
              color: style!.iconColor != null ? Color(style!.iconColor!) : null,
            ),
    );
  } else {
    return Padding(padding: EdgeInsets.zero);
  }
}
