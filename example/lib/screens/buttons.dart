import 'package:common_ui_toolkit/common_ui_toolkit.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, this.type}) : super(key: key);

  final String? type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: DEVICE_HEIGHT * 0.05,
            ),
            if (type == 'primary')
              CommonButton(
                text: 'Button with elevation and custom size',
                onPress: () {
                  // print('pressed');
                },
                // elevation: 2,
                overlayColor:
                    const Color.fromARGB(255, 71, 234, 252).withOpacity(0.2),
                // buttonStyle: CommonButtonStyle(
                //   containerStyle: const CommonContainerModel(
                //     width: 0.4,
                //     height: 0.1,
                //   ),
                //   style: const CommonButtonModel(
                //     elevation: 10.0,
                //     borderRadius: 0.05,

                //     // You can customize the button election OR use the default one
                //     // customElevation: MaterialStateProperty.all(100)

                //     // You can customize the overlay color as well OR use the default one
                //     // customOverlayColor: MaterialStateProperty.resolveWith(
                //     //   (states) {
                //     //     return states.contains(MaterialState.pressed)
                //     //         ? getColorType(Colors.red)
                //     //         : null;
                //     //   },
                //     // ),

                //     // You can customize the background color of the button
                //     // customBackgroundColor: MaterialStateProperty.all(
                //     //   Colors.amber,
                //     // ),
                //   ),
                // ),
              ),
            if (type == 'default')
              CommonButton(
                text: 'Customized radius button with different press effect',
                buttonStyle: CommonButtonStyle(
                  containerStyle: CommonContainerModel(
                    touchEffect: TouchableEffect(
                      type: TouchTypes.opacity,
                    ),
                  ),
                  textStyle: const CommonTextModel(
                    fontColor: Colors.white,
                  ),
                  style: const CommonButtonModel(
                    overlayColor: COMMON_TRANSPARENT_COLOR,
                    backgroundColor: COMMON_PR_COLOR,
                    topLeftRadius: 0.05,
                    topRightRadius: 0.01,
                    bottomLeftRadius: 0.15,
                    bottomRightRadius: 0.2,
                  ),
                ),
              ),
            if (type == 'secondary')
              CommonButton(
                text: 'Disabled button',
                buttonStyle: CommonButtonStyle(
                  textContainerStyle: const CommonContainerModel(
                    marginVertical: 0.1,
                    backgroundColor: COMMON_RED_COLOR,
                  ),
                  textStyle: const CommonTextModel(
                    fontColor: COMMON_WHITE_COLOR,
                  ),
                  style: const CommonButtonModel(
                    backgroundColor: COMMON_PR_COLOR,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
