import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/constants.dart';
import '../utils/log.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(colorPrimary),
        title: CommonMultiText(
          'Texts',
          containerStyle: const CommonContainerModel().copyWith(
            backgroundColor: 0x00FFFFFF,
            alignment: Alignment.center,
            width: 0.7,
          ),
          style: CommonTextStyles().h2Style(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const CommonText(
                'Simple Text \n',
              ),

              const CommonText(
                'Simple Text with background color \n',
                backgroundColor: Colors.red,
              ),

              const CommonText(
                'Simple Text with under line \n ',
                overflow: TextOverflow.fade,
                decoration: TextDecoration.underline,
              ),

              const CommonText(
                'wavy line \n ',
                fontSize: 30,
                style: CommonTextModel(
                  overflow: TextOverflow.fade,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),

              /// Common UI toolkit with full shadow border around the text, you can customize the containers you like
              CommonMultiText(
                'Common UI toolKit',
                containerStyle: CommonContainerStyle().fullShadow.copyWith(
                      padding: 0.016,
                    ),
                style: CommonTextStyles().h2Style().copyWith(
                      fontColor: 0xFF123123,
                    ),
              ),

              /// This is an example of the verification code text with inlineSpans (Another text with different text color)
              CommonMultiText(
                'We have sent you a verification code through this number, Bla Bla Bla Bla ',
                containerStyle: const CommonContainerModel(
                  marginHorizontal: 0.016,
                  marginVertical: 0.016,
                ),
                inlineSpans: <InlineSpan>[
                  WidgetSpan(
                    child: CommonMultiText(
                      '+970595131066',
                      style: const CommonTextModel(fontColor: COMMON_RED_COLOR),
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
              const CommonMultiText(
                'Underlined text',
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
              CommonMultiText(
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
                'Simple common text',
                onPress: () {
                  consoleLog('Simple common text pressed');
                },
              ),

              /// Text with all side children with an icon
              CommonMultiText(
                'Common text with',
                style: const CommonTextModel(
                  prefixIcon: CommonIcon(
                    path: 'assets/icons/account_icon.svg',
                    color: COMMON_RED_COLOR,
                  ),
                ),
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
                  'Top child',
                ),
                leftChild: const CommonMultiText(
                  'Left child',
                  containerStyle: CommonContainerModel(marginHorizontal: 0.008),
                ),
                rightChild: const CommonMultiText(
                  'Right child',
                  containerStyle: CommonContainerModel(marginHorizontal: 0.008),
                  style: CommonTextModel(
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationThickness: 3.0,
                  ),
                ),
                bottomChild: const CommonText(
                  'Bottom child',
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
