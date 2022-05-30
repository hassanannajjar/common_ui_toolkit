import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import 'screens/index.dart';
import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: <String, WidgetBuilder>{
        routeContainers: (BuildContext context) => const Containers(),
        routeTexts: (BuildContext context) => const Texts(),
        routeButtons: (BuildContext context) => const Buttons(),
        routeTextInputs: (BuildContext context) => const TextInputs(),
        routeDatePickers: (BuildContext context) => const DatePickers(),
        routeImages: (BuildContext context) => const Images(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(DEVICE_HEIGHT * 0.06),
        child: AppBar(
          iconTheme: IconThemeData(
            size: DEVICE_WIDTH * 0.06,
            color: Colors.white,
          ),
          backgroundColor: const Color(colorPrimary),
        ),
      ),
      drawer: const DrawerContainer(),
      body: Column(
        children: <Widget>[
          CommonText(
            containerStyle: CommonContainerStyle().fullShadow.copyWith(
                  padding: 0.016,
                  alignment: Alignment.center,
                  margin: 0.04,
                  marginHorizontal: 0.1,
                  backgroundColor: const Color(colorPrimary),
                  shadowOpacity: 0.5,
                  shadowColor: COMMON_BLACK_COLOR,
                  touchEffect: TouchableEffect(
                    type: TouchTypes.scaleAndFade,
                    opacity: 0.05,
                    duration: 5,
                    lowerBound: 0.8,
                  ),
                  borderRadius: 0.05,
                ),
            style: CommonTextStyles().h2Style().copyWith(
                  fontColor: const Color(COMMON_WHITE_COLOR),
                ),
            text: 'Common UI toolKit',
            onPress: () {
              // print('Simple common text pressed');
            },
          ),
        ],
      ),
    );
  }
}
