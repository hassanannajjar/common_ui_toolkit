import 'dart:convert';
import 'dart:developer' as developer;

const bool _developmentMode = true;

/// print request error in debug console
void printRequestError({
  dynamic error,
  int time = 0,
}) {
  if (_developmentMode) {
    developer.log('🛑 \x1B[31m ******** Request Error ********* 🛑');
    developer.log('\x1B[35m Time : \x1B[37m $time  \x1B[33m milliseconds');
    developer.log('\x1B[35m Response :\x1B[37m $error');
    developer.log(' \x1B[31m ************* END ************** ');
  }
}

/// print request details
void showRequestDetails({
  String? method = '',
  String? path = '',
  String? queryParameters = '',
  dynamic body,
  Map<String?, String?> headers = const <String?, String?>{},
  dynamic response,
  int time = 0,
  bool isError = false,
  bool otherCatch = false,
  bool formatResponse = false,
  String? className = '',
}) {
  final String borderColor = isError
      ? '\x1B[31m'
      : otherCatch
          ? '\x1B[33m'
          : '\x1B[32m';

  final String requestStatus = isError
      ? '🛑$borderColor ******** Request Error **********🛑'
      : otherCatch
          ? '📓$borderColor ******** Request Catch Error **********📓'
          : '📗$borderColor ******** Success Request **********📗';

  if (_developmentMode) {
    developer.log(requestStatus);

    developer.log('\x1B[35m Class Name: \x1B[37m $className');
    developer.log('\x1B[35m Full URL: \x1B[37m $path');
    developer.log('\x1B[35m Method: \x1B[37m $method');
    developer.log('\x1B[35m Path: \x1B[37m $path');
    developer.log('\x1B[35m Headers: \x1B[37m $headers');
    developer.log('\x1B[35m Body: \x1B[37m $body');
    developer.log('\x1B[35m QueryParameters: \x1B[37m $queryParameters');
    developer.log('\x1B[35m Time : \x1B[37m $time  \x1B[33m milliseconds');
    developer.log(
      '\x1B[35m Response :\x1B[37m ${formatResponse ? const JsonEncoder.withIndent('  ').convert(response) : response}',
    );

    developer.log('$borderColor  *************** END **************');
  }
}

void consoleLog(dynamic value, {String key = 'value'}) {
  if (_developmentMode) {
    developer.log('📔:\x1B[32m ******** Log $key **********:📔');
    developer.log('\x1B[35m $key :\x1B[37m $value');
    developer.log('📓:\x1B[32m  *************** END **************:📓');
  }
}

void consoleLogPretty(dynamic value, {String key = 'value'}) {
  if (_developmentMode) {
    developer.log('📔:\x1B[32m ******** Log $key **********:📔');
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    final String prettyprint = encoder.convert(value);
    developer.log('\x1B[35m $key :\x1B[37m $prettyprint');
    developer.log('📓:\x1B[32m  *************** END **************:📓');
  }
}


//  *** Emoji Type ***
// 📕: error message
// 📙: warning message
// 📗: ok status message
// 📘: action message
// 📓: canceled status message
// 📔: Or anything you like and want to recognize immediately by color

//  *** Color full print text ***
// Black:   \x1B[30m
// Red:     \x1B[31m
// Green:   \x1B[32m
// Yellow:  \x1B[33m
// Blue:    \x1B[34m
// Magenta: \x1B[35m
// Cyan:    \x1B[36m
// White:   \x1B[37m
// Reset:   \x1B[0m
