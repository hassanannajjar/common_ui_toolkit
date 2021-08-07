import 'package:example/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:common_ui_toolkit/index.dart';

class Texts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(PRIMARY_COLOR),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonText(
            containerStyle: CommonContainerModel(marginHorizontal: 16.0),
            text:
                'We have sent you a verification code through this number, Bla Bla Bla Bla ',
            inlineSpans: [
              WidgetSpan(
                child: CommonText(
                  text: '+970595131066',
                  style: CommonTextModel(fontColor: RED_COLOR),
                  containerStyle: CommonContainerModel(marginHorizontal: 8.0),
                ),
              ),
              // TextSpan(
              //     text: '+970595131066', style: TextStyle(color: Colors.red))
            ],
          ),
          CommonText(
            onPress: () {},
            style: CommonTextModel(
              iconColor: RED_COLOR,
            ),
            iconPath: 'assets/icons/account_icon.svg',
            text: 'Common text with',
            inlineSpans: [
              TextSpan(
                text: ' RED ',
                style: TextStyle(
                  color: Color(RED_COLOR),
                ),
              ),
              TextSpan(text: 'icon color!'),
            ],
            containerStyle: CommonContainerModel(
              alignment: Alignment.center,
              backgroundColor: TRANSPARENT_COLOR,
              touchEffect: TouchableEffect.scaleAndFade,
            ),
            topChild: CommonText(
              text: 'Top child',
              containerStyle: CommonContainerModel(
                alignment: Alignment.center,
                backgroundColor: TRANSPARENT_COLOR,
              ),
            ),
            leftChild: CommonText(
              containerStyle: CommonContainerModel(marginHorizontal: 8.0),
              text: 'Left child',
            ),
            rightChild: CommonText(
              containerStyle: CommonContainerModel(marginHorizontal: 8.0),
              text: 'Right child',
            ),
            bottomChild: CommonText(
              text: 'Bottom child',
            ),
          ),
          CommonText(
            text: 'Underlined text',
            containerStyle: CommonContainerModel(
              marginTop: 16.0,
            ),
            style: CommonTextModel(
              decoration: TextDecoration.underline,
              decorationThickness: 3.0,
              decorationColor: RED_COLOR,
              decorationStyle: TextDecorationStyle.dotted,
              fontweight: FontWeight.bold,
              fontSize: H1_FONT,
            ),
          ),
          CommonText(
            containerStyle: CommonContainerModel(
              padding: 16.0,
              borderRaduis: 16.0,
              marginBottom: 16.0,
              backgroundColor: BLACK_COLOR,
              touchEffect: TouchableEffect.scaleAndFade,
            ),
            style: CommonTextStyles().h2Style().copyWith(
                  fontColor: WHITE_COLOR,
                  // backgroundColor: WHITE_COLOR,
                  // fontweight: FontWeight.bold,
                ),
            text: 'Simple common text',
            onPress: () {
              print('Simple common text pressed');
            },
          ),
          CommonText(
            containerStyle: CommonContainerModel(marginHorizontal: 16.0),
            text:
                'We have sent you a verification code through this number, Bla Bla Bla Bla ',
            inlineSpans: [
              WidgetSpan(
                child: CommonText(
                  text: '+970595131066',
                  style: CommonTextModel(fontColor: RED_COLOR),
                  containerStyle: CommonContainerModel(marginHorizontal: 8.0),
                ),
              ),
              // TextSpan(
              //     text: '+970595131066', style: TextStyle(color: Colors.red))
            ],
          ),
          CommonText(
            onPress: () {},
            iconPath: 'assets/icons/account_icon.svg',
            text: 'Common text!',
            containerStyle: CommonContainerModel(
              alignment: Alignment.center,
              backgroundColor: TRANSPARENT_COLOR,
            ),
            topChild: CommonText(
              text: 'Top child',
              containerStyle: CommonContainerModel(
                alignment: Alignment.center,
                backgroundColor: TRANSPARENT_COLOR,
              ),
            ),
            leftChild: CommonText(
              containerStyle: CommonContainerModel(marginHorizontal: 8.0),
              text: 'Left child',
            ),
            rightChild: CommonText(
              containerStyle: CommonContainerModel(marginHorizontal: 8.0),
              text: 'Right child',
            ),
            bottomChild: CommonText(
              text: 'Bottom child',
            ),
          ),
          CommonText(
            containerStyle: CommonContainerStyle().fullShadow.copyWith(
                  padding: 16,
                ),
            style: CommonTextStyles().h2Style().copyWith(
                  fontColor: 0xFF123123,
                ),
            text: 'Common UI toolKit',
          ),
          CommonText(
            iconPath: 'assets/icons/account_icon.svg',
            text: 'Common text!',
            containerStyle: CommonContainerModel(
              alignment: Alignment.center,
              backgroundColor: TRANSPARENT_COLOR,
            ),
            topChild: CommonText(
              text: 'Top child',
              containerStyle: CommonContainerModel(
                alignment: Alignment.center,
                backgroundColor: TRANSPARENT_COLOR,
              ),
            ),
            leftChild: CommonText(
              containerStyle: CommonContainerModel(marginHorizontal: 8.0),
              text: 'Left child',
            ),
            rightChild: CommonText(
              containerStyle: CommonContainerModel(marginHorizontal: 8.0),
              text: 'Right child',
            ),
            bottomChild: CommonText(
              text: 'Bottom child',
            ),
          ),
        ],
      ),
    );
  }
}
