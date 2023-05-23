
import 'package:fgs_utils/src/log/fgs_utils__log_service.dart';
import 'package:fgs_utils/src/log/service_implementations/firebase_crashlytics/service_cases_implementations/fgs_utils__firebase_crashlytics__log__log_fatal_error_service_case_implementation.dart';
import 'package:fgs_utils/src/log/service_implementations/firebase_crashlytics/service_cases_implementations/fgs_utils__firebase_crashlytics__log__log_info_service_case_implementation.dart';
import 'package:fgs_utils/src/log/service_implementations/firebase_crashlytics/service_cases_implementations/fgs_utils__firebase_crashlytics__log__log_non_fatal_error_service_case_implementation.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// Firebase crashlytics service.
class FGS_UTILS__FIREBASE_CRASHLYTICS__LogServiceImplementation 
  implements FGS_UTILS__LogService {
  /// Constructor.
  FGS_UTILS__FIREBASE_CRASHLYTICS__LogServiceImplementation({
    required this.crashlytics,
    required this.logInfoServiceCaseImplementation,
    required this.logNonFatalErrorServiceCaseImplementation,
    required this.logFatalErrorServiceCaseImplementation,
  });
  
  /// Firebase crashlytics instance.
  final FirebaseCrashlytics crashlytics;
  /// Log info service case implementation.
  final FGS_UTILS__FIREBASE_CRASHLYTICS__LOG__LogInfoServiceCaseImplementation 
    logInfoServiceCaseImplementation;
  /// Log non fatal error service case implementation.
  // ignore: lines_longer_than_80_chars
  final FGS_UTIL__FIREBASE_CRASHLYTICS__LOG__LogNonFatalErrorServiceCaseImplementation
    logNonFatalErrorServiceCaseImplementation;
  /// Log fatal error service case implementation.
  // ignore: lines_longer_than_80_chars
  final FGS_UTILS__FIREBASE_CRASHLYTICS__LOG__LogFatalErrorServiceCaseImplementation
    logFatalErrorServiceCaseImplementation;

  @override
  Future<void> logInfo(String message) async {
    await logInfoServiceCaseImplementation.execute(
      service: this, 
      message: message,
    );
  }

  @override
  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await logNonFatalErrorServiceCaseImplementation.execute(
      service: this,
      exception: exception,
      stackTrace: stackTrace,
      reason: reason,
    );
  }

  @override
  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await logFatalErrorServiceCaseImplementation.execute(
      service: this,
      exception: exception,
      stackTrace: stackTrace,
      reason: reason,
    );
  }
}
