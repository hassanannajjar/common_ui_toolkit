import 'package:common_ui_toolkit/index.dart';
import 'package:flutter/material.dart';
import 'package:common_ui_toolkit/models/index.dart';
import 'package:common_ui_toolkit/components/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonText(
            containerStyle: CommonContainerModel(
              padding: 16.0,
              borderRaduis: 16.0,
              marginBottom: 16.0,
              backgroundColor: BLACK_COLOR,
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
          CommonContainer(
            onPress: () {
              print('Circle container pressed');
            },
            // isLoading: true,
            // loadingWidget: /,
            // style: CommonContainerModel(
            //   alignment: Alignment.center,
            //   loadingColor: 0xff123155,
            // ),
            style: CommonContainerStyle().fullShadow.copyWith(
                  alignment: Alignment.center,
                  marginTop: 16.0,
                  backgroundColor: 4255967295,
                  // transform: Matrix4.skewX(0.3),
                  // borderWidth: 5,
                  // borderRaduis: 50,
                  // topLeftRadius: 50,
                  boxShape: BoxShape.circle,
                  // borderRightWidth: 10,
                  // borderRightStyle: BorderStyle.solid,
                  // borderRightColor: 4258997295,
                  width: 0.5,
                  height: 0.3,
                ),
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
        ],
      ),
    );
  }
}
