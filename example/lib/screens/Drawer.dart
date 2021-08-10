import 'package:common_ui_toolkit/index.dart';
import 'package:example/utils/Constants.dart';
import 'package:flutter/material.dart';

class DrawerContainer extends StatelessWidget {
  final List screens = [
    {
      'name': 'Containers',
      'route': CONTAINERS_ROUTE,
    },
    {
      'name': 'Texts',
      'route': TEXTS_ROUTE,
    },
    {
      'name': 'Date Pickers',
      'route': DATE_PICKERS_ROUTE,
    },
    {
      'name': 'Text inputs',
      'route': CONTAINERS_ROUTE,
    },
    {
      'name': 'Cards',
      'route': CONTAINERS_ROUTE,
    },
    {
      'name': 'Avatars',
      'route': CONTAINERS_ROUTE,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        children: [
          DrawerHeader(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: screens
                    .map((e) => CommonText(
                          onPress: () =>
                              Navigator.pushNamed(context, e['route']),
                          containerStyle:
                              CommonContainerStyle().fullShadow.copyWith(
                                    padding: 10,
                                    margin: 15,
                                    width: 0.6,
                                  ),
                          style: CommonTextStyles().h2Style().copyWith(
                                fontColor: 0xFF000000,
                              ),
                          text: e['name'],
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonText(
      containerStyle: CommonContainerStyle().fullShadow.copyWith(
            paddingTop: DEVICE_HEIGHT * 0.06,
            width: 0.9,
            height: 0.13,
            alignment: Alignment.bottomCenter,
            shadowOffsetDY: 10,
            backgroundColor: PRIMARY_COLOR,
            borderRaduis: 0,
            bottomLeftRadius: 30,
            bottomRightRadius: 30,
          ),
      style: CommonTextStyles().h2Style().copyWith(
            fontColor: 0xFF1C1C1C,
          ),
      text: 'Common UI Components',
    );
  }
}
