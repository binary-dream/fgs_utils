
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'fgs_utils__log_service_cases.dart';

class FGS_UTILS__FirebaseCrashlyticsService implements FGS_UTILS__LogServiceCases {
  final FirebaseCrashlytics crashlytics;

  FGS_UTILS__FirebaseCrashlyticsService({
    required this.crashlytics
  });
  
  @override
  Future<void> logInfo(String message) async {
    await crashlytics.log(message);
  }

  @override
  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason
  }) async {
    await crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason
    );
  }

  @override
  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason
  }) async {
    await crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason,
      fatal: true
    );
  }
}
