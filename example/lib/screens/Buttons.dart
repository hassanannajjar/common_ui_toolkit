import 'package:flutter/material.dart';
import 'package:common_ui_toolkit/index.dart';

import '../utils/Constants.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(PRIMARY_COLOR),
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
            children: [
              CommonButton(
                text: 'Button with elevation and custom size',
                containerStyle: CommonContainerModel(
                  width: 0.4,
                  height: 0.1,
                ),
                style: CommonButtonModel(
                  elevation: 10.0,
                  borderRadius: 0.1,

                  // You can customize the button elecation OR use the default one
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
                  // cutomBackgroundColor: MaterialStateProperty.all(
                  //   Colors.amber,
                  // ),
                ),
              ),
              CommonButton(
                text: 'Customized radius button with different press effect',
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
              CommonButton(
                textContainerStyle: CommonContainerModel(
                  marginVertical: 0.1,
                  backgroundColor: COMMON_RED_COLOR,
                ),
                textStyle: CommonTextModel(
                  fontColor: COMMON_WHITE_COLOR,
                ),
                text: 'Disabled button',
                style: CommonButtonModel(
                  isEnable: false,
                  backgroundColor: COMMON_PR_COLOR,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
