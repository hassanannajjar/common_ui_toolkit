# commmon_ui_toolkit

A new Flutter package that accelerates building UI process.

## About this package

This package contains the most common components used in flutter projects such as Container, Text, TextFields and so on.

## Examples

```dart 
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
      body: CommonContainer(
        // isLoading: true,
        // loadingWidget: /,
        style: ContainerStyle(
          alignment: Alignment.center,
          loadingColor: 0xff123155,
        ),
        child: CommonContainer(
          child: Text(
            'Test Data',
            textDirection: TextDirection.ltr,
          ),
          style: ContainerStyle(
            // alignment: Alignment.center,
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
      ),
    );
  }
}

```

