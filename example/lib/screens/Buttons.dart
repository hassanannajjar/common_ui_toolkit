import 'package:common_ui_toolkit/index.dart';

import '../utils/constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(colorPrimary),
        title: CommonText(
          containerStyle: CommonContainerModel().copyWith(
            backgroundColor: 0x00FFFFFF,
            alignment: Alignment.center,
            width: 0.7,
          ),
          style: CommonTextStyles().h2Style(),
          text: 'Buttons',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CommonButton(
                text: 'Button with elevation and custom size',
                onPress: () {
                  // print('pressed');
                },
                buttonStyle: CommonButtonStyle(
                  containerStyle: CommonContainerModel(
                    width: 0.4,
                    height: 0.1,
                  ),
                  style: CommonButtonModel(
                    elevation: 10.0,
                    borderRadius: 0.05,

                    // You can customize the button election OR use the default one
                    // customElevation: MaterialStateProperty.all(100)

                    // You can customize the overlay color as well OR use the default one
                    // customOverlayColor: MaterialStateProperty.resolveWith(
                    //   (states) {
                    //     return states.contains(MaterialState.pressed)
                    //         ? getColorType(Colors.red)
                    //         : null;
                    //   },
                    // ),

                    // You can customize the background color of the button
                    // customBackgroundColor: MaterialStateProperty.all(
                    //   Colors.amber,
                    // ),
                  ),
                ),
              ),
              CommonButton(
                text: 'Customized radius button with different press effect',
                buttonStyle: CommonButtonStyle(
                  containerStyle: CommonContainerModel(
                    touchEffect: TouchableEffect(
                      type: TouchTypes.opacity,
                    ),
                  ),
                  textStyle: CommonTextModel(
                    fontColor: Colors.white,
                  ),
                  style: CommonButtonModel(
                    overlayColor: COMMON_TRANSPARENT_COLOR,
                    backgroundColor: COMMON_PR_COLOR,
                    topLeftRadius: 0.05,
                    topRightRadius: 0.01,
                    bottomLeftRadius: 0.15,
                    bottomRightRadius: 0.2,
                  ),
                ),
              ),
              CommonButton(
                text: 'Disabled button',
                buttonStyle: CommonButtonStyle(
                  textContainerStyle: CommonContainerModel(
                    marginVertical: 0.1,
                    backgroundColor: COMMON_RED_COLOR,
                  ),
                  textStyle: CommonTextModel(
                    fontColor: COMMON_WHITE_COLOR,
                  ),
                  style: CommonButtonModel(
                    isEnable: false,
                    backgroundColor: COMMON_PR_COLOR,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
