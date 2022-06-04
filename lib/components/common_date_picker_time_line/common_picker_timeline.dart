import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:visibility_detector/visibility_detector.dart';

import './extra/color.dart';
import './extra/style.dart';
import './tap.dart';
import '../../common_ui_toolkit.dart';
import 'date_widget.dart';

class CommonPickerTimeLine extends StatefulWidget {
  const CommonPickerTimeLine(
    this.startDate, {
    this.width = 0.2,
    this.height = 0.11,
    this.controller,
    this.monthTextStyle = defaultMonthTextStyle,
    this.dayTextStyle = defaultDayTextStyle,
    this.dateTextStyle = defaultDateTextStyle,
    this.selectedTextColor = Colors.white,
    this.selectionColor = AppColors.defaultSelectionColor,
    this.deactivatedColor = AppColors.defaultDeactivatedColor,
    this.initialSelectedDate,
    this.activeDates,
    this.inactiveDates,
    this.daysCount = 500,
    this.onDateChange,
    this.locale = 'en_US',
    this.headerTextStyle,
    this.containerStyle,
    Key? key,
  })  : assert(
          activeDates == null || inactiveDates == null,
          "Can't "
          'provide both activated and deactivated dates List at the same time.',
        ),
        super(
          key: key,
        );

  /// Start Date in case user wants to show past dates
  /// If not provided calendar will start from the initialSelectedDate
  final DateTime startDate;

  /// Width of the selector
  final double width;

  /// Height of the selector
  final double height;

  /// CommonPickerTimeLine Controller
  final DatePickerController? controller;

  /// Text color for the selected Date
  final Color selectedTextColor;

  /// Background color for the selector
  final Color selectionColor;

  /// Text Color for the deactivated dates
  final Color deactivatedColor;

  /// TextStyle for Month Value
  final TextStyle monthTextStyle;

  /// TextStyle for day Value
  final TextStyle dayTextStyle;

  /// TextStyle for the date Value
  final TextStyle dateTextStyle;

  /// Current Selected Date
  final DateTime? /*?*/ initialSelectedDate;

  /// Contains the list of inactive dates.
  /// All the dates defined in this List will be deactivated
  final List<DateTime>? inactiveDates;

  /// Contains the list of active dates.
  /// Only the dates in this list will be activated.
  final List<DateTime>? activeDates;

  /// Callback function for when a different date is selected
  final DateChangeListener? onDateChange;

  /// Max limit up to which the dates are shown.
  /// Days are counted from the startDate
  final int daysCount;

  /// Locale for the calendar default: en_us
  final String locale;

  /// Header Text style.
  final CommonTextModel? headerTextStyle;

  /// Header Text style.
  final CommonContainerModel? containerStyle;

  @override
  State<StatefulWidget> createState() => _DatePickerState();
}

class _DatePickerState extends State<CommonPickerTimeLine> {
  DateTime? _currentDate;
  List<dynamic> allDates = <dynamic>[];
  int currentIndex = 0;
  String currentMonth = '';
  String currentYear = '';

  final ScrollController _controller = ScrollController();

  late final TextStyle selectedDateStyle;
  late final TextStyle selectedMonthStyle;
  late final TextStyle selectedDayStyle;

  late final TextStyle deactivatedDateStyle;
  late final TextStyle deactivatedMonthStyle;
  late final TextStyle deactivatedDayStyle;

  CommonTextModel? defaultTextStyle = CommonTextStyles().h3Style().copyWith(
        fontWeight: FontWeight.w500,
      );

  CommonContainerModel defaultContainerStyle =
      CommonContainerStyle().datePickerTimeLineStyle();

