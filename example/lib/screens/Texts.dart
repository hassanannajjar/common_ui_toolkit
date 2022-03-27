import 'package:common_ui_toolkit/index.dart';

import '../utils/constants.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(colorPrimary),
        title: CommonText(
          containerStyle: CommonContainerModel().copyWith(
            backgroundColor: 0x00FFFFFF,
            alignment: Alignment.center,
            width: 0.7,
          ),
          style: CommonTextStyles().h2Style(),
          text: 'Texts',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              /// Common UI toolkit with full shadow border around the text, you can customize the containers you like
              CommonText(
                containerStyle: CommonContainerStyle().fullShadow.copyWith(
                      padding: 0.016,
                    ),
                style: CommonTextStyles().h2Style().copyWith(
                      fontColor: 0xFF123123,
                    ),
                text: 'Common UI toolKit',
              ),

              /// This is an example of the verification code text with inlineSpans (Another text with different text color)
              CommonText(
                containerStyle: CommonContainerModel(
                  marginHorizontal: 0.016,
                  marginVertical: 0.016,
                ),
                text:
                    'We have sent you a verification code through this number, Bla Bla Bla Bla ',
                inlineSpans: <InlineSpan>[
                  WidgetSpan(
                    child: CommonText(
                      text: '+970595131066',
                      style: CommonTextModel(fontColor: COMMON_RED_COLOR),
                      containerStyle: CommonContainerModel(
                        marginHorizontal: 0.008,
                        touchEffect: TouchableEffect(),
                      ),
                    ),
                  ),
                  // TextSpan(
                  //     text: '+970595131066', style: TextStyle(color: Colors.red))
                ],
              ),

              /// Simple underlined text
              /// You can customize the underline decoration by using the TextDecoration enum
              CommonText(
                text: 'Underlined text',
                containerStyle: CommonContainerModel(
                  marginTop: 0.016,
                ),
                style: CommonTextModel(
                  decoration: TextDecoration.underline,
                  decorationThickness: 3.0,
                  decorationColor: COMMON_RED_COLOR,
                  decorationStyle: TextDecorationStyle.dotted,

                  /// decorationStyle: TextDecorationStyle.wavy,
                  fontWeight: FontWeight.bold,
                  fontSize: COMMON_H1_FONT,
                ),
              ),

              /// Custom container around the text with a touchable effect and a custom background color
              CommonText(
                // containerStyle: CommonContainerModel(
                //   padding: 0.016,
                //   borderRadius: 0.016,
                //   marginBottom: 0.016,
                //   marginVertical: 0.016,
                //   backgroundColor: COMMON_BLACK_COLOR,
                //   touchEffect: TouchableEffect(),
                // ),
                // style: CommonTextStyles().h2Style().copyWith(
                //       fontColor: COMMON_WHITE_COLOR,
                //       // backgroundColor: COMMON_WHITE_COLOR,
                //       // fontWeight: FontWeight.bold,
                //     ),
                text: 'Simple common text',
                onPress: () {
                  consoleLog('Simple common text pressed');
                },
              ),

              /// Text with all side children with an icon
              CommonText(
                style: CommonTextModel(
                  prefixIcon: CommonIcon(
                    path: 'assets/icons/account_icon.svg',
                    color: COMMON_RED_COLOR,
                  ),
                ),
                text: 'Common text with',
                inlineSpans: const <InlineSpan>[
                  TextSpan(
                    text: ' RED ',
                    style: TextStyle(
                      color: Color(COMMON_RED_COLOR),
                    ),
                  ),
                  TextSpan(text: 'icon color!'),
                ],
                containerStyle: CommonContainerModel(
                  touchEffect: TouchableEffect(
                    type: TouchTypes.scaleAndFade,
                  ),
                  marginVertical: 0.016,
                ),
                topChild: const CommonText(
                  text: 'Top child',
                ),
                leftChild: CommonText(
                  containerStyle: CommonContainerModel(marginHorizontal: 0.008),
                  text: 'Left child',
                ),
                rightChild: CommonText(
                  containerStyle: CommonContainerModel(marginHorizontal: 0.008),
                  text: 'Right child',
                  style: CommonTextModel(
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationThickness: 3.0,
                  ),
                ),
                bottomChild: CommonText(
                  text: 'Bottom child',
                  style: CommonTextModel(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
