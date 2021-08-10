import 'package:example/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:common_ui_toolkit/index.dart';

class DatePickers extends StatelessWidget {
  CommonTextModel textStyle = CommonTextStyles().h3Style().copyWith(
        fontColor: PR_COLOR,
      );
  CommonContainerModel containerStyle = CommonContainerModel(
    marginVertical: 25,
    touchEffect: TouchableEffect(
      type: TouchTypes.scaleAndFade,
    ),
  );

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
          text: 'DatePickers',
        ),
      ),
      body: CommonContainer(
        style: CommonContainerModel().copyWith(width: 0.99),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2018, 3, 5),
                      maxTime: DateTime(2019, 6, 7),
                      theme: DatePickerTheme(
                          headerColor: Colors.orange,
                          backgroundColor: Colors.blue,
                          itemStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          doneStyle:
                              TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                text: 'show date picker(custom theme &date time range)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showTimePicker(context,
                      showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                text: 'show time picker',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showTime12hPicker(context,
                      showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                text: 'show 12H time picker with AM/PM',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 5, 5, 20, 50),
                      maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, locale: LocaleType.zh);
                },
                text: 'show date time picker (Chinese)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showDateTimePicker(context,
                      showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
                },
                text: 'show date time picker (English-America)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showDateTimePicker(context,
                      showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                      currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                      locale: LocaleType.nl);
                },
                text: 'show date time picker (Dutch)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showDateTimePicker(context,
                      showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                      currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                      locale: LocaleType.ru);
                },
                text: 'show date time picker (Russian)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showDateTimePicker(context,
                      showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                      currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34),
                      locale: LocaleType.de);
                },
                text: 'show date time picker in UTC (German)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  commonDatePicker.showPicker(
                    context,
                    showTitleActions: true,
                    onChanged: (date) {
                      print('change $date in time zone ' +
                          date.timeZoneOffset.inHours.toString());
                    },
                    onConfirm: (date) {
                      print('confirm $date');
                    },
                    locale: LocaleType.en,
                  );
                },
                text:
                    'show custom time picker,\nyou can custom picker model like this',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
