import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/constants.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> screens = <Map<String, String>>[
      <String, String>{
        'name': 'Containers',
        'route': routeContainers,
      },
      <String, String>{
        'name': 'Texts',
        'route': routeTexts,
      },
      <String, String>{
        'name': 'Date Pickers',
        'route': routeDatePickers,
      },
      <String, String>{
        'name': 'Text inputs',
        'route': routeTextInputs,
      },
      <String, String>{
        'name': 'Buttons',
        'route': routeButtons,
      },
      <String, String>{
        'name': 'Cards',
        'route': routeContainers,
      },
      <String, String>{
        'name': 'Avatars',
        'route': routeContainers,
      },
    ];

    return CommonContainer(
      style: CommonContainerModel(
        width: 0.7,
        backgroundColor: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          const DrawerHeader(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: screens
                    .map((Map<String, String> e) => CommonText(
                          onPress: () =>
                              Navigator.pushNamed(context, e['route']!),
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
  const DrawerHeader({Key? key}) : super(key: key);

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
            backgroundColor: colorPrimary,
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
