import 'package:common_ui_toolkit/index.dart';
import 'package:example/utils/Constants.dart';

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
      'route': TEXT_INPUTS_ROUTE,
    },
    {
      'name': 'Buttons',
      'route': BUTTONS_ROUTE,
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
      style: CommonContainerModel(
        width: 0.7,
        backgroundColor: Colors.white,
      ),
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
                                    padding: 0.01,
                                    margin: 0.015,
                                    width: 0.6,
                                    borderRadius: 0.02,
                                    touchEffect: TouchableEffect(
                                      type: TouchTypes.opacity,
                                    ),
                                  ),
                          style: CommonTextStyles().h3Style().copyWith(
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
            paddingVertical: 0.02,
            marginBottom: 0.02,
            width: 0.9,
            height: 0.13,
            alignment: Alignment.bottomCenter,
            shadowOffsetDY: 10,
            backgroundColor: PRIMARY_COLOR,
            borderRadius: 0,
            bottomLeftRadius: 0.03,
            bottomRightRadius: 0.03,
          ),
      style: CommonTextStyles().h2Style().copyWith(
            fontColor: 0xFF1C1C1C,
          ),
      text: 'Common UI Components',
    );
  }
}
