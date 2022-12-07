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
            CommonButton(
              text: 'test first',
              onPress: () {},
              style: const CommonButtonModel(
                backgroundColor: Colors.orange,
                width: 0.4,
                borderRadius: 0.02,
                fontColor: Colors.white,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('test')),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Customized radius button with different press effect\n asdf /n asdf adf ',
                  style: TextStyle(fontSize: COMMON_H1_FONT),
                )),
            CommonButton(
              text: 'test',
              onPress: () {},
              width: 0.8,
              height: 0.06,
              borderRadius: 0.01,
              // minimumSize: MaterialStateProperty.resolveWith(
              //     (Set<MaterialState> states) {
              //   // If the button is pressed, return green, otherwise blue
              //   if (states.contains(MaterialState.pressed)) {
              //     return const Size(199, 49);
              //   }
              //   return const Size(200, 50);
              // }),
              backgroundColor: Colors.red,
              // backgroundColor: MaterialStateProperty.resolveWith(
              //     (Set<MaterialState> states) {
              //   // If the button is pressed, return green, otherwise blue
              //   if (states.contains(MaterialState.pressed)) {
              //     return const Color.fromARGB(255, 88, 176, 248);
              //   }
              //   return Colors.blue;
              // }),
              // fontColor: Colors.white,
            ),
            CommonButton(
              text: 'test',
              onPress: () {},
              enableFeedback: true,
              borderRadius: 0.01,
              overlayColor: Colors.black12,
              marginVertical: 0.02,
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.red,
                ),
              ),
              // disable: true,
            ),
            if (type == 'default')
              CommonButton(
                text: 'Default button',
                borderRadius: 0.01,
                width: 0.8,
                height: 0.07,
                onPress: () {},
                overlayColor: Colors.black12,
              ),
            if (type == 'disable')
              const CommonButton(
                text: 'Disabled button',
                enabled: false,
              ),
          ],
        ),
      ),
    );
  }
}
