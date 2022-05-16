import 'package:intl/intl.dart';

import './tap.dart';
import '../../index.dart';

class DateWidget extends StatelessWidget {
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
    Key? key,
  }) : super(key: key);

  final double? width;
  final DateTime date;
  final TextStyle? monthTextStyle;
  final TextStyle? dayTextStyle;
  final TextStyle? dateTextStyle;
  final Color selectionColor;
  final DateSelectionCallback? onDateSelected;
  final String? locale;
  final CommonContainerModel? selectedContainerStyle;

  @override
  Widget build(BuildContext context) {
    final CommonContainerModel defaultContainerStyle = CommonContainerModel(
      borderRadius: 0.25,
      padding: 0.1,
    );

    return CommonContainer(
      onPress: () {
        // Check if onDateSelected is not null
        // if (onDateSelected != null) {
        //   // Call the onDateSelected Function
        //   onDateSelected!(date);
        // }
        onDateSelected?.call(date);
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
        children: <Widget>[
          Text(
            DateFormat('E', locale).format(date).toUpperCase(), // WeekDay
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