  @override
  void initState() {
    // Init the calendar locale
    initializeDateFormatting(widget.locale);
    // Set initial Values
    _currentDate = widget.initialSelectedDate;

    if (widget.controller != null) {
      widget.controller!.setDatePickerState(this);
    }

    selectedDateStyle =
        widget.dateTextStyle.copyWith(color: widget.selectedTextColor);
    selectedMonthStyle =
        widget.monthTextStyle.copyWith(color: widget.selectedTextColor);
    selectedDayStyle =
        widget.dayTextStyle.copyWith(color: widget.selectedTextColor);

    deactivatedDateStyle =
        widget.dateTextStyle.copyWith(color: widget.deactivatedColor);
    deactivatedMonthStyle =
        widget.monthTextStyle.copyWith(color: widget.deactivatedColor);
    deactivatedDayStyle =
        widget.dayTextStyle.copyWith(color: widget.deactivatedColor);

    // save all dates to check current month and year.
    for (int i = 0; i < widget.daysCount; i++) {
      DateTime date;
      final DateTime currentStartDate = widget.startDate.add(Duration(days: i));
      date = DateTime(
          currentStartDate.year, currentStartDate.month, currentStartDate.day);
      // print(date);
      allDates.add(<String, dynamic>{
        'Month': DateFormat('MMMM', widget.locale).format(date),
        'Day': date.day.toString(),
        'Year': date.year.toString(),
      });
    }
    setState(() {
      currentMonth = allDates[0]['Month'];
      currentYear = allDates[0]['Year'];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: widget.containerStyle ?? defaultContainerStyle,
      child: Column(
        children: <Widget>[
          // --------------------------
          // Header Component
          CommonContainer(
            style: const CommonContainerModel(
              alignment: Alignment.center,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.date_range_outlined,
                ),
                CommonText(
                  text: '$currentMonth, ',
                  style: widget.headerTextStyle ?? defaultTextStyle,
                ),
                CommonText(
                  text: currentYear,
                  style: widget.headerTextStyle ?? defaultTextStyle,
                ),
              ],
            ),
          ),

          // --------------------------
          // Center line
          const CommonContainer(
            style: CommonContainerModel(
              borderBottomWidth: 0.2,
              borderBottomColor: 0xA9707070,
              marginVertical: 0.01,
            ),
          ),

          // --------------------------
          // Dates Widget
          CommonContainer(
            style: CommonContainerModel(
              height: widget.height,
            ),
            child: ListView.builder(
              itemCount: widget.daysCount,
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                // get the date object based on the index position
                // if widget.startDate is null then use the initialDateValue
                DateTime date;
                final DateTime itemStartDate =
                    widget.startDate.add(Duration(days: index));
                date = DateTime(
                    itemStartDate.year, itemStartDate.month, itemStartDate.day);
                bool isDeactivated = false;

                // check if this date needs to be deactivated for only DeactivatedDates
                if (widget.inactiveDates != null) {
                  //            print("Inside Inactive dates.");
                  for (DateTime inactiveDate in widget.inactiveDates!) {
                    if (_compareDate(date, inactiveDate)) {
                      isDeactivated = true;
                      break;
                    }
                  }
                }

                // check if this date needs to be deactivated for only ActivatedDates
                if (widget.activeDates != null) {
                  isDeactivated = true;
                  for (DateTime activateDate in widget.activeDates!) {
                    // Compare the date if it is in the
                    if (_compareDate(date, activateDate)) {
                      isDeactivated = false;
                      break;
                    }
                  }
                }

                // Check if this date is the one that is currently selected
                final bool isSelected = _compareDate(date, _currentDate!);

                // Return the Date Widget
                return VisibilityDetector(
                  key: Key('$index'),
                  onVisibilityChanged: (VisibilityInfo visibilityInfo) {
                    if (mounted) {
                      if (index >= 0) {
                        if (allDates[index]['Month'] != currentMonth) {
                          setState(() {
                            currentMonth = allDates[index]['Month'];
                          });
                        }
                        if (allDates[index]['Year'] != currentYear) {
                          setState(() {
                            currentYear = allDates[index]['Year'];
                          });
                        }
                      }
                    }
                  },
                  child: DateWidget(
                    date: date,
                    monthTextStyle: isDeactivated
                        ? deactivatedMonthStyle
                        : isSelected
                            ? selectedMonthStyle
                            : widget.monthTextStyle,
                    dateTextStyle: isDeactivated
                        ? deactivatedDateStyle
                        : isSelected
                            ? selectedDateStyle
                            : widget.dateTextStyle,
                    dayTextStyle: isDeactivated
                        ? deactivatedDayStyle
                        : widget.dayTextStyle,
                    selectedContainerStyle: isSelected
                        ? const CommonContainerModel(
                            backgroundColor: 0xff096637,
                            borderRadius: 0.25,
                            padding: 0.01,
                            width: 0.1,
                            alignment: Alignment.center,
                          )
                        : const CommonContainerModel(
                            borderRadius: 0.25,
                            padding: 0.01,
                            width: 0.1,
                            alignment: Alignment.center,
                          ),
                    width: widget.width,
                    locale: widget.locale,
                    selectionColor:
                        isSelected ? widget.selectionColor : Colors.transparent,
                    onDateSelected: (DateTime selectedDate) {
                      // Don't notify listener if date is deactivated
                      if (isDeactivated) {
                        return;
                      }

                      // A date is selected
                      widget.onDateChange?.call(selectedDate);

                      setState(() {
                        _currentDate = selectedDate;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Helper function to compare two dates
  /// Returns True if both dates are the same
  bool _compareDate(DateTime date1, DateTime? date2) {
    if (date2 == null) {
      return false;
    }
    return date1.day == date2.day &&
        date1.month == date2.month &&
        date1.year == date2.year;
  }
}

class DatePickerController {
  _DatePickerState? _datePickerState;

  // ignore: library_private_types_in_public_api
  void setDatePickerState(_DatePickerState state) {
    _datePickerState = state;
  }

  void jumpToSelection() {
    assert(_datePickerState != null,
        'DatePickerController is not attached to any CommonPickerTimeLine View.');

    // jump to the current Date
    _datePickerState!._controller
        .jumpTo(_calculateDateOffset(_datePickerState!._currentDate!));
  }

  /// This function will animate the Timeline to the currently selected Date
  void animateToSelection(
      {Duration duration = const Duration(milliseconds: 500),
      Curve curve = Curves.linear}) {
    assert(_datePickerState != null,
        'DatePickerController is not attached to any CommonPickerTimeLine View.');

    // animate to the current date
    _datePickerState!._controller.animateTo(
        _calculateDateOffset(_datePickerState!._currentDate!),
        duration: duration,
        curve: curve);
  }

  /// This function will animate to any date that is passed as an argument
  /// In case a date is out of range nothing will happen
  void animateToDate(DateTime date,
      {Duration duration = const Duration(milliseconds: 500),
      Curve curve = Curves.linear}) {
    assert(_datePickerState != null,
        'DatePickerController is not attached to any CommonPickerTimeLine View.');

    _datePickerState!._controller.animateTo(_calculateDateOffset(date),
        duration: duration, curve: curve);
  }

  /// This function will animate to any date that is passed as an argument
  /// this will also set that date as the current selected date
  void setDateAndAnimate(DateTime date,
      {Duration duration = const Duration(milliseconds: 500),
      Curve curve = Curves.linear}) {
    assert(_datePickerState != null,
        'DatePickerController is not attached to any CommonPickerTimeLine View.');

    _datePickerState!._controller.animateTo(_calculateDateOffset(date),
        duration: duration, curve: curve);

    if (date.compareTo(_datePickerState!.widget.startDate) >= 0 &&
        date.compareTo(_datePickerState!.widget.startDate
                .add(Duration(days: _datePickerState!.widget.daysCount))) <=
            0) {
      // date is in the range
      _datePickerState!._currentDate = date;
    }
  }

  /// Calculate the number of pixels that needs to be scrolled to go to the
  /// date provided in the argument
  double _calculateDateOffset(DateTime date) {
    final DateTime startDate = DateTime(
        _datePickerState!.widget.startDate.year,
        _datePickerState!.widget.startDate.month,
        _datePickerState!.widget.startDate.day);

    final int offset = date.difference(startDate).inDays;
    return (offset * _datePickerState!.widget.width) + (offset * 6);
  }
}
