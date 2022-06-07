import '../../common_ui_toolkit.dart';

class CommonContainerStyle {
  /// container style with bottom shadow custom CommonContainerModel.
  final CommonContainerModel bottomShadow = const CommonContainerModel(
    borderRadius: 0.02,
    shadowSpreadRadius: -10.0,
    shadowBlurRadius: 10.0,
    shadowOffsetDY: 30.0,
    shadowOpacity: 0.2,
    backgroundColor: COMMON_WHITE_COLOR,
  );

  /// container style with full shadow custom CommonContainerModel.
  final CommonContainerModel fullShadow = const CommonContainerModel(
    borderRadius: 0.02,
    shadowSpreadRadius: 1,
    shadowBlurRadius: 10.0,
    shadowOffsetDX: 0.6,
    shadowOffsetDY: 0.5,
    shadowOpacity: 0.2,
    backgroundColor: COMMON_WHITE_COLOR,
    shadowColor: COMMON_BLACK_COLOR,
  );

  /// container style with no shadow custom CommonContainerModel.
  CommonContainerModel datePickerTimeLineStyle() =>
      CommonContainerStyle().fullShadow.copyWith(
            paddingHorizontal: 0.01,
            paddingVertical: 0.01,
            marginHorizontal: 0.015,
          );
}
