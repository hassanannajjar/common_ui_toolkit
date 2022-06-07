import '../../../common_ui_toolkit.dart';

class CommonButtonStyle {
  CommonButtonStyle({
    this.style,
    this.containerStyle,
    this.textContainerStyle,
    this.textStyle,
  }) {
    style = style ?? const CommonButtonModel();
    containerStyle = containerStyle ?? const CommonContainerModel();
    textContainerStyle = textContainerStyle ?? const CommonContainerModel();
    textStyle = textStyle ?? const CommonTextModel();
  }

  CommonButtonModel? style;
  CommonContainerModel? containerStyle;
  CommonContainerModel? textContainerStyle;
  CommonTextModel? textStyle;

  CommonButtonStyle copyWith({
    CommonButtonModel? style,
    CommonContainerModel? containerStyle,
    CommonContainerModel? textContainerStyle,
    CommonTextModel? textStyle,
  }) {
    return CommonButtonStyle(
      style: style ?? this.style,
      containerStyle: containerStyle ?? this.containerStyle,
      textContainerStyle: textContainerStyle ?? this.textContainerStyle,
      textStyle: textStyle ?? this.textStyle,
    );
  }
}
