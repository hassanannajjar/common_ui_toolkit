import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/constants.dart';

class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

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
          text: 'Containers',
        ),
      ),
      body: CommonContainer(
        style: CommonContainerModel().copyWith(width: 1),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // circle shape
              CommonContainer(
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 0xFF255224,
                      boxShape: BoxShape.circle,
                      width: 0.5,
                      height: 0.3,
                      touchEffect: TouchableEffect(),
                    ),
              ),

              CommonContainer(
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 0xFF05DAFF,
                      transform: Matrix4.skewX(0.3),
                      boxShape: BoxShape.circle,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 0xFFC09E16,
                      transform: Matrix4.skewX(-0.3),
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                isLoading: true,
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      width: 0.5,
                      height: 0.3,
                      marginTop: 0.015,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              CommonContainer(
                // isLoading: true,
                // loadingWidget: /,
                // style: CommonContainerModel(
                //
                //   loadingColor: 0xff123155,
                // ),
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 4255967295,
                      // transform: Matrix4.skewX(0.3),
                      // borderWidth: 5,
                      // borderRadius: 50,
                      // topLeftRadius: 50,
                      boxShape: BoxShape.circle,
                      // borderRightWidth: 10,
                      // borderRightStyle: BorderStyle.solid,
                      // borderRightColor: 4258997295,
                      width: 0.5,
                      height: 0.3,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
