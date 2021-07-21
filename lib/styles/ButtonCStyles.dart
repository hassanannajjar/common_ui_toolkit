import '../index.dart';

class ButtonCStyles {
  Styles defaultStyle = Styles(
    padding: 12.0,
    fontColor: WHITE_COLOR,
    borderRaduis: 26.0,
    backgroundColor: PRIMARY_COLOR,
    width:
        null, // By default the width of the button should wrap the content of the button
  );

  Styles fullWidthStyle() => defaultStyle.copyWith(
        width: double.infinity,
      );

  getMyProgileStyle() => defaultStyle.copyWith(
        width: double.infinity,
        padding: 14.0,
        marginVertical: 40.0,
      );

  getInTouchStyle() => defaultStyle.copyWith(
        width: double.infinity,
        marginHorizontal: 24.0,
      );

  dialogButtonStyle() => fullWidthStyle().copyWith(
        backgroundColor: GREY_COLOR,
        padding: 15.0,
        marginHorizontal: 3.0,
        fontSize: 12.0,
        raduisColor: GREY_COLOR,
        marginBottom: 16.0,
      );

  radioButtonStyle() => defaultStyle.copyWith(
        fontSize: 12.0,
        marginHorizontal: 4.0,
        marginVertical: 10.0,
      );

  filterButtonStyle() => defaultStyle.copyWith(
        withEffect: true,
        raduisColor: RED_COLOR,
        fontColor: RED_COLOR,
        marginHorizontal: 3,
        backgroundColor: WHITE_COLOR,
      );

  getviewMembershipButtonStyle() => defaultStyle.copyWith(
        marginHorizontal: 20.0,
        marginVertical: 10.0,
        raduisColor: PRIMARY_COLOR,
        backgroundColor: WHITE_COLOR,
        fontColor: PRIMARY_COLOR,
        withEffect: true,
        width: double.infinity,
        padding: 15,
      );
}
