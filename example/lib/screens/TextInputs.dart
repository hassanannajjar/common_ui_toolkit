import 'package:common_ui_toolkit/components/common_text_input/CommonTextInput.dart';
import 'package:flutter/material.dart';
import 'package:common_ui_toolkit/index.dart';

import '../utils/Constants.dart';

class TextInputs extends StatelessWidget {
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
          text: 'Text inputs',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonTextInput(),
        ],
      ),
    );
  }
}
