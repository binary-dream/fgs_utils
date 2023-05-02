
import 'package:fgs_utils/src/log/fgs_utils__log_service_cases.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// Firebase crashlytics service.
class FGS_UTILS__FirebaseCrashlyticsService 
  implements FGS_UTILS__LogServiceCases {
  /// Constructor.
  FGS_UTILS__FirebaseCrashlyticsService({
    required FirebaseCrashlytics crashlytics,
  }) : _crashlytics = crashlytics;
  
  final FirebaseCrashlytics _crashlytics;

  @override
  Future<void> logInfo(String message) async {
    await _crashlytics.log(message);
  }

  @override
  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await _crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason,
    );
  }

  @override
  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await _crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason,
      fatal: true,
    );
  }
}
