import 'package:common_ui_toolkit/index.dart';

class CommonContainerStyle {
  /// container style with bottom shadow custome CommonContainerModel.
  CommonContainerModel bottomShadow = CommonContainerModel(
    borderRaduis: 20.0,
    shadowSpreadRadius: -10.0,
    shadowbBlurRadius: 10.0,
    shadowOffsetDX: 0.0,
    shadowOffsetDY: 30.0,
    shadowOpacity: 0.2,
    backgroundColor: WHITE_COLOR,
  );

  /// container style with full shadow custome CommonContainerModel.
  CommonContainerModel fullShadow = CommonContainerModel(
    borderRaduis: 20.0,
    shadowSpreadRadius: 1,
    shadowbBlurRadius: 10.0,
    shadowOffsetDX: 0.6,
    shadowOffsetDY: 0.5,
    shadowOpacity: 0.2,
    backgroundColor: WHITE_COLOR,
    shadowColor: BLACK_COLOR,
  );

  /// container style with no shadow custome CommonContainerModel.
  CommonContainerModel datePickerTimeLineStyle() =>
      CommonContainerStyle().fullShadow.copyWith(
            paddingHorizontal: 10,
            paddingVertical: 10,
            marginHorizontal: 15,
          );
}
