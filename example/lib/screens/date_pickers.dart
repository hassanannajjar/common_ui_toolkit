import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/constants.dart';
import '../utils/log.dart';

class DatePickers extends StatelessWidget {
  const DatePickers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CommonTextModel textStyle = CommonTextStyles().h3Style().copyWith(
          fontColor: COMMON_PR_COLOR,
        );
    final CommonContainerModel containerStyle = CommonContainerModel(
      margin: 0.02,
      touchEffect: TouchableEffect(
        type: TouchTypes.scaleAndFade,
      ),
    );
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
          text: 'DatePickers',
        ),
      ),
      body: CommonContainer(
        style: CommonContainerModel().copyWith(width: 1),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CommonPickerTimeLine(
                DateTime.now(),
                // dayTextStyle: TextStyle(
                //   fontSize: 15,
                // ),
                // dateTextStyle: TextStyle(
                //   fontSize: 20,
                // ),

                headerTextStyle: CommonTextStyles().h3Style().copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                containerStyle:
                    CommonContainerStyle().datePickerTimeLineStyle().copyWith(
                          marginVertical: 0.015,
                          height: 0.19,
                          width: 0.9,
                        ),
                initialSelectedDate: DateTime.now(),
                inactiveDates: <DateTime>[
                  DateTime.now().add(const Duration(days: 3)),
                  DateTime.now().add(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 7))
                ],
                onDateChange: (DateTime date) {
                  consoleLog(date);
                },
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  CommonDatePicker.showDatePicker(
                    context,
                    minTime: DateTime(2018, 3, 5),
                    maxTime: DateTime(2019, 6, 7),
                    theme: const DatePickerTheme(
                      headerColor: Colors.orange,
                      backgroundColor: Colors.blue,
                      itemStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      doneStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onChanged: (DateTime date) {
                      consoleLog(
                          'change $date in time zone ${date.timeZoneOffset.inHours}');
                    },
                    onConfirm: (DateTime date) {
                      consoleLog('confirm $date');
                    },
                    currentTime: DateTime.now(),
                  );
                },
                text: 'show date picker(custom theme &date time range)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  CommonDatePicker.showTimePicker(context,
                      onChanged: (DateTime date) {
                    consoleLog(
                        'change $date in time zone ${date.timeZoneOffset.inHours}');
                  }, onConfirm: (DateTime date) {
                    consoleLog('confirm $date');
                  }, currentTime: DateTime.now());
                },
                text: 'show time picker',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  CommonDatePicker.showTime12hPicker(context,
                      onChanged: (DateTime date) {
                    consoleLog(
                        'change $date in time zone ${date.timeZoneOffset.inHours}');
                  }, onConfirm: (DateTime date) {
                    consoleLog('confirm $date');
                  }, currentTime: DateTime.now());
                },
                text: 'show 12H time picker with AM/PM',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  CommonDatePicker.showDateTimePicker(context,
                      minTime: DateTime(2020, 5, 5, 20, 50),
                      maxTime: DateTime(2020, 6, 7, 05, 09),
                      onChanged: (DateTime date) {
                    consoleLog(
                        'change $date in time zone ${date.timeZoneOffset.inHours}');
                  }, onConfirm: (DateTime date) {
                    consoleLog('confirm $date');
                  }, locale: LocaleType.zh);
                },
                text: 'show date time picker (Chinese)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  CommonDatePicker.showDateTimePicker(context,
                      onChanged: (DateTime date) {
                    consoleLog(
                        'change $date in time zone ${date.timeZoneOffset.inHours}');
                  }, onConfirm: (DateTime date) {
                    consoleLog('confirm $date');
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
                },
                text: 'show date time picker (English-America)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  CommonDatePicker.showDateTimePicker(context,
                      onChanged: (DateTime date) {
                    consoleLog(
                        'change $date in time zone ${date.timeZoneOffset.inHours}');
                  }, onConfirm: (DateTime date) {
                    consoleLog('confirm $date');
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
                  CommonDatePicker.showDateTimePicker(context,
                      onChanged: (DateTime date) {
                    consoleLog(
                        'change $date in time zone ${date.timeZoneOffset.inHours}');
                  }, onConfirm: (DateTime date) {
                    consoleLog('confirm $date');
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
                  CommonDatePicker.showDateTimePicker(context,
                      onChanged: (DateTime date) {
                    consoleLog(
                        'change $date in time zone ${date.timeZoneOffset.inHours}');
                  }, onConfirm: (DateTime date) {
                    consoleLog('confirm $date');
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
                  CommonDatePicker.showDateTimePicker(
                    context,
                    onChanged: (DateTime date) {
                      consoleLog(
                          'change $date in time zone ${date.timeZoneOffset.inHours}');
                    },
                    onConfirm: (DateTime date) {
                      consoleLog('confirm $date');
                    },
                    currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34),
                    locale: LocaleType.ar,
                  );
                },
                text: 'show date time picker in UTC (AR)',
              ),
              CommonText(
                style: textStyle,
                containerStyle: containerStyle,
                onPress: () {
                  CommonDatePicker.showPicker(
                    context,
                    onChanged: (DateTime date) {
                      consoleLog(
                          'change $date in time zone ${date.timeZoneOffset.inHours}');
                    },
                    onConfirm: (DateTime date) {
                      consoleLog('confirm $date');
                    },
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
