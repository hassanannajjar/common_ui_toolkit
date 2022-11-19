import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/constants.dart';

class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(colorPrimary),
        title: CommonMultiText(
          'Containers',
          containerStyle: const CommonContainerModel().copyWith(
            backgroundColor: 0x00FFFFFF,
            alignment: Alignment.center,
            width: 0.7,
          ),
          style: CommonTextStyles().h2Style(),
        ),
      ),
      body: CommonContainer(
        style: const CommonContainerModel().copyWith(
          width: 1,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // circle shape
              const CommonContainer(
                paddingTop: 0.1,
                style: CommonContainerModel(),
              ),

              CommonContainer(
                // foregroundBorderTopWidth: 1,
                foregroundBorderWidth: 3,
                foregroundBorderTopColor: Colors.red,
                foregroundBorderLeftColor: Colors.green,
                foregroundBorderRightColor: Colors.black,
                foregroundBorderBottomColor: Colors.yellow,
                marginBottom: 0.05,
                foregroundBorderRadius: 0.3,
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 0xFF05DAFF,
                      transform: Matrix4.skewX(0.3),
                      boxShape: BoxShape.circle,
                      borderRadius: 0.02,
                      width: 0.5,
                      height: 0.3,
                      foregroundBorderTopWidth: 1,
                      foregroundBorderTopColor: 0xFF05DAFF,
                      // foregroundBorderRadius: 0.02,
                      // foregroundColor: Colors.red,
                    ),
              ),

              CommonContainer(
                // width: 0.56,
                size: 0.2,
                // borderTopWidth: 3,
                // borderTopColor: Colors.red,
                // alignment: AlignmentDirectional.center,
                transformAlignment: AlignmentDirectional.center,
                style: CommonContainerStyle().fullShadow.copyWith(
                      backgroundColor: 0xFFC09E16,
                      transform: Matrix4.skewX(-0.3),
                      width: 0.5,
                      height: 0.3,
                    ),
              ),

              Row(
                children: <Widget>[
                  CommonContainer(
                    transform: Matrix4.skewX(0.8),
                    borderBottomWidth: 5,
                    borderRightWidth: 2,
                    style: CommonContainerStyle().fullShadow.copyWith(
                          backgroundColor: 4255967295,
                          width: 0.5,
                          height: 0.3,
                          marginTop: 0.015,
                        ),
                  ),
                  CommonContainer(
                    transform: Matrix4.skewX(-0.8),
                    borderBottomWidth: 5,
                    style: CommonContainerStyle().fullShadow.copyWith(
                          backgroundColor: 4255967295,
                          width: 0.5,
                          height: 0.4,
                          marginTop: 0.015,
                        ),
                  ),
                ],
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
                      backgroundColor: Colors.red.withOpacity(0.2),
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
