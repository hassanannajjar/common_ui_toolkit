import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import 'screens/index.dart';
import 'utils/constants.dart';

const String _button = 'button';
const String _container = 'container';
const String _text = 'text';
const String _image = 'image';
const String _datepicker = 'datepicker';
const String _textInput = 'textInput';
void main() {
  // ?name=button&type=primary
  WidgetsFlutterBinding.ensureInitialized();
  setGlobalConfig(
    textModel: const CommonTextModel(
      fontColor: Colors.red,
      fontWeight: FontWeight.bold,
      fontSize: COMMON_H3_FONT,
      textAlign: TextAlign.right,
    ),
    buttonModel: const CommonButtonModel(
      height: 0.05,
      borderRadius: 0.03,
      marginTop: 0.1,
      borderWidth: 2,
    ),
    inputModel: const CommonInputModel(
      borderColor: Colors.red,
      enabledBorderColor: Colors.red,
    ),
  );

  final String fullUrl = Uri.base.queryParameters.toString();
  final String name = Uri.base.queryParameters['name'].toString();
  final String type = Uri.base.queryParameters['type'].toString();
  runApp(MyApp(fullUrl: fullUrl, name: name, type: type));
}

class MyApp extends StatefulWidget {
  const MyApp({
    this.fullUrl,
    this.name,
    this.type,
    super.key,
  });

  final String? fullUrl;
  final String? name;
  final String? type;

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Common UI Toolkit',
      home: widget.name == _container
          ? const Containers()
          : widget.name == _text
              ? Texts(
                  type: widget.type,
                )
              : widget.name == _button
                  ? Buttons(
                      type: widget.type,
                    )
                  : widget.name == _textInput
                      ? TextInputs(
                          type: widget.type,
                        )
                      : widget.name == _datepicker
                          ? const DatePickers()
                          : widget.name == _image
                              ? const Images()
                              : const TextInputs(type: 'default'),
      // : const MyHomePage(),
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
      body: Column(
        children: <Widget>[
          CommonText(
            'Common UI toolKit',
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
            onPress: () {
              // print('Simple common text pressed');
            },
          ),
        ],
      ),
    );
  }
}
