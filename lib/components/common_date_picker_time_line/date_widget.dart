import 'package:intl/intl.dart';

import '../../index.dart';
import './tap.dart';

class DateWidget extends StatelessWidget {
  final double? width;
  final DateTime date;
  final TextStyle? monthTextStyle, dayTextStyle, dateTextStyle;
  final Color selectionColor;
  final DateSelectionCallback? onDateSelected;
  final String? locale;
  final CommonContainerModel? selectedContainerStyle;

  const DateWidget({
    required this.date,
    required this.monthTextStyle,
    required this.dayTextStyle,
    required this.dateTextStyle,
    required this.selectionColor,
    this.width,
    this.onDateSelected,
    this.locale,
    this.selectedContainerStyle,
  });

  @override
  Widget build(BuildContext context) {
    CommonContainerModel defaultContainerStyle = CommonContainerModel(
      borderRadius: 0.25,
      padding: 0.1,
    );

    return CommonContainer(
      onPress: () {
        // Check if onDateSelected is not null
        if (onDateSelected != null) {
          // Call the onDateSelected Function
          onDateSelected!(this.date);
        }
      },
      style: CommonContainerModel(
        width: width,
        padding: 0.008,
        paddingBottom: 0.013,
        margin: 0.003,
        touchEffect: TouchableEffect(
          type: TouchTypes.opacity,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            new DateFormat("E", locale).format(date).toUpperCase(), // WeekDay
            style: dayTextStyle,
          ),
          CommonContainer(
            style: selectedContainerStyle ?? defaultContainerStyle,
            child: Text(
              date.day.toString(), // Date
              style: dateTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
