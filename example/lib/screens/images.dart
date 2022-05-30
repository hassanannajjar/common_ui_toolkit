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
          containerStyle: CommonContainerModel().copyWith(
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
            children: <Widget>[
              CommonContainer(
                style: CommonContainerModel(
                  width: 1,
                  height: 0.4,
                  backgroundImage: const DecorationImage(
                    image: AssetImage(
                      logoPngImage,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              CommonContainer(
                style: CommonContainerModel(
                  width: 1,
                  height: 0.2,
                  backgroundImage: const DecorationImage(
                    image: AssetImage(
                      logoImage,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
