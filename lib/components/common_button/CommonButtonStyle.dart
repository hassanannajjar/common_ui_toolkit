import '../../index.dart';

class CommonButtonStyle {
  CommonButtonModel? style;
  CommonContainerModel? containerStyle;
  CommonContainerModel? textContainerStyle;
  CommonTextModel? textStyle;

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
}
