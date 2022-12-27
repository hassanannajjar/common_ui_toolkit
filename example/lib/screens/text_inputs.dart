import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/log.dart';

class TextInputs extends StatefulWidget {
  const TextInputs({Key? key, this.type}) : super(key: key);

  final String? type;

  @override
  State<TextInputs> createState() => _TextInputsState();
}

class _TextInputsState extends State<TextInputs> {
  double value = 1.0;

  void grow() {
    setState(() {
      value += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CommonContainer(
          style: const CommonContainerModel(
            margin: 0.016,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CommonInput(
                // onChanged: (String value) {
                //   consoleLog(value);
                // },
                // onTap: () {
                //   consoleLog('test tap');
                // },
                value: 'test',
                errorMaxLines: 3,
                // width: 0.6,
                marginTop: 0.02,
                marginHorizontal: 0.2,
                // controller: _textEditingController,
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.red),
                  hintText: 'Search...',
                  suffixText: 'test',
                ),
                autofocus: true,
                style: TextStyle(color: Colors.white),
              ),
              const CommonInput(
                hint: '000 000 000',
                suffix: Icon(Icons.search),
                // prefixIcon: CommonText(
                //   '05',
                //   textAlign: TextAlign.center,
                //   containerStyle: CommonContainerModel(
                //     width: 0.01,
                //     height: 0.01,
                //     alignment: AlignmentDirectional.center,
                //     // backgroundColor: Colors.red,
                //   ),
                // ),
                // prefixTextOnFocus: 'Text  ',
                prefix: CommonContainer(
                  child: CommonText(
                    'text',
                    containerStyle: CommonContainerModel(
                      width: 0.02,
                    ),
                  ),
                ),
                topLabelText: 'test',
                // prefixIcon: CommonText('05'),
                marginTop: 0.05,
              ),

              CommonInput(
                onChanged: (String value) {
                  consoleLog(value);
                },
                marginTop: 0.1,
                value: '$value',
                readOnly: true,
                enabled: false,
                onTap: () {
                  grow();
                  consoleLog('test tap');
                },
              ),
              // const CommonText(
              //   'CommonTextInput with built in flutter prefix icons and assets icon',
              //   marginTop: 0.1,
              // ),
              // CommonTextInput(
              //   style: CommonTextInputModel(
              //     text: 'Initial text input value',
              //     focusBorderColor: COMMON_BLACK_COLOR,
              //     prefixIcon: CommonIcon(
              //       onPress: () {
              //         consoleLog('Prefix icon pressed');
              //       },
              //       containerStyle: const CommonContainerModel(
              //         marginHorizontal: 0.01,
              //       ),
              //       path: Icons.ac_unit_rounded,
              //       iconDataSize: 0.05,
              //       color: COMMON_RED_COLOR,
              //     ),
              //     suffixIcon: const CommonIcon(
              //       containerStyle: CommonContainerModel(
              //         width: 0.04,
              //         height: 0.04,
              //         marginHorizontal: 0.01,
              //       ),
              //       color: COMMON_RED_COLOR,
              //       path: 'assets/icons/account_icon.svg',
              //     ),
              //   ),
              // ),
              // const CommonText(
              //   containerStyle: CommonContainerModel(
              //     marginTop: 0.03,
              //   ),
              //   'CommonTextInput with prefix and suffix widgets',
              // ),
              // const CommonTextInput(
              //   containerStyle: CommonContainerModel(
              //     marginTop: 0.01,
              //   ),
              //   style: CommonTextInputModel(
              //     counterText: 'Styled counter Text',
              //     counterStyle: TextStyle(
              //       color: Colors.red,
              //     ),
              //     borderWidth: 3,
              //     focusBorderColor: COMMON_RED_COLOR,
              //     fillColor: COMMON_GREY_COLOR,
              //     prefixWidget: CommonText(
              //       containerStyle: CommonContainerModel(
              //         marginHorizontal: 0.03,
              //       ),
              //       style: CommonTextModel(
              //         fontColor: COMMON_WHITE_COLOR,
              //       ),
              //       '+966',
              //     ),
              //     suffixWidget: CommonText(
              //       containerStyle: CommonContainerModel(
              //         marginHorizontal: 0.03,
              //       ),
              //       style: CommonTextModel(
              //         fontColor: COMMON_WHITE_COLOR,
              //       ),
              //       'Palestine',
              //     ),
              //   ),
              // ),
              // const CommonText(
              //   containerStyle: CommonContainerModel(
              //     marginTop: 0.03,
              //   ),
              //   'Disabled text input with zero radius',
              // ),
              // const CommonTextInput(
              //   style: CommonTextInputModel(
              //     radius: 0,
              //     enabled: false,
              //     borderWidth: 2,
              //     disabledColor: COMMON_RED_COLOR,
              //     hint: 'Search',
              //   ),
              // ),
              // const Align(
              //   child: CommonTextInput(
              //     containerStyle: CommonContainerModel(
              //       marginTop: 0.03,
              //       width: 0.5,
              //     ),
              //     style: CommonTextInputModel(
              //       underlined: true,
              //       cursorWidth: 10,
              //       cursorColor: COMMON_RED_COLOR,
              //       // showCursor: false,
              //       cursorRadius: Radius.circular(100),
              //       hint: 'Search',
              //       cursorHeight: 30,
              //       borderWidth: 3,
              //       focusBorderColor: COMMON_RED_COLOR,
              //       prefixIcon: CommonIcon(
              //         containerStyle: CommonContainerModel(
              //           marginHorizontal: 16.0,
              //         ),
              //         path: Icons.search,
              //       ),
              //     ),
              //   ),
              // ),
              // const CommonText(
              //   'Multiline text input',
              //   containerStyle: CommonContainerModel(
              //     marginTop: 0.03,
              //   ),
              // ),
              // const CommonTextInput(
              //   style: CommonTextInputModel(
              //     cursorColor: COMMON_RED_COLOR,
              //     focusBorderColor: COMMON_RED_COLOR,
              //     hint: 'Type...',
              //     textInputType: TextInputType.multiline,
              //     minLines: 7,
              //   ),
              // ),
              // const CommonText(
              //   'Password text input',
              //   containerStyle: CommonContainerModel(
              //     marginTop: 0.03,
              //   ),
              // ),
              // const CommonTextInput(
              //   style: CommonTextInputModel(
              //     hint: '******',
              //     obscureText: true,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
