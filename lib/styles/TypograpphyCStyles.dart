import '../index.dart';

class TypographyCStyles {
  Styles defaultStyle = Styles(
    fontColor: PRIMARY_COLOR,
    fontSize: 17.0,
    fontweight: FontWeight.normal,
    lineSpace: 2.0,
    textDecoration: TextDecoration.none,
    underlineThikness: 0.0,
    underLineColor: PRIMARY_COLOR,
    textAlign: TextAlign.start,
  );

  Styles getRangeSeekBarTitleStyle() =>
      defaultStyle.copyWith(fontweight: FontWeight.bold);

  Styles whiteBoldeStyle = Styles(
    fontSize: H5_FONT,
    fontweight: FontWeight.bold,
    fontColor: WHITE_COLOR,
  );

  Styles grayStyle = Styles(
    fontColor: GREY_COLOR,
    marginTop: 8.0,
  );

  Styles blackBoldStyle = Styles(
    fontColor: BLACK_COLOR,
    fontSize: H2_FONT,
    marginBottom: 10.0,
    marginTop: 5.0,
    fontweight: FontWeight.bold,
  );

  Styles offersStyle = Styles(fontSize: H4_FONT, marginTop: 12.0);

  Styles viewOffersStyle = Styles(
    marginVertical: 10.0,
    marginHorizontal: 18.0,
    fontColor: HEADER_COLOR,
    fontweight: FontWeight.bold,
    fontSize: H1_FONT,
  );
  getViewTournamentStyle() => defaultStyle.copyWith(
      underLineColor: SECONDRY_COLOR,
      fontColor: SECONDRY_COLOR,
      fontweight: FontWeight.bold,
      textDecoration: TextDecoration.underline,
      marginBottom: 16.0,
      fontSize: H3_FONT);

  getContainerHeaderStyle() => defaultStyle.copyWith(
        fontweight: FontWeight.bold,
        customUnderlined: true,
        underlineThikness: 2,
        fontSize: HEADER_FONT,
        fontColor: HEADER_COLOR,
        underLineColor: HEADER_COLOR,
        lineSpace: 2,
      );

  getContactUsTitleStyle() => defaultStyle.copyWith(
        fontSize: H3_FONT,
        fontColor: PRIMARY_COLOR,
      );

  getTitleStyle() => defaultStyle.copyWith(
        lineSpace: 2,
        textDecoration: TextDecoration.underline,
        fontSize: H1_FONT,
        fontweight: FontWeight.bold,
      );

  getGreyBoldFont() => defaultStyle.copyWith(
        marginHorizontal: 5.0,
        fontColor: GREY2_COLOR,
        fontSize: HEADER_FONT,
        fontweight: FontWeight.bold,
      );

  getCheckoutScreenStyle() => defaultStyle.copyWith(
      marginTop: 5,
      marginBottom: 10,
      fontweight: FontWeight.bold,
      fontSize: H2_FONT);

  getThankyouStyle() => defaultStyle.copyWith(
        marginTop: 10.0,
        marginBottom: 12.0,
        fontweight: FontWeight.bold,
        fontSize: HEADER_FONT,
      );

  getDialogFirstTextStyle() => defaultStyle.copyWith(
        textAlign: TextAlign.center,
        fontColor: HEADER_COLOR,
        fontSize: HEADER_FONT,
        marginBottom: 20.0,
      );

  getDialogSecondTextStyle() => defaultStyle.copyWith(
        marginBottom: 35,
        textAlign: TextAlign.center,
        fontColor: GREY2_COLOR,
        fontSize: H4_FONT,
      );

  // getViewOfferStyle() => defaultStyle.copyWith(
  //       marginVertical: 10.0,
  //       marginHorizontal: 18.0,
  //       fontColor: HEADER_COLOR,
  //       fontweight: FontWeight.bold,
  //       fontSize: H1_FONT,
  //     );

  getHeaderViewTeeTimesStyle() => defaultStyle.copyWith(
        marginVertical: 10.0,
        marginHorizontal: 18.0,
        fontColor: HEADER_COLOR,
        fontweight: FontWeight.bold,
        fontSize: H2_FONT,
      );

  getUnderLinePressed() => defaultStyle.copyWith(
        underlineThikness: 2,
        customUnderlined: true,
        lineSpace: 0.2,
        fontSize: H3_FONT,
      );

  getPaymentTypographyStyle() => TypographyCStyles().defaultStyle.copyWith(
        fontSize: H3_FONT,
        fontColor: WHITE_COLOR,
        fontFamily: 'halter',
      );

  getPlaceHolderName() => TypographyCStyles().defaultStyle.copyWith(
        fontSize: H5_FONT,
        fontColor: WHITE_COLOR,
        fontFamily: 'halter',
      );

  getCVVCardCode() => TypographyCStyles().defaultStyle.copyWith(
        fontSize: H3_FONT,
        fontColor: BLACK_COLOR,
        fontFamily: 'halter',
      );

  getCompleteProfileStyle() => TypographyCStyles().defaultStyle.copyWith(
        marginLeft: 4.0,
        marginRight: 4.0,
        underlineThikness: 1,
        lineSpace: 0.2,
        customUnderlined: true,
        fontSize: H4_FONT,
      );
}
