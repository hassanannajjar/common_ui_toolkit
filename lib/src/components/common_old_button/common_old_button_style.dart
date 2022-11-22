import '../../../common_ui_toolkit.dart';

class CommonOldButtonStyle {
  CommonOldButtonStyle({
    this.style,
    this.containerStyle,
    this.textContainerStyle,
    this.textStyle,
  }) {
    style = style ?? const CommonOldButtonModel();
    containerStyle = containerStyle ?? const CommonContainerModel();
    textContainerStyle = textContainerStyle ?? const CommonContainerModel();
    textStyle = textStyle ?? const CommonTextModel();
  }

  CommonOldButtonModel? style;
  CommonContainerModel? containerStyle;
  CommonContainerModel? textContainerStyle;
  CommonTextModel? textStyle;

  CommonOldButtonStyle copyWith({
    CommonOldButtonModel? style,
    CommonContainerModel? containerStyle,
    CommonContainerModel? textContainerStyle,
    CommonTextModel? textStyle,
  }) {
    return CommonOldButtonStyle(
      style: style ?? this.style,
      containerStyle: containerStyle ?? this.containerStyle,
      textContainerStyle: textContainerStyle ?? this.textContainerStyle,
      textStyle: textStyle ?? this.textStyle,
    );
  }
}
