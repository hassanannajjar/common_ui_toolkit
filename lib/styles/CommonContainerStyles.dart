import 'package:common_ui_toolkit/index.dart';

class CommonContainerStyle {
  /// container style with bottom shadow custome CommonContainerModel.
  CommonContainerModel bottomShadow = CommonContainerModel(
    borderRadius: 0.02,
    shadowSpreadRadius: -10.0,
    shadowbBlurRadius: 10.0,
    shadowOffsetDX: 0.0,
    shadowOffsetDY: 30.0,
    shadowOpacity: 0.2,
    backgroundColor: COMMON_WHITE_COLOR,
  );

  /// container style with full shadow custome CommonContainerModel.
  CommonContainerModel fullShadow = CommonContainerModel(
    borderRadius: 0.02,
    shadowSpreadRadius: 1,
    shadowbBlurRadius: 10.0,
    shadowOffsetDX: 0.6,
    shadowOffsetDY: 0.5,
    shadowOpacity: 0.2,
    backgroundColor: COMMON_WHITE_COLOR,
    shadowColor: COMMON_BLACK_COLOR,
  );

  /// container style with no shadow custome CommonContainerModel.
  CommonContainerModel datePickerTimeLineStyle() =>
      CommonContainerStyle().fullShadow.copyWith(
            paddingHorizontal: 0.01,
            paddingVertical: 0.01,
            marginHorizontal: 0.015,
          );
}
