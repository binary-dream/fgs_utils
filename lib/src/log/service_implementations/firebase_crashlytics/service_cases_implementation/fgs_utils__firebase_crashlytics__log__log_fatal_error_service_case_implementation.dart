import 'package:fgs_utils/src/log/service_implementations/firebase_crashlytics/fgs_utils__firebase_crashlytics__log_service_implementation.dart';

/// Log fatal error service case implementation.
// ignore: lines_longer_than_80_chars
class FGS_UTILS__FIREBASE_CRASHLYTICS__LOG__LogFatalErrorServiceCaseImplementation {
  /// Execute.
  Future<void> execute({
    required FGS_UTILS__FIREBASE_CRASHLYTICS__LogServiceImplementation service,
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await service.crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason,
      fatal: true,
    );
  }
}
