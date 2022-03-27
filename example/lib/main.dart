import 'package:common_ui_toolkit/index.dart';

import './screens/index.dart';
import 'utils/Constants.dart';

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
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        CONTAINERS_ROUTE: (BuildContext context) => Containers(),
        TEXTS_ROUTE: (BuildContext context) => Texts(),
        BUTTONS_ROUTE: (BuildContext context) => Buttons(),
        TEXT_INPUTS_ROUTE: (BuildContext context) => TextInputs(),
        DATE_PICKERS_ROUTE: (BuildContext context) => DatePickers(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
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
          backgroundColor: const Color(PRIMARY_COLOR),
        ),
      ),
      drawer: DrawerContainer(),
      body: Column(
        children: [
          CommonText(
            containerStyle: CommonContainerStyle().fullShadow.copyWith(
                  padding: 0.016,
                  alignment: Alignment.center,
                  margin: 0.04,
                  marginHorizontal: 0.1,
                  backgroundColor: const Color(PRIMARY_COLOR),
                  shadowOpacity: 0.5,
                  shadowColor: COMMON_BLACK_COLOR,
                  touchEffect: TouchableEffect(
                    type: TouchTypes.scaleAndFade,
                    opacity: 0.05,
                    duration: 5,
                    lowerBound: 0.8,
                  ),
                ),
            style: CommonTextStyles().h2Style().copyWith(
                  fontColor: const Color(COMMON_WHITE_COLOR),
                ),
            text: 'Common UI toolKit',
            onPress: () {
              print('Simple common text pressed');
            },
          ),
        ],
      ),
    );
  }
}
