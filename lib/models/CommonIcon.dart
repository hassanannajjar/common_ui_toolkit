import '../index.dart';

class CommonIcon {
  int? color;
  var path;
  // Flutter built in icons take `size` not width and height, so this attribute is ignored in case you use assets or network icon
  double? iconDataSize;
  CommonContainerModel? containerStyle;

  CommonIcon({
    // ex: (prefixIcon || suffixIcon) = Icons.done ( runtimeType: TypeIconData)
    //      (prefixIcon || suffixIcon) = assets/icons/done.svg (runtimeType: String)
    @required this.path,
    this.containerStyle,
    this.color = COMMON_BLACK_COLOR,
    this.iconDataSize = 24.0,
  });
}
