import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/constants.dart';

const String logoImage = 'assets/images/dabdoob.jpeg';
const String logoPngImage = 'assets/images/dabdoob.png';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(colorPrimary),
        title: CommonText(
          containerStyle: const CommonContainerModel().copyWith(
            backgroundColor: 0x00FFFFFF,
            alignment: Alignment.center,
            width: 0.7,
          ),
          style: CommonTextStyles().h2Style(),
          text: 'Images',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              CommonContainer(
                style: CommonContainerModel(
                  width: 1,
                  height: 0.4,
                  backgroundImageDecoration: DecorationImage(
                    image: AssetImage(
                      logoPngImage,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              CommonContainer(
                backgroundImage: logoPngImage,
                boxShape: BoxShape.circle,
                size: 0.5,
                style: CommonContainerModel(
                  size: 0.2,
                  backgroundColor: 0xFF9F1414,
                ),
              ),

              CommonContainer(
                boxShape: BoxShape.circle,
                backgroundColor: Colors.white,
                style: CommonContainerModel(
                  size: 0.5,
                  marginVertical: 0.05,
                  backgroundImage: 'https://i.imgur.com/jV9zhvO.jpg',
                ),
              ),

              // https://i.imgur.com/jV9zhvO.jpg
            ],
          ),
        ),
      ),
    );
  }
}
