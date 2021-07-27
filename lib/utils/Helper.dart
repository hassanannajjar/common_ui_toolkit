import 'package:flutter_svg/svg.dart';

import '../index.dart';

getMarginEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.margin ?? style.marginHorizontal ?? style.marginLeft!,
      style.margin ?? style.marginVertical ?? style.marginTop!,
      style.margin ?? style.marginHorizontal ?? style.marginRight!,
      style.margin ?? style.marginVertical ?? style.marginBottom!,
    );

getPaddingEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.padding ?? style.paddingHorizontal ?? style.paddingLeft!,
      style.padding ?? style.paddingVertical ?? style.paddingTop!,
      style.padding ?? style.paddingHorizontal ?? style.paddingRight!,
      style.padding ?? style.paddingVertical ?? style.paddingBottom!,
    );

getIconMarginEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.iconMargin ?? style.iconMarginHorizontal ?? style.iconMarginLeft!,
      style.iconMargin ?? style.iconMarginVertical ?? style.iconMarginTop!,
      style.iconMargin ?? style.iconMarginHorizontal ?? style.iconMarginRight!,
      style.iconMargin ?? style.iconMarginVertical ?? style.iconMarginBottom!,
    );

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
