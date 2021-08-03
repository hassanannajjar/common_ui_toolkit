# commmon_ui_toolkit

A new Flutter package that accelerates building UI process.

Get it from:
[![pub package](https://img.shields.io/pub/v/common_ui_toolkit.svg)](https://pub.dev/packages/common_ui_toolkit)

[![pub points](https://badges.bar/common_ui_toolkit/pub%20points)](https://pub.dev/packages/common_ui_toolkit/score) 
[![popularity](https://badges.bar/common_ui_toolkit/popularity)](https://pub.dev/packages/common_ui_toolkit/score)
[![likes](https://badges.bar/common_ui_toolkit/likes)](https://pub.dev/packages/common_ui_toolkit/score) 

## About this package

This package contains the most common components used in flutter projects such as Container, Text, TextFields and so on.

## Examples

```dart 
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
              backgroundColor: BLACK_COLOR,
            ),
            style: CommonTextStyles().h2Style().copyWith(
                  fontColor: WHITE_COLOR,
                  // backgroundColor: WHITE_COLOR,
                  // fontweight: FontWeight.bold,
                ),
            text: 'Simple common text',
          ),
          CommonContainer(
            // isLoading: true,
            // loadingWidget: /,
            // style: CommonContainerModel(
            //   alignment: Alignment.center,
            //   loadingColor: 0xff123155,
            // ),
            style: CommonContainerStyle().fullShadow.copyWith(
                  alignment: Alignment.center,
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


```

