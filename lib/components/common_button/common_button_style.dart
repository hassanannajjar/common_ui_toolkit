import '../../index.dart';

class CommonButtonStyle {
  CommonButtonStyle({
    this.style,
    this.containerStyle,
    this.textContainerStyle,
    this.textStyle,
  }) {
    style = style ?? CommonButtonModel();
    containerStyle = containerStyle ?? CommonContainerModel();
    textContainerStyle = textContainerStyle ?? CommonContainerModel();
    textStyle = textStyle ?? CommonTextModel();
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
