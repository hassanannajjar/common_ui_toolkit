import 'package:flutter_svg/svg.dart';

import '../index.dart';

List<int> _leapYearMonths = const <int>[1, 3, 5, 7, 8, 10, 12];

/// handel margin, vertical, horizontal, top, bottom, left and right.
getMarginEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.marginLeft ?? style.marginHorizontal ?? style.margin!,
      style.marginTop ?? style.marginVertical ?? style.margin!,
      style.marginRight ?? style.marginHorizontal ?? style.margin!,
      style.marginBottom ?? style.marginVertical ?? style.margin!,
    );

/// handel padding, vertical, horizontal, left, right, top and bottom.
getPaddingEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.paddingLeft ?? style.paddingHorizontal ?? style.padding!,
      style.paddingTop ?? style.paddingVertical ?? style.padding!,
      style.paddingRight ?? style.paddingHorizontal ?? style.padding!,
      style.paddingBottom ?? style.paddingVertical ?? style.padding!,
    );

/// handel icon margin, vertical, horizontal, top, bottom, left and right.
getIconMarginEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.iconMarginLeft ?? style.iconMarginHorizontal ?? style.iconMargin!,
      style.iconMarginTop ?? style.iconMarginVertical ?? style.iconMargin!,
      style.iconMarginRight ?? style.iconMarginHorizontal ?? style.iconMargin!,
      style.iconMarginBottom ?? style.iconMarginVertical ?? style.iconMargin!,
    );

/// handel icon margin, vertical, horizontal, top, bottom, left and right.
getContentPaddingEdgeInsets(style) => EdgeInsets.fromLTRB(
      style.contentPaddingLeft ??
          style.contentPaddingHorizontal ??
          style.contentPadding!,
      style.contentPaddingTop ??
          style.contentPaddingVertical ??
          style.contentPadding!,
      style.contentPaddingRight ??
          style.contentPaddingHorizontal ??
          style.contentPadding!,
      style.contentPaddingBottom ??
          style.contentPaddingVertical ??
          style.contentPadding!,
    );

/// return the icon and style with custom function.
getIcon(CommonIcon icon) {
  return CommonContainer(
    onPress: () {
      if (icon.onPress != null) {
        icon.onPress!();
      }
    },
    style: icon.containerStyle ?? CommonContainerModel(),
    child: icon.path.runtimeType == IconData
        ? Icon(
            icon.path, // icon data takes only size without width and height, so we need to use size instead. we pass the width to be the size of the icon.
            size: icon.iconDataSize,
            color: getColorType(icon.color!),
          )
        : icon.path.startsWith('http')
            ? icon.path.endsWith('svg')
                ? SvgPicture.network(
                    icon.path,
                    color: getColorType(icon.color!),
                  )
                : Image.network(
                    icon.path,
                  )
            : icon.path.endsWith('svg')
                ? SvgPicture.asset(
                    icon.path,
                    color: getColorType(icon.color!),
                  )
                : Image.asset(
                    icon.path,
                  ),
  );
}

renderResponsiveWidth(width) {
  return width;
}

/// render Color Type
getColorType(color) {
  if (color.runtimeType == Color || color.runtimeType == MaterialColor) {
    return color;
  } else if (color.runtimeType == int) {
    return Color(color);
  } else {
    return Colors.transparent;
  }
}

int calculateDateCount(int year, int month) {
  if (_leapYearMonths.contains(month)) {
    return 31;
  } else if (month == 2) {
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
      return 29;
    }
    return 28;
  }
  return 30;
}
