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
